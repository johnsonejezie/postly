import 'package:Postly/core/failures.dart';
import 'package:Postly/core/usecase_typedefs.dart';
import 'package:Postly/core/utilities/error_helpers.dart';
import 'package:Postly/features/posts/domain/models/post_model.dart';
import 'package:Postly/features/posts/domain/repositories/posts_repository.dart';
import 'package:dartz/dartz.dart';

class FetchPosts implements Usecase<List<PostModel>, NoParams> {
  final PostsRepository _postsRepository;

  FetchPosts(this._postsRepository);

  @override
  Future<Either<UIError, List<PostModel>>> call([params]) async {
    try {
      return Right(await _postsRepository.fetchPosts());
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
