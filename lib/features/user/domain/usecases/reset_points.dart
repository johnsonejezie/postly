import 'package:Postly/core/failures.dart';
import 'package:Postly/core/usecase_typedefs.dart';
import 'package:Postly/core/utilities/error_helpers.dart';
import 'package:Postly/features/user/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';

class ResetPoints implements Usecase<VoidType, int> {
  final UserRepository _userRepository;

  ResetPoints(this._userRepository);

  @override
  Future<Either<UIError, VoidType>> call([params]) async {
    try {
      await _userRepository.resetPoints();
      return const Right(VoidType());
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
