import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();

  String _userEmail = '';
  String _userPassword = '';

  void _trySubmit() {
    final isValid = _formKey.currentState.validate();
    FocusScope.of(context).unfocus();

    if (isValid) {
      _formKey.currentState.save();
      print(_userEmail);
      print(_userPassword);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            validator: (value) {
              if (value.isEmpty || !value.contains('@')) {
                return 'Please enter a valid email address.';
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(labelText: 'Email Address'),
            onSaved: (value) {
              _userEmail = value;
            },
          ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty || value.length < 6) {
                return 'Please enter a longer password.';
              }
              setState(() {
                _userPassword = value;
              });
              return null;
            },
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty || value != _userPassword) {
                return 'Passwords do not match.';
              }
              return null;
            },
            decoration: InputDecoration(labelText: 'Confirm Password'),
            obscureText: true,
            onSaved: (value) {
              _userPassword = value;
            },
          ),
          RaisedButton(
            child: Text('Sign Up'),
            onPressed: _trySubmit,
          ),
          FlatButton(
            onPressed: () {},
            child: Text('I already have an account'),
          ),
        ],
      ),
    );
  }
}
