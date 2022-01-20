import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Backend/Decryption_bck.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class Decryp_splash extends StatelessWidget {
  const Decryp_splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
          duration: 500,
          splash: const Icon(
            //TODO: need to add custom fonts..
            Icons.lock_open_sharp,
            color: Colors.blue,
            size: 100.0,
          ),
          nextScreen: Decryp(),
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Colors.black,
        ));
  }
}


class Decryp extends StatefulWidget {
  const Decryp({Key? key}) : super(key: key);

  @override
  _DecrypState createState() => _DecrypState();
}

bool txtbox = false;

String Decryptxt = '';
var Decrypkey;
String Decryptedtxt = '';

final txt = TextEditingController();
final Dtxt = TextEditingController();
final Dkey = TextEditingController();

final _formKey = GlobalKey<FormState>();

void cleartext() {
  txt.clear();
  Dtxt.clear();
  Dkey.clear();
}


class _DecrypState extends State<Decryp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'DECRYPTION',
            style: TextStyle(
              color: Color(0xff00adf7),
              fontSize: 27.0,
              letterSpacing: 3.0,
              fontFamily: 'Teko',

            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/encryption_back.jpg'),
                fit: BoxFit.fitHeight,
              )),
          child: ListView(
            children: [
              const SizedBox(
                height: 40.0,
              ),
              TextFormField(
                onChanged: (value) {
                  print("the value of text:$value");
                  Decryptxt = value;

                },
                controller: Dtxt,
                validator:(text) {
                  if (text == null || text.isEmpty) {
                    return 'Text is empty';
                  }
                  return null;
                },
                style: const TextStyle(
                  color: Color(0xff00adf7),
                ),
                decoration: InputDecoration(
                    labelText: 'Enter a TexT',
                    fillColor: Colors.black,
                    filled: true,
                    labelStyle: const TextStyle(color: Color(0xff00adf7)),
                    focusColor: Color(0xfffc0000),  //fc0000
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          style: BorderStyle.solid,
                          width: 4.0,
                          color: Color(0xfffc0000),
                        )),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        style: BorderStyle.solid,
                        width: 4.0,
                        color: Color(0xff00adf7),
                      ),
                    )),
              ),
              const SizedBox(
                height: 40.0,
              ),
              TextFormField(
                onChanged: (value) {
                  print("the value of Key:$value");
                  Decrypkey = value;

                },
                controller: Dkey,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  color: Color(0xff00adf7),
                ),
                decoration: InputDecoration(
                    labelText: 'Enter a KeY',
                    hintText: 'Enter a KeY between 1 - 27',
                    hintStyle: const TextStyle(
                      color: Colors.blue,
                    ),
                    fillColor: Colors.black,
                    filled: true,
                    labelStyle: const TextStyle(color: Color(0xff00adf7)),
                    focusColor: Color(0xfffc0000),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          style: BorderStyle.solid,
                          width: 4.0,
                          color: Color(0xfffc0000),
                        )),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        style: BorderStyle.solid,
                        width: 4.0,
                        color: Color(0xff00adf7),
                      ),
                    )),
              ),
              const SizedBox(
                height: 30.0,
                width: 40.0,
              ),
              //adding new two buttons i.e generate and key..
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 30.0,
                    width: 131.0,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff16c6cc),
                          blurRadius: 6.0, //default value is 5.0
                          spreadRadius: 6.0, //default value is 2.0
                        )
                      ],
                    ),
                    child: RaisedButton.icon(
                        color: Colors.black,
                        hoverColor: Colors.green,
                        highlightColor: Colors.green,
                        onPressed: () {
                          print("Clicked on generated button!!");
                          Decryptedtxt = '';

                          String txt1 = Dtxt.text;
                          String txt2 = Dkey.text;

                          if(txt1 == '' || txt2 == ''){
                            print("error");
                            Widget okbutton = TextButton(onPressed: (){
                              Navigator.of(context).pop();
                            },
                                child: Text('Ok'));

                            AlertDialog alert =  AlertDialog(
                              title: const Text('Text or Key Missing'),
                              content: const Text('Please check your TextField or KeyField!!💜'),
                              actions: [
                                okbutton,
                              ],
                            );

                            showDialog(context: context, builder: (BuildContext context){
                              return alert;
                            });


                          }//end of if

                          else{
                            print("succesful");

                            DecryptionConverter d1 = DecryptionConverter();

                            txtbox = true;

                            txt.text = d1.Dconverter(Decryptxt, Decrypkey);
                            Decryptedtxt = txt.text;
                            print("Encrypted:$Decryptedtxt");
                            //we can create a function history and we can pass our results

                            Decryptedtxt = ' ';
                            Decryptxt = ' ';
                            Decrypkey = ' ';

                          }//end of else

                        },
                        icon: const Icon(
                          Icons.settings,
                          size: 25.0,
                          color: Colors.blue,
                        ),
                        label: const Text(
                          'Generate',
                          style: TextStyle(
                            color: Color(0xff00adf7),
                            fontSize: 16.0,
                            fontFamily: 'Teko',
                            letterSpacing: 2.0

                          ),
                        )),
                  ),
                  const SizedBox(
                    width: 40.0,
                  ),
                  //adding clear button
                  Container(
                    height: 30.0,
                    width: 131.0,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff16c6cc),
                          blurRadius: 6.0, //default value is 5.0
                          spreadRadius: 6.0, //default value is 2.0
                        )
                      ],
                    ),
                    child: RaisedButton.icon(
                        color: Colors.black,
                        hoverColor: Colors.green,
                        highlightColor: Colors.green,
                        onPressed: () {
                          //TODO:Need to get the text values and keys
                          print("Clicked on generated button!!");
                          cleartext();
                        },
                        icon: const Icon(
                          Icons.wifi_protected_setup,
                          size: 25.0,
                          color: Colors.blue,
                        ),
                        label: const Text(
                          'Clear',
                          style: TextStyle(
                            color: Color(0xff00adf7),
                            fontSize: 16.0,
                            fontFamily: 'Teko',
                            letterSpacing: 3.0,
                          ),
                        )),
                  ),
                ],
              ),
              const Center(
                child: SizedBox(
                  height: 70.0,
                  width: 300.0,
                  child: Divider(
                    color: Colors.lightBlue,
                    thickness: 4.0,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  '<-DECRYPTED TEXT->',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'BebasNeue',
                    letterSpacing: 5.0,
                    wordSpacing: 10.0,
                    color: Color(0xff00adf7),
                    backgroundColor: Colors.black,
                    decoration: TextDecoration.overline,
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              //TODO:Need to add encrypted textbox to print the output
              TextFormField(
                onChanged: (value) {
                  print("the value of text:$value");
                },
                controller: txt,
                style: const TextStyle(
                  color: Color(0xff00adf7),
                ),
                decoration: InputDecoration(
                    labelText: 'Decrypted Text',
                    fillColor: Colors.black,
                    filled: true,
                    labelStyle: const TextStyle(color: Color(0xff00adf7)),
                    focusColor: Color(0xfffc0000),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          style: BorderStyle.solid,
                          width: 4.0,
                          color: Color(0xfffc0000),
                        )),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        style: BorderStyle.solid,
                        width: 4.0,
                        color: Color(0xfffc0000),
                      ),
                    )),
              ),
              //TODO:NEED TO CREATE A Back button with stack concept a circle shape and a icon with back  if required

            ],
          ),
        ),
      ),
    );
  }
}

