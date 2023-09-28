import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rick_and_morty_api/bloc/episode_bloc/episode_bloc.dart';

import '../../data/models/episodes_model/episode.dart';
import '../widgets/custom_episodes_list_tile.dart';

class SearchEpisodesPage extends StatefulWidget {
  const SearchEpisodesPage({super.key});

  @override
  State<SearchEpisodesPage> createState() => _SearchEpisodesPageState();
}

class _SearchEpisodesPageState extends State<SearchEpisodesPage> {
  late Episode _currentEpisode;
  List<Results> _currentResults = [];
  int _currentPage = 1;
  String _currentSearchStr = '';

  final RefreshController refreshController = RefreshController();
  bool _isPagination = false;

  Timer? searchDebounce;

  @override
  void initState() {
    if (_currentResults.isEmpty) {
      context
          .read<EpisodeBloc>()
          .add(const EpisodeEvent.fetch(name: '', page: 1));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<EpisodeBloc>().state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 15.0,
            bottom: 1.0,
            left: 16.0,
            right: 16.0,
          ),
          child: TextField(
            style: const TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromRGBO(86, 86, 86, 0.8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: 'Search name',
              hintStyle: const TextStyle(color: Colors.white),
            ),
            onChanged: (value) {
              _currentPage = 1;
              _currentResults = [];
              _currentSearchStr = value;
              searchDebounce?.cancel();
              searchDebounce = Timer(const Duration(milliseconds: 500), () {
                context.read<EpisodeBloc>().add(EpisodeEvent.fetch(
                      name: value,
                      page: 1,
                    ));
              });
            },
          ),
        ),
        Expanded(
          child: state.when(
            loading: () {
              if (!_isPagination) {
                return Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircularProgressIndicator(strokeWidth: 2.0),
                      SizedBox(width: 10.0),
                      Text('Loading...'),
                    ],
                  ),
                );
              } else {
                return _customListView(_currentResults);
              }
            },
            loaded: (episodeLoaded) {
              _currentEpisode = episodeLoaded;
              if (_isPagination) {
                List.from(_currentResults).addAll(_currentEpisode.results);
                refreshController.loadComplete();
                _isPagination = false;
              } else {
                _currentResults = _currentEpisode.results;
              }
              return _currentResults.isNotEmpty
                  ? _customListView(_currentResults)
                  : const SizedBox();
            },
            error: () => const Text('Nothing found...'),
          ),
        ),
      ],
    );
  }

  Widget _customListView(List<Results> currentResults) {
    return SmartRefresher(
      controller: refreshController,
      enablePullUp: true,
      enablePullDown: false,
      onLoading: () {
        _isPagination = true;
        _currentPage++;
        if (_currentPage <= _currentEpisode.info.pages) {
          context.read<EpisodeBloc>().add(
              EpisodeEvent.fetch(name: _currentSearchStr, page: _currentPage));
        } else {
          refreshController.loadNoData();
        }
      },
      child: ListView.separated(
        itemCount: currentResults.length,
        separatorBuilder: (_, index) => const SizedBox(height: 5.0),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final result = currentResults[index];
          return Padding(
            padding: const EdgeInsets.only(
              right: 16.0,
              left: 16.0,
              top: 3.0,
              bottom: 3.0,
            ),
            child: CustomEpisodesListTile(result: result),
          );
        },
      ),
    );
  }
}
