import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:graduation_project/features/auth/data/models/user_model.dart';

import '../../../../core/errors/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserModel>> createUserWithEmailAndPassword({
    required String userName,
    required String email,
    required String password,
    required String phoneNumber,
    required String location,
    required String birthDate,
    required String bloodType,
  });
  Future<Either<Failure, UserModel>> signinWithEmailAndPassword(
      String email, String password);
  Future addUserData({required UserModel user});
  // Future saveUserData({required UserModel user});
  Future saveUserData({required UserModel user});
  Future<void> deleteUser(User? user);
  Future<void> signOut();
}
