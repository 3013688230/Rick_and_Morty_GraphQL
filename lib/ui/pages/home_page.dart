import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';

import '../../bloc/character_bloc/character_bloc.dart';
import '../../data/repositories/character_repo.dart';
import '../../theme/app_router.dart';
import '../../theme/app_theme.dart';
import 'search_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key, required this.title});

  final String title;

  late final HttpLink httpLink;
  late final GraphQLClient client;

  late final repository;

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    httpLink = HttpLink(
      'https://rickandmortyapi.com/graphql',
    );

    client = GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(),
    );

    repository = CharacterRepo(client);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.colors.white,
        centerTitle: true,
        title: Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: BlocProvider(
        create: (context) => CharacterBloc(characterRepo: repository),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.blueGrey,
          ),
          child: const SearchPage(),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pushNamed('/');
            },
            icon: Icon(
              Icons.home,
              color: AppTheme.colors.black,
            ),
            label: const Text(''),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppTheme.colors.white),
            ),
          ),
          const SizedBox(width: 50.0),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pushNamed('/episodes');
            },
            icon: Icon(
              Icons.tv,
              color: AppTheme.colors.black,
            ),
            label: const Text(''),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                AppTheme.colors.white,
              ),
            ),
          ),
          const SizedBox(width: 50.0),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pushNamed('/locations');
            },
            icon: Icon(
              Icons.place,
              color: AppTheme.colors.black,
            ),
            label: const Text(''),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppTheme.colors.white),
            ),
          ),
          const SizedBox(width: 55.0),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pushNamed('/favorites');
            },
            icon: Icon(
              Icons.favorite,
              color: AppTheme.colors.black,
            ),
            label: const Text(''),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppTheme.colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
