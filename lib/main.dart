import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import 'provider/favorite_provider.dart';
import 'theme/app_router.dart';
import 'theme/app_theme.dart';
import 'ui/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoriteProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rick and Morty',
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: AppTheme.colors.mainBlue,
          fontFamily: 'avenir',
          textTheme: const TextTheme(
            headline1: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            headline2: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            headline3: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
            ),
            bodyText2: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            bodyText1: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w200,
              color: Colors.white,
            ),
            caption: TextStyle(
              fontSize: 11.0,
              fontWeight: FontWeight.w100,
              color: Colors.grey,
            ),
          ),
        ),
        home: HomePage(title: 'Rick and Morty'),
        onGenerateRoute: _appRouter.onGenerateRoute,
      ),
    );
  }
}
