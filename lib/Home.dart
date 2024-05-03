import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 355.98,
            height: 153.60,
            decoration: ShapeDecoration(
              color: Color(0xFF4D7881),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text("Hello"),
                        Text("Club Connect")
                      ],
                    ),
                    Icon(Icons.notifications)

                  ],
                ),
                Stack(
                  // Center alignment
                  children: [
                    Container(
                      width: 304.11,
                      height: 35.20,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 304.11,
                              height: 35.20,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 304.11,
                                      height: 35.20,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFFEFDFE),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(100),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16.38,
                                    top: 9.68,
                                    child: Icon(
                                      Icons.search,
                                      color: Color(0xFFB7B7B7),
                                    ),
                                  ),
                                  Positioned(
                                    left: 53.81,
                                    top: 10.56,
                                    child: SizedBox(
                                      width: 150, // Adjust width as needed
                                      height: 14.96,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Search',
                                          hintStyle: TextStyle(
                                            color: Color(0xFFB7B7B7),
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 242.78,
                            top: 11.04,
                            child: Container(
                              width: 44.45,
                              height: 15.64,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: SizedBox(
                                      width: 19.88,
                                      height: 15.64,
                                      child: Text(
                                        'All',
                                        style: TextStyle(
                                          color: Color(0xFFB7B7B7),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 44.45,
                                    top: 11.04,
                                    child: Transform(
                                      transform: Matrix4.identity()
                                        ..translate(0.0, 0.0)
                                        ..rotateZ(-3.14),
                                      child: Container(
                                        width: 11.70,
                                        height: 6.44,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFB7B7B7),
                                          shape: StarBorder.polygon(sides: 3),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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

        ],
      ),
    );
  }
}
