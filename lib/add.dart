import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:horizon_project/bottomNavigation.dart';
import 'package:horizon_project/home.dart';
import 'package:horizon_project/profile.dart';
import 'package:horizon_project/search.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  int _selectedItem = 2;
  File? _selectedImage;
  final TextEditingController _thoughtsController = TextEditingController();

  void _onItemTap(int index) {
    if (_selectedItem == index) return;
    setState(() {
      _selectedItem = index;
    });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          if (index == 0) {
            return Home();
          } else if (index == 1) {
            return Search();
          } else if (index == 3) {
            return Profilescreen();
          } else {
            return add();
          }
        },
      ),
    );
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  Future<void> _uploadImageAndSubmit() async {
    if (_selectedImage != null && _thoughtsController.text.isNotEmpty) {
      try {
        String fileName = path.basename(_selectedImage!.path);
        FirebaseStorage storage = FirebaseStorage.instance;
        Reference ref = storage.ref().child('images/$fileName');

        await ref.putFile(_selectedImage!);

        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Success'),
            content: Text('Successfully posted'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Text('OK'),
              ),
            ],
          ),
        );
      } catch (e) {
        print("Error uploading image: $e");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to upload image. Please try again.")),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please add an image and fill the text field")),
      );
    }
  }

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
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.arrow_back_ios, size: 16),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    SizedBox(width: 95),
                    Center(
                      child: Image.asset(
                        'assets/travel2.png',
                        height: 60,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                GestureDetector(
                  onTap: _pickImage,
                  child: Stack(
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
                          child: _selectedImage != null
                              ? ClipOval(
                                  child: Image.file(
                                    _selectedImage!,
                                    fit: BoxFit.cover,
                                    width: 120,
                                    height: 120,
                                  ),
                                )
                              : Icon(
                                  Icons.add,
                                  color: Colors.blue,
                                  size: 60,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18),
                Center(
                  child: Text(
                    'Upload photos',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.2,
                    ),
                  ),
                ),
                SizedBox(height: 38),
                Container(
                  height: 255,
                  width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.grey[200],
                  ),
                  child: TextField(
                    controller: _thoughtsController,
                    maxLines: null,
                    expands: true,
                    style: TextStyle(
                      color: Color(0xFF0080BF), // Matches Post button color
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      hintText: "Your thoughts",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      prefixIcon: Icon(
                        Icons.post_add,
                        color: Colors.blue,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 17),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                SizedBox(height: 38),
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
                    onPressed: _uploadImageAndSubmit,
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
      bottomNavigationBar: BottomNavigationWidget(
        selectedItem: _selectedItem,
        onTap: _onItemTap,
      ),
    );
  }
}
