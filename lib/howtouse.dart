import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'constants/constant.dart';

class connnet extends StatelessWidget {
  const connnet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: const Icon(
              Icons.question_answer,
              color: Color(0xffeb6009),
              size: 70.0,
            ),
            nextScreen: howto_use(),
            splashTransition: SplashTransition.slideTransition,
            backgroundColor: Colors.black,
        )
    );
  }
}

class howto_use extends StatelessWidget {
  const howto_use({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text("How to use? 🤔",
        style: TextStyle(
          color: Colors.green,
          fontSize: 25.0,
          letterSpacing: 2.0,
          fontFamily: 'Teko'
        ),
        ),
      ),
      body: Container(

        decoration: const BoxDecoration(
            color: Color(0xff19181a),
          image: DecorationImage(
            image:AssetImage('images/qm1.jpg'),
            fit: BoxFit.cover

          )
        ),
        padding: EdgeInsets.all(12.0),
        child: Column(
          children:  [
            ReusableTextCard('1. The Motive of this app is used to Encrypt your Passwords or any other text.'),
            kSizedbox,
            ReusableTextCard('2. Click on Encryption Enter your  text what you want to convert.'),
            kSizedbox,
            ReusableTextCard('3. Enter a key between (1-27).Note: Remember the key for further use.'),
            kSizedbox,
            ReusableTextCard('4. Click on Generate button to get your corresponding Encrypted Text.'),
            kSizedbox,
            ReusableTextCard('5. To Decrypt the Generated text we use Decryption.'),
            kSizedbox,
            ReusableTextCard('6. Click on Decryption enter the Encrypted text and enter the corresponding key to get the Original Text back!'),
            kSizedbox,
            ReusableTextCard('   Thank you!!  🤗😘'),
            ReusableTextCard('--------------------------------------------------')
            

          ],
        ),
      ),

    );
  }

  Text ReusableTextCard(txt) {
    return Text('$txt',
          style:kTextstyle ,
        );
  }


}

