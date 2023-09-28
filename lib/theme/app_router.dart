import 'package:flutter/material.dart';

import '../ui/pages/episode_page.dart';
import '../ui/pages/favorite_page.dart';
import '../ui/pages/home_page.dart';
import '../ui/pages/location_page.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    final Object? key = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => HomePage(
            title: "Home Page",
          ),
        );
      case '/episodes':
        return MaterialPageRoute(
          builder: (_) => EpisodePage(
            title: "Episodes Page",
          ),
        );
      case '/locations':
        return MaterialPageRoute(
          builder: (_) => LocationPage(
            title: "Locations Page",
          ),
        );
      case '/favorites':
        return MaterialPageRoute(
          builder: (_) => FavoritePage(
            title: "Favorites Page",
          ),
        );
      default:
        return null;
    }
  }
}
