import 'package:chat_and_video/core/failures/failure.dart';

class LoginFailure implements Failure {
  @override
  String get message => 'Não foi possível fazer login.';
}
