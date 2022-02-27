import 'package:biometrics/screens/authentication_screen.dart';
import 'package:biometrics/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            Positioned(
              top: constraints.maxHeight / 2,
              child: Container(
                width: 150,
                height: 75,
                color: Colors.green,
                child: const Text('Authentication Successful'),
              ),
            ),
            CustomButton(
              title: 'Logout',
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const AuthenticationScreen()));
              },
            ),
          ],
        );
      }),
    );
  }
}
