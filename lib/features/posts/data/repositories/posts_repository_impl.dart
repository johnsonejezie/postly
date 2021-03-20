import 'package:Postly/core/utilities/data/guarded_datasource_calls.dart';
import 'package:Postly/features/posts/data/datasources/posts_remote_datasource.dart';
import 'package:Postly/features/posts/domain/models/post_model.dart';
import 'package:Postly/features/posts/domain/repositories/posts_repository.dart';

class PostsRepositoryImpl implements PostsRepository {
  final PostsRemoteDatasource _remoteDatasource;

  PostsRepositoryImpl(this._remoteDatasource);

  @override
  Future<List<PostModel>> fetchPosts() async {
    final res = await guardedCacheAccess<List<PostModel>>(_remoteDatasource.fetchPosts);
    return res;
  }
}
