import 'package:chat_and_video/presentation/pages/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = GetIt.I<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
