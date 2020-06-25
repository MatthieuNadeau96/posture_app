import 'package:flutter/material.dart';
import 'package:posture_app/widgets/auth_form.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: AuthForm(),
        ),
      ),
    );
  }
}
