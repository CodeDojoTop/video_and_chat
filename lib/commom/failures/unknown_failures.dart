import 'package:chat_and_video/core/failures/failure.dart';

class UnknownFailure implements Failure {
  @override
  String get message => "Ocorreu um erro!";
}
