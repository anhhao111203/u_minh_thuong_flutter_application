import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Variables to save user's input:
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController = TextEditingController();

    return Scaffold(
        appBar: AppBar(
            title: Text(
              "Sign up",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
            backgroundColor: Color(0xFF285B23),
            centerTitle: true
        ),
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    SizedBox(height: 5),
                    Text(
                        "Please fill in your email and password to sign up your account",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey
                        ),
                        textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Image(
                  image: AssetImage('assets/images/umt_logo.png'),
                  height: 100,
                  width: 100,
                ),
                Column(
                  children: [
                    TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                          floatingLabelStyle: TextStyle(
                            color: Colors.green
                          ),
                          hintText: "Enter your email",
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green
                            )
                          )
                        ),
                        cursorColor: Colors.green,
                        keyboardType: TextInputType.emailAddress
                    ),
                    SizedBox(
                        height: 20
                    ),
                    TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelText: "Password",
                        floatingLabelStyle: TextStyle(
                            color: Colors.green
                        ),
                        hintText: "Enter your password",
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.green
                            )
                        )
                      ),
                      cursorColor: Colors.green,
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 20
                    ),
                    TextField(
                      controller: confirmPasswordController,
                      decoration: InputDecoration(
                        labelText: "Confirm password",
                        floatingLabelStyle: TextStyle(
                            color: Colors.green
                        ),
                        hintText: "Enter your password again",
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.green
                            )
                        )
                      ),
                      cursorColor: Colors.green,
                      obscureText: true,
                    ),
                  ],
                ),
                // Sign in button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 60),
                    backgroundColor: Color(0xFF285B23),
                  ),
                  onPressed: () {
                    // Handle sign-in logic
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                // Don't have an account text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have your account?",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/sign-in');
                      },
                      child: Text(
                        " Sign in",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ],
            )
        )
    );
  }
}