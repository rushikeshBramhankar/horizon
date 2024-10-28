import 'package:flutter/material.dart';
import 'package:horizon_project/add.dart';
import 'package:horizon_project/bottomNavigation.dart';
import 'package:horizon_project/home.dart';
import 'package:horizon_project/profile.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int _selectedItem = 1;
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
          } else if (index == 2) {
            return add();
          } else if (index == 3) {
            return Profilescreen();
          } else {
            return add();
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/travel2.png',
                      height: 60,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 35,
                      width: 230,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 22,
                            ),
                            SizedBox(width: 7),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  border: InputBorder.none,
                                  isDense: true,
                                ),
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                                onSubmitted: (value) {
                                  // Handle search query submission if needed
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 9,
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
