import 'package:Postly/features/user/domain/models/user_model.dart';

abstract class UserRepository {
  Future<UserModel> fetchUser();
  Future<void> resetPoints();
}
