import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/models/characters_model/character.dart';
import '../../provider/favorite_provider.dart';
import 'character_status.dart';

class CustomListTile extends StatelessWidget {
  final Results result;
  const CustomListTile({
    super.key,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 7.0,
        color: const Color.fromRGBO(86, 86, 86, 0.8),
        child: Row(
          // Image Row
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: result.image,
              placeholder: (context, url) => const CircularProgressIndicator(
                color: Colors.amber,
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            const SizedBox(width: 0.0),
            IconButton(
              onPressed: () {
                provider.toggleFavorite(result);
              },
              icon: provider.isExist(result)
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0, bottom: 5.0),
              child: Column(
                // Name Column
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.9,
                    child: Text(
                      result.name,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  CharacterStatus(
                    liveState: result.status == 'Alive'
                        ? LiveState.alive
                        : result.status == 'Dead'
                            ? LiveState.alive
                            : result.status == 'Dead'
                                ? LiveState.dead
                                : LiveState.unknown,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.0,
                    child: Row(
                      // Row Species
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          // Species
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Species:',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'avenir',
                                fontSize: 14.0,
                              ),
                            ),
                            const SizedBox(
                              height: 2.0,
                            ),
                            Text(
                              result.species,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'avenir',
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          // Gender Column
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Gender:',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'avenir',
                                fontSize: 10.0,
                              ),
                            ),
                            const SizedBox(
                              height: 2.0,
                            ),
                            Text(
                              result.gender,
                              style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'avenir',
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
