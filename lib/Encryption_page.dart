import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Backend/Encryption_bck.dart';


class Encryp_splash extends StatelessWidget {
  const Encryp_splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
          duration: 500,
          splash: const Icon(
            //TODO: need to add custom fonts..
            Icons.lock,
            color: Colors.red,
            size: 100.0,
          ),
          nextScreen: Encryp(),
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Colors.black,
        ));

  }
}





class Encryp extends StatefulWidget {
  const Encryp({Key? key}) : super(key: key);

  @override
  _EncrypState createState() => _EncrypState();
}

bool txtbox = false;

String Encryptxt = '';
var Encrypkey;
String Encryptedtxt = '';

final txt = TextEditingController();
final Etxt = TextEditingController();
final Ekey = TextEditingController();

final _formKey = GlobalKey<FormState>();

void cleartext() {
  txt.clear();
  Etxt.clear();
  Ekey.clear();
}


class _EncrypState extends State<Encryp> {




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text(
            'ENCRYPTION',
            style: TextStyle(
              color: Color(0xfffc0000),
              letterSpacing: 3.0,
              fontFamily: 'Teko',
              fontSize: 26.0
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.blue,
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
                  Encryptxt = value;
                },
                controller: Etxt,
                validator:(text) {
                    if (text == null || text.isEmpty) {
                    return 'Text is empty';
                    }
                  return null;
                },
                style: const TextStyle(
                  color: Color(0xffed0000),
                ),
                decoration: InputDecoration(
                    labelText: 'Enter a TexT',
                    fillColor: Colors.black,
                    filled: true,
                    labelStyle: const TextStyle(color: Color(0xfffc0000)),
                    focusColor: Color(0xfffc0000),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          style: BorderStyle.solid,
                          width: 4.0,
                          color: Colors.blue,
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
              const SizedBox(
                height: 40.0,
              ),
              TextFormField(
                onChanged: (value) {
                  print("the value of Key:$value");
                  Encrypkey = value;
                },
                controller: Ekey,
                keyboardType: TextInputType.number, //check this boi
                style: const TextStyle(
                  color: Color(0xffed0000),
                ),
                decoration: InputDecoration(
                    labelText: 'Enter a KeY',
                    hintText: 'Enter a KeY between 1 - 27',
                    hintStyle: const TextStyle(
                      color: Colors.blue,
                    ),
                    fillColor: Colors.black,
                    filled: true,
                    labelStyle: const TextStyle(color: Color(0xfffc0000)),
                    focusColor: Color(0xfffc0000),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          style: BorderStyle.solid,
                          width: 4.0,
                          color: Colors.blue,
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
                          color: Color(0xffed0509),
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
                          Encryptedtxt = '';

                          //to check the input field
                          String txt1 = Etxt.text;
                          String txt2 = Ekey.text;

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

                            EncryptionConverter e1 = EncryptionConverter();

                            txtbox = true;

                            txt.text = e1.Econverter(Encryptxt, Encrypkey);
                            Encryptedtxt = txt.text;
                            print("Encrypted:$Encryptedtxt");
                            //we can create a function history and we can pass our results

                            Encryptedtxt = ' ';
                            Encryptxt = ' ';
                            Encrypkey = ' ';

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
                            color: Color(0xfffc0000),
                            fontSize: 16.0,
                            letterSpacing: 2.0,
                            fontFamily: 'Teko',
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
                          color: Color(0xffed0509),
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
                          print("Clicked on Clear button!!");
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
                            color: Color(0xfffc0000),
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
                    color: Colors.red,
                    thickness: 4.0,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  '<-ENCRYPTED TEXT->',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'BebasNeue',
                    letterSpacing: 5.0,
                    wordSpacing: 10.0,
                    color: Colors.red,
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
               // enabled: txtbox,
                controller: txt,
                style: const TextStyle(
                  color: Color(0xffed0000),
                ),
                decoration: InputDecoration(
                    labelText: 'Encrypted Text',
                    fillColor: Colors.black,
                    filled: true,
                    labelStyle: const TextStyle(color: Color(0xfffc0000)),
                    focusColor: Colors.blue,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          style: BorderStyle.solid,
                          width: 4.0,
                          color: Colors.blue,
                        )),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        style: BorderStyle.solid,
                        width: 4.0,
                        color: Colors.blue,
                      ),
                    )),
              ),
              //TODO:NEED TO CREATE A Back button with stack concept a circle shape and a icon with back  if required
            ],
          ),
        ),
      );
  }
}
