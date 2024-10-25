import 'package:flutter/material.dart';
import 'package:horizon_project/Authentication/otp_verification.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController emailPhoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
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
              // Big box with shadow effect
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Heading "Forgot Password"
                  Center(
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      "Please enter your email or phone number,\n      and we will send an verify code",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Body Text

                  SizedBox(height: 40),
                  Container(
                    height: 55,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.grey[200],
                    ),
                    child: TextField(
                      controller: emailPhoneController,
                      style: TextStyle(
                        color: Color(
                            0xFF0080BF), // Same color as the Verify button
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      cursorColor:
                          Color(0xFF0080BF), // Same color as the Verify button
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
                          vertical: 17, // Vertically center the text and icon
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),

                  SizedBox(height: 100),

                  Container(
                    height: 50,
                    width: 380,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0080BF),
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => OtpVerificationPage()),
                        );
                      },
                      child: Text(
                        'Verify',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
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
