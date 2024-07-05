import 'package:flutter/material.dart';
import 'package:onboarding_app_ui/components/my_button.dart';
import 'package:onboarding_app_ui/components/my_icon_box.dart';
import 'package:onboarding_app_ui/components/my_textfield.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                    "Create Account",
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
                    "Create an account so you can explore all the \n existing jobs",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 53,
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
                    height: 26,
                  ),
                  const MyTextField(
                    hintText: 'Password',
                    obscureText: true,
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  const MyTextField(
                    hintText: 'Confirm your Password',
                    obscureText: true,
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
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
                          "Already have an account",
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
