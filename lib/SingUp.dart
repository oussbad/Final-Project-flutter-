import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:untitled1/Login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _signup() async {
    final String fullName = _fullNameController.text.trim();
    String email = _emailController.text.trim();

    if (!email.endsWith("@eidia.ueuromed.org")) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid email domain')),
      );
      return;
    }

    email += "@eidia.ueuromed.org";
    final String password = _passwordController.text;

    // Your Node.js server URL
    final String url = 'http://localhost:3000/signup';

    try {
      final http.Response response = await http.post(
        Uri.parse(url),
        body: json.encode({'fullName': fullName, 'email': email, 'password': password}),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 201) {
        // Handle successful signup and navigate to login page
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Signup successful! Please log in.')),
        );
        Navigator.pushReplacementNamed(context, '/login'); // Replace with your login route
      } else if (response.statusCode == 409) {
        // Handle user already exists error
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('User already exists')),
        );
      } else {
        // Handle other errors
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Signup failed: ${response.body}')),
        );
      }
    } catch (e) {
      // Handle network or server errors
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error during signup: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Container(
              height: 200,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Color(0xFFF8F8FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x07000000),
                    blurRadius: 90,
                    offset: Offset(105, 198),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: -20,
                    top: -10,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF8F8FF),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Color(0xFFF8F8FF),
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 5,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10.99,
                    top: -65.70,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(0.19),
                      child: Container(
                        width: 220,
                        height: 150,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF8F8FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0xFF4D7881),
                              blurRadius: 5,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 69.07,
                    top: -72,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(0.19),
                      child: Container(
                        width: 380,
                        height: 162.83,
                        decoration: ShapeDecoration(
                          color: Color(0xFF4D7881),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignOutside,
                              color: Color(0x594D7881),
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 5,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Adding signup text
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 75,
                    child: Center(
                      child: Text(
                        'Signup',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset("images/signup.png"), // Placeholder image for signup
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _fullNameController,
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _signup,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF4D7881), // Background color
                        ),
                        child: Text(
                          'Signup',
                          style: TextStyle(color: Colors.white), // Text color
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an Account?"),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            // Navigation to login screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: Color(0xFF4D7881)),
                          ),
                        ),
                      ],
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
