import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_auth/util.dart';
import 'package:google_auth/util.dart';
import 'package:provider/provider.dart';

class UserRegistration extends StatefulWidget {
  const UserRegistration({super.key, required this.title});

  final String title;

  @override
  State<UserRegistration> createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: IntrinsicWidth(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child:           ElevatedButton.icon(
            onPressed: () {
              final state = Provider.of<AppProvider>(context, listen: false);
              state.socialSignIn("google", context);
            },
            icon: const Icon(Icons.g_mobiledata),
            label: const Text("Sign in with Google"),
          ),
          ),
        ),
      ),
    );
  }
}