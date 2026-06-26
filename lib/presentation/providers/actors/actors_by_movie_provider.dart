import 'package:flutter_riverpod/legacy.dart';
import 'package:uya_movies_app/domain/domain.dart';
import 'package:uya_movies_app/presentation/providers/providers.dart';

// State
final actorsByMovieProvider = StateNotifierProvider((ref) {
  final actorsrepository = ref.watch(actorsRepositoryProvider);

  return ActorsByMovieNotifier(getActors: actorsrepository.getActorsByMovie);
});

// Notifier
typedef GetActorCallBack = Future<List<Actor>> Function(String moviedb);

class ActorsByMovieNotifier extends StateNotifier<Map<String, List<Actor>>> {
  final GetActorCallBack getActors;

  ActorsByMovieNotifier({required this.getActors}) : super({});

  Future<void> loadActors(String movieId) async {
    if (state[movieId] != null) return;

    final List<Actor> actors = await getActors(movieId);

    state = {...state, movieId: actors};
  }
}
