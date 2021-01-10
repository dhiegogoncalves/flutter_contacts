import 'package:flutter/material.dart';
import 'package:flutter_contacts/android/views/home.view.dart';
import 'package:flutter_contacts/controllers/auth.controller.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final controller = AuthController();

  @override
  void initState() {
    controller.authenticate().then((result) {
      if (result == true) {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => HomeView()),
        );
      }
    }).catchError((error) {
      print(error);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          Icon(
            Icons.fingerprint,
            size: 72,
            color: Theme.of(context).accentColor,
          ),
          Text(
            "Meus Contatos",
            style: TextStyle(
              fontSize: 24,
              color: Theme.of(context).accentColor,
            ),
          )
        ],
      ),
    );
  }
}
