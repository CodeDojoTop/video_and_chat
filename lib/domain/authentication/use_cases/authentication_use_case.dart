import 'package:chat_and_video/core/failures/failure.dart';
import 'package:chat_and_video/domain/authentication/repositories/authentication_repository.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase {
  final AuthenticationRepository authenticationRepository;

  LoginUseCase(this.authenticationRepository);

  // Future<Either<Failure, dynamic>> login(String email, String password) async {}
}
