import 'package:dartz/dartz.dart';
import 'package:graduation_project/features/auth/data/models/user_model.dart';

import '../../../../core/errors/failure.dart';
abstract class AuthRepo {
  Future<Either<Failure, UserModel>> createUserWithEmailAndPassword(
    String email,
    String password,
    String phone,
    String name,
  );
  Future<Either<Failure, UserModel>> signinWithEmailAndPassword(
    String email,
    String password,
  );
  Future<Either<Failure, void>> signOut();
  Future addUserData({required UserModel user});
  Future<UserModel> getUserData({required String uid});
}
