import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:horizon_project/Authentication/forgotPassword.dart';
import 'package:horizon_project/Authentication/register.dart';
import 'package:horizon_project/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: IconButton(
                      padding: EdgeInsets.zero, // Remove padding
                      icon: Icon(Icons.arrow_back_ios,
                          size: 16), // Adjust icon size
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/travel2.png',
                      height: 60, // Adjust the size as per your requirement
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              // Welcome Text
              Center(
                child: Text(
                  "Welcome back! Glad \n   to see you again!",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Email/Phone Number Field
              Container(
                height: 55,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Enter your Email",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    prefixIcon: Icon(Icons.mail_outline),
                    border: InputBorder.none, // Remove underline
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 17), // Vertically center the text and icon
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),

              SizedBox(height: 20),
              Container(
                height: 55,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Enter your Password",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    prefixIcon: Icon(Icons.lock_outline_rounded),
                    border: InputBorder.none, // Remove underline
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 17), // Vertically center the text and icon
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),

              SizedBox(height: 5),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => ForgotPasswordPage()),
                      );
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_box_outlined,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Save Password",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => ForgotPasswordPage()),
                      );
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF00ACDF),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.2),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Login Button
              SizedBox(
                height: 120,
              ),
              Container(
                height: 50,
                width: 380,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0080BF),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Divider with "or login with"
              Row(
                children: <Widget>[
                  Expanded(child: Divider(thickness: 1)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "or Login with",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.4),
                    ),
                  ),
                  Expanded(child: Divider(thickness: 1)),
                ],
              ),

              SizedBox(height: 20),

              // Social Login Buttons (Facebook, Google, Apple)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[200]),
                    child: IconButton(
                      icon: Icon(
                        Icons.g_mobiledata,
                        color: Color.fromARGB(255, 42, 152, 17),
                      ),
                      // icon: Image.asset('assets/google_icon.png'),
                      iconSize: 30,
                      onPressed: () {
                        // Google login logic
                      },
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),

              // Register Now Option
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.4),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                    },
                    child: Text(
                      "Register Now",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF00ACDF),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.2),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
