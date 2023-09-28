import 'package:graphql/client.dart';

import '../models/locations_model/locations.dart';

class LocationRepo {
  final GraphQLClient _client;

  LocationRepo(this._client);

  Future<Location> getLocation(int page, String name) async {
    const String query = r'''
      query GetLocation($page: Int, $name: String) {
        locations(page: $page, filter: { name: $name }) {
          results {
            id
            name
            type
            dimension
            residents {
              id
              name
            }
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

    final List<dynamic>? locationResults = result.data?['locations']['results'];

    if (locationResults != null && locationResults.isNotEmpty) {
      final Map<String, dynamic>? locationData = locationResults[0];
      if (locationData != null) {
        final Location location = Location.fromJson(locationData);
        return location;
      }
    }

    throw Exception("No se encontraron datos de ubicación.");
  }
}
