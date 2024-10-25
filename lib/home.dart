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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
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
              Column(
                children: [
                  Container(
                    height: 640,
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
                                      elevation: 4.0, // Adds the shadow effect
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
                                            '  Daji Adelkar',
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
                                                'Kokan',
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
                            child: Image.asset(
                              'assets/kokan.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.favorite_rounded,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.chat_bubble,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.share_rounded,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        'Visiting Konkan was like stepping into a paradise of natural beauty! The pristine beaches, like Ganpatipule and Tarkarli, offered incredible views and were wonderfully quiet. The lush greenery and dense coconut groves made the whole region feel like an oasis of calm. The locals were warm and welcoming, always ready with a smile and eager to share their love for their homeland. ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        softWrap:
                                            true, // Ensures text wraps to the next line
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 3,
                indent: 0, // Left side padding
                endIndent: 0, // Right side padding
              ),
              Column(
                children: [
                  Container(
                    height: 640,
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
                                      elevation: 4.0, // Adds the shadow effect
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
                            child: Image.asset(
                              'assets/sealink.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.favorite_rounded,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.chat_bubble,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.share_rounded,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        'The spectacle of Mumbai is especially appealing from the elevation of the bridge and makes it the perfect destination to capture a few candid shots of the city in all its glory. Bandra Worli Sea Link also overlooks the Worli Bridge and has a small park located nearby. The beauty of this attraction is enhanced during the night when twinkling lights adorn the bridge.',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        softWrap:
                                            true, // Ensures text wraps to the next line
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
