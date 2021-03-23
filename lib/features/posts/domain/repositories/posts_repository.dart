import 'package:Postly/features/posts/domain/models/post_model.dart';

abstract class PostsRepository {
  Future<List<PostModel>> fetchPosts();
  Future<void> createPost(PostModel post);
}
