import 'package:chat_app/utils/validators.dart';
import 'package:flutter/material.dart';

class CreateForm extends StatefulWidget {
  const CreateForm({Key? key}) : super(key: key);

  @override
  _CreateFormState createState() => _CreateFormState();
}

class _CreateFormState extends State<CreateForm> {
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _form,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(hintText: "Full Name"),
            textInputAction: TextInputAction.next,
          ),
          TextFormField(
            decoration: InputDecoration(hintText: "Phone Number"),
            textInputAction: TextInputAction.next,
          ),
          TextFormField(
            decoration: InputDecoration(hintText: "Email"),
            textInputAction: TextInputAction.next,
            validator: (email) {
              if (isEmail(email) == true) {
                return null;
              } else {
                return "Please enter correct email!";
              }
            },
          ),
          TextFormField(
            decoration: InputDecoration(hintText: "Password"),
            textInputAction: TextInputAction.next,
          ),
          TextFormField(
            decoration: InputDecoration(hintText: "Confirm Password"),
            textInputAction: TextInputAction.done,
          ),
          ElevatedButton(
              onPressed: () {
                if (_form.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Submiting...")));
                }
              },
              child: Text("Submit"))
        ],
      ),
    );
  }
}
