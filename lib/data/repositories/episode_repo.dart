import 'package:graphql/client.dart';

import '../models/episodes_model/episode.dart';

class EpisodeRepo {
  final GraphQLClient _client;

  EpisodeRepo(this._client);

  Future<Episode> getEpisode(int page, String name) async {
    const String query = r'''
      query GetEpisode($page: Int, $name: String) {
        episodes(page: $page, filter: { name: $name }) {
          results {
            id
            name
            air_date
            episode
          }
        }
      }
    ''';

    final QueryOptions options = QueryOptions(
      document: gql(query),
      variables: {
        'page': page,
        'name': name,
      },
    );

    final QueryResult result = await _client.query(options);

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    final List<dynamic>? episodeResults = result.data?['episodes']['results'];

    if (episodeResults != null && episodeResults.isNotEmpty) {
      final Map<String, dynamic>? episodeData = episodeResults[0];
      if (episodeData != null) {
        final Episode episode = Episode.fromJson(episodeData);
        return episode;
      }
    }

    throw Exception("No se encontraron datos de episodio.");
  }
}
