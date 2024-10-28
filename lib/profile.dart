import 'package:flutter/material.dart';
import 'package:horizon_project/add.dart';
import 'package:horizon_project/bottomNavigation.dart';
import 'package:horizon_project/home.dart';
import 'package:horizon_project/search.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  int _selectedItem = 3;
  void _onItemTap(int index) {
    if (_selectedItem == index) return; // Prevent navigating to the same screen
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
          } else if (index == 2) {
            return add();
          } else {
            return Profilescreen();
          }
        },
      ),
    );
  }

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
                  ],
                ),
                SizedBox(
                  height: 9,
                ),
                Center(
                  child: Text(
                    'Rushikesh Bramhankar',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          '10',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Posts",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '1000',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "followers",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '15',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "following",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 3,
                  indent: 0,
                  endIndent: 0,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Material(
                      elevation: 6.0, // Elevation for shadow effect
                      borderRadius: BorderRadius.circular(
                          8), // Optional: for rounded corners
                      child: Container(
                        height: 170,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(
                              8), // Same radius as Material for a smooth effect
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              8), // Match the radius to prevent overflow
                          child: Image.asset(
                            'assets/kokan.jpg',
                            fit: BoxFit
                                .cover, // Ensures image covers the container
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Material(
                      elevation: 6.0,
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        height: 170,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/sealink.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Material(
                      elevation: 6.0,
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        height: 170,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/19/88/12/global-vipassana-pagoda.jpg?w=500&h=500&s=1",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Material(
                      elevation: 6.0,
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        height: 170,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/d0/df/e1/eingang.jpg?w=500&h=500&s=1',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Material(
                      elevation: 6.0,
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        height: 170,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/db/c2/2c/getlstd-property-photo.jpg?w=500&h=500&s=1",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Material(
                      elevation: 6.0,
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        height: 170,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/75/1a/10/jain-temple.jpg?w=500&h=500&s=1',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Material(
                      elevation: 6.0,
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        height: 170,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/19/88/12/global-vipassana-pagoda.jpg?w=500&h=500&s=1",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Material(
                      elevation: 6.0,
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        height: 170,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/d0/df/e1/eingang.jpg?w=500&h=500&s=1',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
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
