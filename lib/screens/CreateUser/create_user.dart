import 'package:chat_app/screens/CreateUser/create_form.dart';
import 'package:chat_app/utils/validators.dart';
import 'package:flutter/material.dart';

class CreateUserScreen extends StatelessWidget {
  static String routeName = "CreateUserScreen";

  const CreateUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.8,
          heightFactor: 0.8,
          child: Center(child: CreateForm()),
        ),
      ),
    );
  }
}
