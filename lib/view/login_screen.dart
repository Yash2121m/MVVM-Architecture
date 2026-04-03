import 'package:flutter/material.dart';
import 'package:mvvm_architecture/utils/routes/routes.dart';
import 'package:mvvm_architecture/utils/routes/routes_names.dart';
import 'package:mvvm_architecture/utils/utils.dart';
import 'package:mvvm_architecture/view/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            Utils.flushBarErrorMessage('Error', context);

            // Utils.toastMessage('Hello');
            // Navigator.pushNamed(context, RoutesNames.home);
           // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: const Text("Click Here"),
        ),
      )
    );
  }
}
