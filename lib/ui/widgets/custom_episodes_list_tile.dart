import 'package:flutter/material.dart';
import 'package:rick_and_morty_api/theme/app_theme.dart';

import '../../data/models/episodes_model/episode.dart';

class CustomEpisodesListTile extends StatelessWidget {
  final Results result;
  const CustomEpisodesListTile({
    super.key,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 7.0,
        color: const Color.fromRGBO(86, 86, 86, 0.8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 5.0),
              child: Column(
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Air date:',
                          style: TextStyle(
                            color: AppTheme.colors.white,
                            fontFamily: 'avenir',
                            fontSize: 14.0,
                          ),
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          result.air_date,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppTheme.colors.white,
                            fontFamily: 'avenir',
                            fontSize: 10.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Episode:',
                  style: TextStyle(
                    color: AppTheme.colors.white,
                    fontFamily: 'avenir',
                    fontSize: 10.0,
                  ),
                ),
                const SizedBox(
                  height: 2.0,
                ),
                Text(
                  result.episode,
                  style: TextStyle(
                    color: AppTheme.colors.white,
                    fontFamily: 'avenir',
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
