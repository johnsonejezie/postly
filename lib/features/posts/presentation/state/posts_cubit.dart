import 'package:Postly/features/posts/domain/usecases/fetch_posts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:Postly/features/posts/domain/models/post_model.dart';

part 'posts_cubit.freezed.dart';
part 'posts_cubit.g.dart';
part 'posts_state.dart';

class PostsCubit extends HydratedCubit<PostsState> {
  final FetchPosts _fetchPosts;

  static const _initialPostsState = PostsState.initial(
    payload: PostsStatePayload(
      posts: [],
      error: '',
    ),
  );

  PostsCubit(this._fetchPosts) : super(_initialPostsState);

  Future<void> fetchPosts() async {
    emit(PostsState.loading(payload: state.payload.copyWith()));
    final res = await _fetchPosts();

    res.fold(
      (l) => emit(PostsState.error(payload: state.payload.copyWith(error: l.message))),
      (r) => emit(PostsState.loaded(payload: state.payload.copyWith(posts: r))),
    );
  }

  @override
  PostsState fromJson(Map json) {
    try {
      return PostsState.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(json));
    } catch (_) {
      return _initialPostsState;
    }
  }

  @override
  Map<String, dynamic> toJson(PostsState state) => state.toJson();
}
