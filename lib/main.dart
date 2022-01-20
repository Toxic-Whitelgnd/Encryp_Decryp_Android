import 'package:encryp_decryp/Decryption_page.dart';
import 'package:encryp_decryp/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Encryption_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'howtouse.dart';
import 'Developer_detail/D_detail.dart';
import 'package:url_launcher/url_launcher.dart';

//to open the github
_launchURL() async {
  const url = 'https://github.com/Toxic-Whitelgnd';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void main() {
  runApp(MaterialApp(
    home: AnimatedSplashScreen(
        duration: 4000,
        splash: Icons.home, //need to change the splash part
        nextScreen: EncrypDecryp(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.blue),
  ));
}

class EncrypDecryp extends StatelessWidget {
  const EncrypDecryp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Encryp-Decryp"),
        centerTitle: true,
        backgroundColor: Colors.black,
        titleTextStyle: const TextStyle(
          color: Color(0xFF00e600),
          //TODO: Add custom font family
          fontFamily: 'Teko',
          fontSize: 25.0,
          letterSpacing: 2.0,
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xff59c259),
        elevation: 10.0,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  image: DecorationImage(
                      image: AssetImage('images/drawer_back.png'),
                    fit: BoxFit.fitHeight
                  )

              ),
              child: Text(''),
            ),
            const ListTile(
              title: Text(
                'Akatsuki',
                style: TextStyle(
                  fontFamily: 'BebasNeue',
                  letterSpacing: 2.0,
                  fontSize: 22.0,
                ),
              ),
              leading: Icon(
                Icons.person_rounded,
                color: Colors.black,
              ),
            ),
            kSizedboxDivider,
            ListTile(
              title: const Text(
                'Developer Details',
                style: TextStyle(
                  fontFamily: 'BebasNeue',
                  letterSpacing: 2.0,
                  fontSize: 22.0,
                ),
              ),
              onTap: () {
                print("Developer details has been pressed!!");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => details()));
              },
              leading: const Icon(
                Icons.wb_cloudy_rounded,
                color: Colors.red,
              ),
            ),
            kSizedboxDivider,
            ListTile(
              title: const Text(
                "Developer - Github",
                style: TextStyle(
                  fontFamily: 'BebasNeue',
                  letterSpacing: 2.0,
                  fontSize: 22.0,
                ),
              ),
              onTap: () {
                print("github has been pressed!!");
                _launchURL();
              },
              leading: const Icon(
                Icons.link,
              ),
            ),
            kSizedboxDivider,
            const ListTile(
              title: Text(
                'Version - 4.4.0',
                style: TextStyle(
                  fontFamily: 'BebasNeue',
                  letterSpacing: 2.0,
                  fontSize: 22.0,
                ),
              ),
              leading: Icon(
                Icons.adb_sharp,
                color: Colors.black,
              ),
            ),
            kSizedboxDivider,
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage("images/encryp_home_back.jfif"),
              fit: BoxFit.fitHeight),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //creating Encryption button
              Container(
                // height: 30.0,
                width: 251.0,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [
                      0.1,
                      0.4,
                      0.6,
                      0.9,
                    ],
                    colors: [
                      Colors.yellow,
                      Colors.red,
                      Colors.indigo,
                      Colors.teal,
                    ],
                  ),
                  shape: BoxShape.rectangle,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff18d902),
                      blurRadius: 10.0, //default value is 5.0
                      spreadRadius: 3.0, //default value is 2.0
                    )
                  ],
                ),
                child: RaisedButton(
                  onPressed: () {
                    print('Encryption Button is pressede');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Encryp_splash()));
                  },
                  child: const Text(
                    'Encryption',
                    style: TextStyle(
                        fontSize: 27.0,
                        letterSpacing: 2.0,
                        fontFamily: 'UbuntuMono'),
                  ),
                  color: Colors.black,
                  textColor: Colors.green[500],
                  hoverColor: Colors.greenAccent[900],
                  padding: EdgeInsets.fromLTRB(40.0, 8.0, 40.0, 8.0),
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: new BorderRadius.circular(30.0),
                  //   side: const BorderSide(
                  //     color: Color(0xFF00e600),
                  //     style: BorderStyle.solid,
                  //     width: 2.0,
                  //   )
                  // ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: 251.0,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [
                      0.1,
                      0.4,
                      0.6,
                      0.9,
                    ],
                    colors: [
                      Colors.blue,
                      Colors.red,
                      Colors.indigo,
                      Colors.cyanAccent,
                    ],
                  ),
                  shape: BoxShape.rectangle,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff18d902),
                      blurRadius: 10.0, //default value is 5.0
                      spreadRadius: 3.0, //default value is 2.0
                    )
                  ],
                ),
                child: RaisedButton(
                  onPressed: () {
                    print('Decryption Button is pressede');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Decryp_splash()));
                  },
                  child: const Text(
                    'Decryption',
                    style: TextStyle(
                        fontSize: 27.0,
                        letterSpacing: 2.0,
                        fontFamily: 'UbuntuMono'),
                  ),
                  color: Colors.black,
                  textColor: Colors.green[500],
                  hoverColor: Colors.greenAccent[900],
                  padding: EdgeInsets.fromLTRB(40.0, 8.0, 40.0, 8.0),
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: new BorderRadius.circular(30.0),
                  //     side: const BorderSide(
                  //       color: Color(0xff00e600),
                  //       style: BorderStyle.solid,
                  //       width: 2.0,
                  //     )
                  // ),
                ),
              ),
              const SizedBox(
                height: 60.0,
                width: 300.0,
                child: Divider(
                  thickness: 2.0,
                  color: Color(0xFF008509),
                ),
              ),

              GestureDetector(
                child: const Text(
                  'How to use?',
                  style: TextStyle(
                    color: Color(0xFF00e600),
                    fontSize: 20.0,
                    fontFamily: 'Lobster',
                    decoration: TextDecoration.underline,
                  ),
                ),
                onTap: () {
                  print("How to use has been clicked!!");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => connnet()));
                },
              ),
              const SizedBox(
                height: 50.0,
              ),
              RaisedButton(
                onPressed: () {
                  print('Exit Button is pressed');
                  SystemNavigator.pop();
                },
                child: const Text(
                  'Exit',
                  style: TextStyle(
                      fontSize: 25.0,
                      letterSpacing: 2.0,
                      fontFamily: 'BebasNeue'),
                ),
                color: Color(0xff1eff00),
                textColor: Colors.black,
                hoverColor: Colors.greenAccent[900],
                padding: EdgeInsets.fromLTRB(40.0, 8.0, 40.0, 8.0),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                    side: const BorderSide(
                      color: Color(0xFF19960e),//0xFF22eb07
                      style: BorderStyle.solid,
                      width: 2.0,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
