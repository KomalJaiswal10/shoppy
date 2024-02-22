import 'package:flutter/material.dart';
import 'package:shoppy/view/widgets/button.dart';
import 'package:shoppy/service/utils/extensions.dart';
import 'package:shoppy/view/widgets/textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomTextField(hint: 'Email', prefixIcon: Icons.email),
              10.heigth,
              const CustomTextField(hint: 'Password', prefixIcon: Icons.key),
              30.heigth,
              CustomButton(text: 'LOGIN', onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
