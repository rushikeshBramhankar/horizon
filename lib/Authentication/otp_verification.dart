import 'package:flutter/material.dart';

class OtpVerificationPage extends StatefulWidget {
  @override
  _OtpVerificationPageState createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  final TextEditingController otpController1 = TextEditingController();
  final TextEditingController otpController2 = TextEditingController();
  final TextEditingController otpController3 = TextEditingController();
  final TextEditingController otpController4 = TextEditingController();

  bool isOtpIncorrect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
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
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    "Verification code",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Please verify OTP that we\'ve sent to \n                     your email',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    letterSpacing: 0.1,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                SizedBox(height: 30),

                // OTP Input Fields
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildOtpBox(otpController1),
                    _buildOtpBox(otpController2),
                    _buildOtpBox(otpController3),
                    _buildOtpBox(otpController4),
                  ],
                ),

                SizedBox(height: 50),

                // Incorrect OTP message
                if (isOtpIncorrect)
                  Text(
                    "Incorrect OTP",
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),

                SizedBox(height: 40),

                // Verify Button
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
                    onPressed: () {},
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
          ),
        ),
      ),
    );
  }

  // OTP Box Widget
  // OTP Box Widget
  Widget _buildOtpBox(TextEditingController controller) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xFF0080BF), // Same color as the Verify button
        ),
        cursorColor: Color(0xFF0080BF), // Same color as the Verify button
        decoration: InputDecoration(
          border: InputBorder.none,
          counterText: '',
        ),
      ),
    );
  }

  // Verify OTP Logic (Sample, replace with your logic)
  void _verifyOtp() {
    String otp = otpController1.text +
        otpController2.text +
        otpController3.text +
        otpController4.text;

    if (otp == "1234") {
      // Mock correct OTP for testing
      // Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(
      //       builder: (context) => HomePage(
      //             userLastName: '',
      //           )), // Redirect to Home Page after verification
      // );
    } else {
      setState(() {
        isOtpIncorrect = true;
      });
    }
  }
}
