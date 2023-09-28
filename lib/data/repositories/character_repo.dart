import 'package:graphql/client.dart';

import '../models/characters_model/character.dart';

class CharacterRepo {
  final GraphQLClient _client;

  CharacterRepo(this._client);

  Future<Character> getCharacter(int page, String name) async {
    const String query = r'''
      query GetCharacter($page: Int, $name: String) {
        characters(page: $page, filter: { name: $name }) {
          results {
            id
            name
            status
            species
            type
            gender
            image
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

    final List<dynamic>? characterResults =
        result.data?['characters']['results'];

    if (characterResults != null && characterResults.isNotEmpty) {
      final Map<String, dynamic>? characterData = characterResults[0];
      if (characterData != null) {
        final Character character = Character.fromJson(characterData);
        return character;
      }
    }

    throw Exception("No se encontraron datos de personaje.");
  }
}
