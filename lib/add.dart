import 'package:flutter/material.dart';
import 'package:horizon_project/home.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
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
                      width: 95,
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
                  height: 35,
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
                        child: Icon(
                          Icons.add,
                          color: Colors.blue,
                          size: 60,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Center(
                  child: Text(
                    'Upload files',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 38,
                ),
                Container(
                  height: 255,
                  width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.grey[200],
                  ),
                  child: TextField(
                    // controller: fullNameController,
                    decoration: InputDecoration(
                      hintText: "Your thoughts",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      prefixIcon: Icon(Icons.reviews_outlined),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 17),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(
                  height: 38,
                ),
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
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    child: Text(
                      'Post',
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
}
