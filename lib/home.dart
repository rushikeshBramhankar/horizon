import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
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
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 22,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Moved the vertical SingleChildScrollView to encompass the scrolling area
            Expanded(
              child: SingleChildScrollView(
                // This widget allows vertical scrolling
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      height: 420,
                      width: 380,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[100],
                                        shape: BoxShape.circle,
                                      ),
                                      child: Material(
                                        elevation:
                                            4.0, // Adds the shadow effect
                                        shape: CircleBorder(),
                                        child: ClipOval(
                                          child: Image.asset(
                                            'assets/myimage.jpg',
                                            fit: BoxFit.cover,
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 55,
                                      width: 270,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '  Rushikesh Bramhankar',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Colors.blue,
                                                  size: 16,
                                                ),
                                                Text(
                                                  'Mumbai',
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 320,
                            width: 400,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                            ),
                            child: Material(
                              elevation: 4.0,
                              shape: CircleBorder(),
                              child: Image.asset(
                                'assets/sealink.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 0, // Left side padding
                      endIndent: 0, // Right side padding
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
