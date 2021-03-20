import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:Postly/features/posts/domain/models/post_model.dart';

part 'posts_cubit.freezed.dart';
part 'posts_cubit.g.dart';
part 'posts_state.dart';

class PostsCubit extends HydratedCubit<PostsState> {
  static const _initialPostsState = PostsState.initial(
    payload: PostsStatePayload(
      posts: [],
    ),
  );

  PostsCubit() : super(_initialPostsState);

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
