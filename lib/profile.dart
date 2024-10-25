import 'package:flutter/material.dart';
import 'package:horizon_project/home.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Stack(
                  children: [
                    Material(
                      elevation: 8,
                      shape: CircleBorder(),
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[100],
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/myimage.jpg',
                            fit: BoxFit
                                .cover, // Ensure the image fits within the circle
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Color(0xFF0080BF),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.edit_outlined,
                            color: Colors.white,
                            size: 19,
                          ),
                          onPressed: () {
                            // Action when edit button is pressed
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 9,
                ),
                Center(
                  child: Text(
                    'Rushikesh Shimpi',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 3,
                  indent: 0, // Left side padding
                  endIndent: 0, // Right side padding
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
