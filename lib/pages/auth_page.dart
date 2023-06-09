import 'package:fastbox_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'home_page.dart';
import 'intro_page.dart';
import 'login_or_register.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // If user is logged in
          if (snapshot.hasData) {
            return HomePage();

          // if user is not logged in
          } else {
            return IntroPage();
            // initially LoginOrRegisterPage()
            // replace with IntroPage()?
          }
        },
      ),
    );
  }
}
