import 'package:flutter/material.dart';
import 'package:google_auth/screens/home.dart';
import 'package:google_auth/screens/user_reg.dart';
import 'package:google_auth/util.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AppProvider(),
        lazy: false,
        child: Consumer<AppProvider>(
          builder: (context, state, child) {
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                home: state.isLoggedIn == false
                    ? const UserRegistration(
                        title: "demo",
                      )
                    : const Homepage());
          },
        ));
  }
}
