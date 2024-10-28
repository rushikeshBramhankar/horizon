import 'package:flutter/material.dart';
import 'package:horizon_project/Authentication/login.dart';
import 'package:horizon_project/Authentication/register.dart';

class LoginSignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Logo with Welcome text
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(0, 30, 150, 0),
            //   child: Image.asset(
            //     'assets/tree1.png', // Path to AstharaX logo
            //     height: 200,
            //   ),
            // ),
            SizedBox(
              height: 90,
            ),
            Column(
              children: [
                Text(
                  'Welcome to',
                  style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 15),
                // AstharaX logo image
                Image.asset(
                  'assets/travel2.png', // Path to AstharaX logo
                  height: 120,
                ),
                SizedBox(height: 20),
                Text(
                  'Encourage Tourism and \n     Explore my village',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
            SizedBox(height: 180),
            // Login Button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
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
                          MaterialPageRoute(builder: (context) => Register()),
                        );
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Login Button
                  Container(
                    height: 50,
                    width: 380,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF00ACDF),
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/flower.png',
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
