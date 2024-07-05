import 'package:flutter/material.dart';
import 'package:onboarding_app_ui/screens/login_screen.dart';
import 'package:onboarding_app_ui/screens/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //background image
        Positioned.fill(
          child: Image.asset(
            "assets/images/background_principal.png",
            fit: BoxFit.cover,
          ),
        ),
        //welcome text and Image
        // const SizedBox(
        //   height: 5,
        // ),

        SafeArea(
          child: Center(
            child: Column(
              children: [
                //Image
                // const SizedBox(
                //   height: 20,
                // ),
                //welcome image goes here
                Container(
                  width: 300,
                  height: 425,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/person_image.png"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //welcome text goes here
                const Text(
                  "Discover Your\n Dream Job Here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1F41BB),
                  ),
                ),
                const SizedBox(
                  height: 23,
                ),
                //Text goes here
                const Text(
                  "Explore all the existing job roles based on your \n interest and study major",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                ),
                //buttons(login and register)
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //first button, fill
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      child: Container(
                        height: 70,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF1F41BB).withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          color: const Color(0xFF1F41BB),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(
                              left: 30, right: 30, top: 10, bottom: 10),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //second button, not fill
                    const SizedBox(
                      width: 23,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()),
                        );
                      },
                      child: const SizedBox(
                        height: 50,
                        width: 150,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
