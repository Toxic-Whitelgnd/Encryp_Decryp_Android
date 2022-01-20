import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget okbutton = TextButton(onPressed: (){
        //Navigator.of(context).pop();
    },
    child: Text('Ok'));

class alertBox {
  void txtMissing(){
    AlertDialog alert =  AlertDialog(
      title: Text('Text Error'),
      content: Text('Please check your TextField!!💜'),
      actions: [
        okbutton,
      ],
    );

  }
}