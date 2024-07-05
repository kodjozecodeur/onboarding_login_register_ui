import 'package:flutter/material.dart';
import 'package:onboarding_app_ui/components/my_button.dart';
import 'package:onboarding_app_ui/components/my_icon_box.dart';
import 'package:onboarding_app_ui/components/my_textfield.dart';
import 'package:onboarding_app_ui/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              "assets/images/background_principal.png",
              fit: BoxFit.cover,
            ),
          ),
          // SafeArea widget to respect the safe areas
          SafeArea(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  // Intro text
                  const Text(
                    "Login Here",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F41BB),
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  //description text goes here
                  const Text(
                    "Welcome back, you've \n been missed!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 75,
                  ),
                  //textformfield goes here
                  //email
                  const MyTextField(
                    hintText: 'Email',
                    obscureText: false,
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                  ),
                  //password
                  const SizedBox(
                    height: 29,
                  ),
                  const MyTextField(
                    hintText: 'Password',
                    obscureText: true,
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forget your password?",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1F41BB),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const MyButton(),
                  //sign up instead
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterScreen()),
                          );
                        },
                        child: const Text(
                          "Create a new account",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF494949),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 65,
                  ),

                  //continue
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Or continue with",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1F41BB),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyIconBox(
                        imagePath: 'assets/images/google.png',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      MyIconBox(
                        imagePath: 'assets/images/facebook.png',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      MyIconBox(
                        imagePath: 'assets/images/apple.png',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
