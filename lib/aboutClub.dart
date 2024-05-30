import 'package:flutter/material.dart';
import 'dart:ui'; // Needed for the BackdropFilter

import 'Reusable/EventsCard.dart';
import 'Reusable/SwitchButton.dart';

class AboutClub extends StatefulWidget {
  final String clubName;
  final String clubImage;
  final int numberOfEvents;
  final int numberOfMembers;
  final String clubBio;

  const AboutClub({
    Key? key,
    required this.clubName,
    required this.clubImage,
    required this.numberOfEvents,
    required this.numberOfMembers,
    required this.clubBio,
  }) : super(key: key);

  @override
  State<AboutClub> createState() => _AboutClubState();
}


class _AboutClubState extends State<AboutClub> {
  bool isMember = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.clubName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            height: 0.06,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.keyboard_arrow_left, size: 35),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 86,
                      height: 86,
                      decoration: ShapeDecoration(
                        image:  DecorationImage(
                          image: AssetImage(widget.clubImage),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 3,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Color(0xFF4D7881),
                          ),
                          borderRadius: BorderRadius.circular(112.50),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '+${widget.numberOfEvents}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xFF212121),
                            fontSize: 16,
                            fontFamily: 'ABeeZee',
                            fontWeight: FontWeight.w400,
                            height: 0,
                            letterSpacing: -0.33,
                          ),
                        ),
                        const Text(
                          'events',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF212121),
                            fontSize: 16,
                            fontFamily: 'ABeeZee',
                            fontWeight: FontWeight.w400,
                            height: 0,
                            letterSpacing: -0.33,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '+${widget.numberOfMembers}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xFF212121),
                            fontSize: 16,
                            fontFamily: 'ABeeZee',
                            fontWeight: FontWeight.w400,
                            height: 0,
                            letterSpacing: -0.33,
                          ),
                        ),
                        const Text(
                          'Members',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF212121),
                            fontSize: 16,
                            fontFamily: 'ABeeZee',
                            fontWeight: FontWeight.w400,
                            height: 0,
                            letterSpacing: -0.33,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'About the Club',
                      style: TextStyle(
                        color: Color(0xFF9A9A9A),
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'ABeeZee',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: -0.35,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        _showBlurDialog(context, isMember);
                        setState(() {
                          isMember = !isMember;
                        });
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFF4D7881),
                        minimumSize: const Size(116, 32),
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Text(
                        isMember ? 'Join' : 'Leave',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'ABeeZee',
                          fontWeight: FontWeight.w400,
                          height: 1.0,
                          letterSpacing: -0.24,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 1),
                child: Text(
                  widget.clubBio,
                  style: const TextStyle(
                    color: Color(0xFF212121),
                    fontSize: 14,
                    fontFamily: 'ABeeZee',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: -0.24,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              CustomSwitchButton(),
              SizedBox(height: 20,),
              SizedBox(
                height: 320,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                        EventsCard(
                          eventName: 'conference SE',
                        clubName: 'GDSC Club',
                        imagePath: 'images/eventgdsc.jpg',
                        time: '3pm',
                        date: '19-07-2024',
                        ),
                      EventsCard(
                        eventName: 'Night Neon Party',
                        clubName: 'Rotaract Club',
                        imagePath: 'images/eventrotaract.jpg',
                        time: '3pm',
                        date: '19-07-2024',
                      ),
                      EventsCard(
                        eventName: 'Traditional Gala',
                        clubName: 'Hands Club',
                        imagePath: 'images/eventHnads.jpg',
                        time: '3pm',
                        date: '19-07-2024',
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ],
      ),
    );
  }



  Future<void> _showBlurDialog(BuildContext context ,bool isMember) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            backgroundColor: Colors.transparent,
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                      color: Color(0xFFE0F7FA),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        "images/check.png",
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    isMember ? 'You are now A MEMBER' : 'You Left the club',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF616161),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      // Add any additional action here if needed
                    },
                    child: Text(
                      'DONE',
                      style: TextStyle(
                        color: Color(0xFF4D7881),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Color(0xFF4D7881), backgroundColor: Color(0xFFE0F7FA),
                      elevation: 0,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}