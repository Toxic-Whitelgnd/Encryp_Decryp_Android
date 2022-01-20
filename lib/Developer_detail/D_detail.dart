import 'package:encryp_decryp/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:encryp_decryp/D_URL/develoer_url.dart';

class details extends StatelessWidget {
  const details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
          duration: 1500,
          splash: const Icon(
            Icons.whatshot,
            color: Colors.red,
            size: 70.0,
          ),
          nextScreen: Ddetails(),
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Colors.black,
        ));
  }
}

DUrl ur = DUrl();

class Ddetails extends StatelessWidget {
  const Ddetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Developer Contact',
          style: TextStyle(
            color: Color(0xffff0000),
            fontFamily: 'Teko',
            fontSize: 26.0,
            letterSpacing: 2.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(

        padding: EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
            color: Color(0xff232529),
          image: DecorationImage(
            image: AssetImage('images/developer_back.jpg'),
            fit: BoxFit.fitWidth
          )
        ),
        child: Column(
          children: [
            ReusableRowCard(
                'Organization', 'Akatsuki Research and Development'),
            kSizedboxDividerD,
            ReusableRowCard('Owner', 'Pain'),
            kSizedboxDividerD,
            ReusableRowCard('Developer Name', 'Toxic-Whitelgnd'),
            kSizedboxDividerD,
            ReusableRowCard('Location', 'Somewhere on the earth'),
            kSizedboxDividerD,
            ReusableRowCard('email', 'akatsukiorganisationdev999@gmail.com'),
            kSizedboxDividerD,
            kSizedbox,
            const Text(
              " 'The World shall Know Pain!' ",
              style: kTextstyle,
            ),
            ksizedboxBD,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      print('Icon button has been pressed');
                      ur.launchurl('https://github.com/Toxic-Whitelgnd');
                    },
                    icon: const Icon(
                      Zocial.github,
                      color: Color(0xffff0000),
                    )),
                IconButton(
                    onPressed: () {
                      print("Icon2 Has been pressed");
                      ur.launchurl('https://mail.google.com/');
                    },
                    icon: const Icon(
                      Zocial.gmail,
                      color: Colors.green,
                    )),
                IconButton(
                    onPressed: () {
                      print("Icon3 Has been pressed");
                      ur.launchurl('https://naruto.fandom.com/wiki/Akatsuki');
                    },
                    icon: const Icon(
                      Zocial.google,
                      color: Color(0xffff0000),
                    )),
                IconButton(
                    onPressed: () {
                      print("Icon4 Has been pressed");
                      ur.launchurl('https://www.instagram.com/akatsuki/');
                    },
                    icon: const Icon(
                      Zocial.instagram,
                      color: Colors.green,
                    )),
                IconButton(
                    onPressed: () {
                      print("Icon5 Has been pressed");
                      ur.launchurl(
                          'https://www.youtube.com/watch?v=HMq2pX79JVA');
                    },
                    icon: const Icon(
                      Zocial.youtube,
                      color: Color(0xffff0000),
                    )),
                IconButton(
                    onPressed: () {
                      print("Icon6 Has been pressed");
                      ur.launchurl(
                          'https://toxic-whitelgnd.github.io/Encryption-decryption-html/');
                    },
                    icon: const Icon(
                      MaterialCommunityIcons.web,
                      color: Colors.green,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row ReusableRowCard(Ltxt, Rtxt) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Expanded(
          child: Text(
            '$Ltxt :',
            style: kTextstyle,
          ),
        ),
        Expanded(
          child: Text(
            '$Rtxt',
            style: kTextStyleD,
          ),
        ),
      ],
    );
  }
}
