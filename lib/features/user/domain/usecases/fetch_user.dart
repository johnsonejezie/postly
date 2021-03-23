import 'package:Postly/core/failures.dart';
import 'package:Postly/core/usecase_typedefs.dart';
import 'package:Postly/core/utilities/error_helpers.dart';
import 'package:Postly/features/user/domain/models/user_model.dart';
import 'package:Postly/features/user/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';

class FetchUser implements Usecase<UserModel, NoParams> {
  FetchUser(this._userRepository);
  final UserRepository _userRepository;

  @override
  Future<Either<UIError, UserModel>> call([params]) async {
    try {
      return Right(await _userRepository.fetchUser());
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
