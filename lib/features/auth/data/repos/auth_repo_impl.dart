import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:graduation_project/core/errors/exception.dart';
import 'package:graduation_project/core/errors/failure.dart';
import 'package:graduation_project/core/services/firebase_auth_service.dart';
import 'package:graduation_project/features/auth/data/models/user_model.dart';
import 'package:graduation_project/features/auth/data/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future addUserData({required UserModel user}) {
    // TODO: implement addUserData
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserModel>> createUserWithEmailAndPassword({
    required String userName,
    required String email,
    required String password,
    required num phoneNumber,
    required String location,
    required String birthDate,
    required String bloodType,
  }) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      UserModel userModel = UserModel(
        uid: user.uid,
        name: userName,
        email: email,
        phoneNumber: phoneNumber,
        location: location,
        birthDate: birthDate,
        bloodType: bloodType,
      );
      addUserData(user: userModel);
      return Right(userModel);
    } on CustomException catch (e) {
      await deleteUser(user);
      return Left(FirebaseAuthFailure(errMessage: e.message));
    }
  }

  @override
  @override
  Future<Either<Failure, UserModel>> signinWithEmailAndPassword(
      String email, String password) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteUser(User? user) async {
    if (user != null) {
      await firebaseAuthService.deleteUser();
    }
  }

  @override
  Future<void> signOut() async {
    await firebaseAuthService.signOut();
  }
}
