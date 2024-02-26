import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../base_nav_page.dart';
import 'login.dart';


class CheckIfLoggedIn extends StatelessWidget {
  const CheckIfLoggedIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const BaseNavPage();
          } else {
            return const LoginPage();
          }
        },
      ),
    );
  }
}