import 'package:chat_and_video/commom/failures/unknown_failures.dart';
import 'package:chat_and_video/core/failures/failure.dart';
import 'package:chat_and_video/domain/authentication/failures/login/login_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationRepository {
  final FirebaseAuth authInstance;

  AuthenticationRepository({required this.authInstance});

  Future<Either<Failure, UserCredential?>> login(
      String email, String password) async {
    try {
      UserCredential userCredential =
          await authInstance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(userCredential);
    } on FirebaseAuthException catch (e) {
      return Left(LoginFailure());
    } catch (e) {
      return Left(UnknownFailure());
    }
  }
}
