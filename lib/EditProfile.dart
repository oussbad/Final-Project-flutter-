import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  File? _image;
  final ImagePicker _picker = ImagePicker();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // All fields are valid, proceed with saving data
      // Add your code to save data to the database here
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Form submitted successfully!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text(
        'Edit Profile',
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
          body: SafeArea(
          child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Form(
          key: _formKey,
          child: Column(
          children: [
          Align(
          alignment: Alignment.center,
          child: Stack(
          children: [
          Container(
          width: 165.94,
          height: 170.30,
          decoration: ShapeDecoration(
          image: DecorationImage(
          image: _image != null
          ? FileImage(_image!)
              : AssetImage('images/marwan.png') as ImageProvider,
          fit: BoxFit.cover,
          ),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
          side: BorderSide(
          color: Colors.grey,
          width: 2.0,
          ),
          ),
          ),
          ),
          Positioned(
          bottom: -12,
          right: 2,
          child: IconButton(
          icon: Icon(Icons.camera_alt, size: 30, color: Color(0xFF4D7881)),
          onPressed: _pickImage,
          ),
          ),
          ],
          ),
          ),
          Align(
          alignment: Alignment.centerLeft,
          child: Padding(
          padding: const EdgeInsets.only(top: 24.0 ,left: 12),
          child: Text(
          'Name',
          style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          height: 0.06,
          ),
          ),
          ),
          ),
          SizedBox(height: 16), // Space between the text and the input field
          Container(
          width: 342,
          height: 44,
          decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0x23534C4C)),
          borderRadius: BorderRadius.circular(6),
          ),
          ),
          child: TextFormField(
          controller: _nameController,
          decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          border: InputBorder.none,
          ),
          validator: (value) {
          if (value == null || value.isEmpty) {
          return 'Name is required';
          }
          return null;
          },
          ),
          ),
          Align(
          alignment: Alignment.centerLeft,
          child: Padding(
          padding: const EdgeInsets.only(top: 24.0 ,left: 12),
          child: Text(
          'Phone Number',
          style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          height: 0.06,
          ),
          ),
          ),
          ),
          SizedBox(height: 16), // Space between the text and the input field
          Container(
          width: 342,
          height: 44,
          decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0x23534C4C)),
          borderRadius: BorderRadius.circular(6),
          ),
          ),
          child: TextFormField(
          controller: _phoneController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          border: InputBorder.none,
          ),
          validator: (value) {
          if (value == null || value.isEmpty) {
          return 'Phone Number is required';
          }
          if (value.length < 10) {
          return 'Phone Number must be at least 10 digits';
          }
          return null;
          },
          ),
          ),
          Align(
          alignment: Alignment.centerLeft,
          child: Padding(
          padding: const EdgeInsets.only(top: 24.0 ,left: 12),
          child: Text(
          'BIO',
          style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          height: 0.06,
          ),
          ),
          ),
          ),
          SizedBox(height: 16), // Space between the text and the input field
          Container(
          width: 342,
          height: 44,
          decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0x23534C4C)),
          borderRadius: BorderRadius.circular(6),
          ),
          ),
          child: TextFormField(
          controller: _bioController,
          decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          border: InputBorder.none,
          ),
          validator: (value) {
          if (value == null || value.isEmpty) {
          return 'BIO is required';
          }
          return null;
          },
          ),
          ),
          Align(
          alignment: Alignment.centerLeft,
          child: Padding(
          padding: const EdgeInsets.only(top: 24.0 ,left: 12),
          child: Text(
          'Email',
          style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          height: 0.06,
          ),
          ),
          ),
          ),
          SizedBox(height: 16), // Space between the text and the input field
          Container(
          width: 342,
          height: 44,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0x23534C4C)),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
            child: TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                border: InputBorder.none,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email is required';
                }
                if (!value.contains('@')) {
                  return 'Invalid email address';
                }
                return null;
              },
            ),
          ),
            SizedBox(height: 54),
            Container(
              width: 221,
              height: 45,
              decoration: ShapeDecoration(
                color: Color(0xFF4D7881),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              ),
              child: TextButton(
                onPressed: _submitForm,
                child: Text(
                  'Save changes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0.04,
                  ),
                ),
              ),
            )
          ],
          ),
          ),
          ),
          ),
          );
        }
      }
