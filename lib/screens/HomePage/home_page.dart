import 'package:chat_app/screens/CreateUser/create_user.dart';
import 'package:chat_app/widgets/gradient_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Sign in',
        )),
      ),
      body: Column(children: <Widget>[
        Container(
          height: 230,
          // width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      'Login',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Enter your phone number',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                ],
              ),
              Center(
                  child: FractionallySizedBox(
                widthFactor: 0.7,
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.close,
                          color: Theme.of(context).primaryColor,
                        ),
                        onPressed: () => {},
                      ),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Theme.of(context).primaryColor,
                      ),
                      hintText: 'Phone number'),
                ),
              )),
              FractionallySizedBox(
                  widthFactor: 0.7,
                  child: GradientButton(
                      text: "Sign in",
                      onPress: () => {
                            Navigator.of(context)
                                .pushNamed(CreateUserScreen.routeName)
                          }))
            ],
          ),
        )
      ]),
    );
  }
}
