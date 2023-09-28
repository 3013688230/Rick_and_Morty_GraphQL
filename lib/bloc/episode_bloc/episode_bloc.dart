import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../data/models/episodes_model/episode.dart';
import '../../data/repositories/episode_repo.dart';

part 'episode_bloc.freezed.dart';
part 'episode_bloc.g.dart';
part 'episode_event.dart';
part 'episode_state.dart';

class EpisodeBloc extends Bloc<EpisodeEvent, EpisodeState> with HydratedMixin {
  final EpisodeRepo episodeRepo;
  EpisodeBloc({
    required this.episodeRepo,
  }) : super(const EpisodeState.loading()) {
    on<EpisodeEventFetch>((event, emit) async {
      emit(const EpisodeState.loading());
      try {
        Episode _episodeLoaded = await episodeRepo
            .getEpisode(event.page, event.name)
            .timeout(const Duration(seconds: 5));
        emit(EpisodeState.loaded(episodeLoaded: _episodeLoaded));
      } catch (_) {
        emit(const EpisodeState.error());
        rethrow;
      }
    });
  }

  @override
  EpisodeState? fromJson(Map<String, dynamic> json) =>
      EpisodeState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(EpisodeState state) => state.toJson();
}
