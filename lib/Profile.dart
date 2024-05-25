import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String profileImagePath;
  final String profileName;
  final String profileEmail;
  final String profileAddress;
  final String bioText;
  final String memberImagePath; // Updated variable for the local image path

  ProfilePage({
    required this.profileImagePath,
    required this.profileName,
    required this.profileEmail,
    required this.profileAddress,
    required this.bioText,
    required this.memberImagePath, // Initialize the image path variable
  });

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            height: 0.06,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left, size: 35),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
      child: Column(
      children: [
      Container(
      width: 335,
      height: 250,
      margin: EdgeInsets.only(top: 20, left: 25),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2, color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x21BEBEBE),
            blurRadius: 9,
            offset: Offset(3, 3),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 154,
            height: 229,
            margin: EdgeInsets.only(right: 10, top: 10, left: 10),
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(1.00, -0.00),
                end: Alignment(-1, 0),
                colors: [Color(0xFF16A9FB), Color(0xFF69DBFF)],
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 2, color: Colors.white),
                borderRadius: BorderRadius.circular(15),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x21BEBEBE),
                  blurRadius: 9,
                  offset: Offset(3, 3),
                  spreadRadius: 0,
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                widget.profileImagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  widget.profileName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Inria Sans',
                    fontWeight: FontWeight.w400,
                    height: 1.0,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 9,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  widget.profileEmail,
                  style: TextStyle(
                    color: Color(0xFF79838B),
                    fontSize: 11,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  'Address',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 9,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  widget.profileAddress,
                  style: TextStyle(
                    color: Color(0xFF79838B),
                    fontSize: 11,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
      SizedBox(height: 20),
      Stack(
        children: [
        Container(
        width: 335,
        height: 148.75,
        margin: EdgeInsets.only(left: 25),
        decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        ),
        shadows: [
          BoxShadow(
          color: Color(0x21BEBEBE),
          blurRadius: 9,
          offset: Offset(3, 3),
          spreadRadius: 0,
          )
          ],
          ),
          ),
          Positioned(
          top: 15,
          left: 40,
          child: Text(
          'BIO',
          style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w600,
          height: 0,
          ),
          ),
          ),
          Positioned(
          top: 40,
          left: 40,
          child: Container(
          width: 295,
          child: Text(
          widget.bioText,
          style: TextStyle(
          color: Color(0xFF8D98A1),
          fontSize: 14,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          height: 1.5,
          ),
          ),
          ),
          ),
          ],
          ),
          SizedBox(height: 20),
          Stack(
          children: [
          Container(
          width: 335,
          height: 91,
          margin: EdgeInsets.only(left: 25),
          decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          ),
          shadows: [
          BoxShadow(
          color: Color(0x21BEBEBE),
          blurRadius: 9,
          offset: Offset(3, 3),
          spreadRadius: 0,
          )
          ],
          ),
          ),
          Positioned(
          top: 10,
          left: 45,
          child: Text(
          'MEMBER IN :',
          style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontFamily: 'Inria Sans',
          fontWeight: FontWeight.w700,
          height: 0,
          ),
          ),
          ),
          Positioned(
          top: 40,
          left: 45,
          child: Container(
          width: 45,
          height: 45,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage(widget.memberImagePath), // Use the member image path from the widget parameter
          fit: BoxFit
              .fill,
          ),
          ),
          ),
          ),
            Positioned(
              top: 40,
              left: 90,
              child: Container(
                width: 45,
                height: 45,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.memberImagePath), // Use the member image path from the widget parameter
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 135,
              child: Container(
                width: 45,
                height: 45,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.memberImagePath), // Use the member image path from the widget parameter
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 180,
              child: Container(
                width: 45,
                height: 45,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.memberImagePath), // Use the member image path from the widget parameter
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 225,
              child: Container(
                width: 45,
                height: 45,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.memberImagePath), // Use the member image path from the widget parameter
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 270,
              child: Container(
                width: 45,
                height: 45,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.memberImagePath), // Use the member image path from the widget parameter
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
          ),
        SizedBox(height: 20),

      ],
      ),
      ),
    );
  }
}
