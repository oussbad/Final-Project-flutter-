import 'package:flutter/material.dart';

import 'Reusable/EventsCard.dart';
import 'Reusable/SwitchButton.dart';

class aboutClub extends StatefulWidget {
  const aboutClub({Key? key}) : super(key: key);

  @override
  State<aboutClub> createState() => _aboutClubState();
}

class _aboutClubState extends State<aboutClub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40 ,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 86,
                  height: 86,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/event1.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
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
                      '+56',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 13,
                        fontFamily: 'ABeeZee',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: -0.33,
                      ),
                    ),
                    Text(
                      'events',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 13,
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
                      '+56',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 13,
                        fontFamily: 'ABeeZee',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: -0.33,
                      ),
                    ),
                    Text(
                      'events',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 13,
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
            margin: EdgeInsets.symmetric(horizontal: 40 ,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'About the Club',
                  style: TextStyle(
                    color: Color(0xFF9A9A9A),
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'ABeeZee',
                    fontWeight: FontWeight.w400,
                    height: 0,
                    letterSpacing: -0.35,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Ajoutez ici l'action à effectuer lorsque le bouton est pressé
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF4D7881), // Remplacez par la couleur de fond souhaitée
                    minimumSize: Size(116, 32), // Définir la taille du bouton
                    padding: EdgeInsets.zero, // Supprime le padding par défaut
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4), // Définir les bords arrondis si nécessaire
                    ),
                  ),
                  child: Text(
                    'Join',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'ABeeZee',
                      fontWeight: FontWeight.w400,
                      height: 1.0, // Assurez-vous que la hauteur est appropriée pour le texte
                      letterSpacing: -0.24,
                    ),
                  ),
                )


              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 1),
            child: Text(
              '''The GDSC UEMF club helps students develop their
technical skills related to Google's latest digital
technologies and digital development in general.
The club organizes workshops and carries out projects
in web development, mobile applications, Arduino,
artificial intelligence, cyber security...''',
              style: TextStyle(
                color: Color(0xFF212121),
                fontSize: 14,
                fontFamily: 'ABeeZee',
                fontWeight: FontWeight.w400,
                height: 1.5,  // Adjust line height as needed
                letterSpacing: -0.24,
              ),
            ),
          ),
          CustomSwitchButton(),
          SizedBox(
            height: 500, // Adjust the height according to your UI design
            child: SingleChildScrollView(
              child: Column(
                children: [

                  EventsCard(),
                  EventsCard(),
                  EventsCard(),
                  EventsCard(),
                  EventsCard(),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
