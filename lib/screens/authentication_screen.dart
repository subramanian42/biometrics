import 'package:biometrics/models/local_auth_api.dart';
import 'package:biometrics/screens/home_screen.dart';
import 'package:biometrics/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Biometric Authentication'),
            centerTitle: true,
            backgroundColor: const Color(0xFF139DD3),
          ),
          body: Stack(
            children: [
              Positioned(
                  top: constraints.maxHeight / 2,
                  child: CustomButton(
                      title: 'Authentication',
                      onPressed: () async {
                        final isAuthenticated =
                            await LocalAuthApi.authenticate();
                        if (isAuthenticated) {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        }
                      })),
              // Positioned(
              //     top: constraints.maxHeight / 2,
              //     child: CustomButton(
              //         title: 'Fingerprint Scanner', onPressed: () {}))
            ],
          ),
        ),
      );
    });
  }
}
