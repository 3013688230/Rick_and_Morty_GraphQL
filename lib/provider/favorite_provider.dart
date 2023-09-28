import 'package:flutter/material.dart';

import '../data/models/characters_model/character.dart';

class FavoriteProvider extends ChangeNotifier {
  List<Results> _data = [];
  List<Results> get data => _data;

  void toggleFavorite(Results result) {
    final isExist = _data.contains(result);
    if (isExist) {
      _data.remove(result);
    } else {
      _data.add(result);
    }
    notifyListeners();
  }

  bool isExist(Results result) {
    final isExist = _data.contains(result);
    return isExist;
  }

  void clearFavorite() {
    _data = [];
    notifyListeners();
  }
}
