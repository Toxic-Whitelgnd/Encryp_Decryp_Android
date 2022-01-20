
String Decryptedtxt = '';

class DecryptionConverter{
  String Dconverter(String DTxt,String DK){
    int key;
    key = int.parse(DK);
    print("int has been converted:$key");
    int charcode;
    int convert;

    String result = '';
    String dec = '';

    for(int i = 0;i<DTxt.length;i++){

      charcode = DTxt.codeUnitAt(i);
      print(' ASCII value of ${DTxt[i]} is ${DTxt.codeUnitAt(i)}');

      if(charcode == 32){
        dec += ' ';
      }
      else if(charcode >='a'.codeUnitAt(0) && charcode <='z'.codeUnitAt(0)){
        convert = (charcode-key-97)%26 + 97;
        print("Converted Values is:$convert");
        result = String.fromCharCode(convert);
        print("The result of our convert alphabet is:$result");
        dec += result;
      }
      else if(charcode >='A'.codeUnitAt(0) && charcode <='Z'.codeUnitAt(0)){
        print("Entered into Uppercases alphabet:$charcode");
        //chr((ord(txt)+ key - 65) % 26 + 65) here ord(txt) is ASCII Values
        convert = (charcode-key-65)%26 + 65;
        print("Converted Values is:$convert");
        result = String.fromCharCode(convert);
        print("The result of our convert alphabet is:$result");
        dec += result;
      }
      else if(charcode >='0'.codeUnitAt(0) && charcode <='9'.codeUnitAt(0)){
        print("Entered into Numbers alphabet:$charcode");
        //chr((ord(txt)+ key - 65) % 26 + 65) here ord(txt) is ASCII Values
        convert = (charcode-key-48)%10 + 48;
        print("Converted Values is:$convert");
        result = String.fromCharCode(convert);
        print("The result of our convert alphabet is:$result");
        dec += result;
      }
      else if(charcode >='!'.codeUnitAt(0) && charcode <='/'.codeUnitAt(0)){
        print("Entered into special character 1 alphabet:$charcode");
        //chr((ord(txt)+ key - 33) % 15 + 33) here ord(txt) is ASCII Values
        convert = (charcode-key-33)%15 + 33;
        print("Converted Values is:$convert");
        result = String.fromCharCode(convert);
        print("The result of our convert alphabet is:$result");
        dec += result;
      }
      else if(charcode >=':'.codeUnitAt(0) && charcode <='@'.codeUnitAt(0)){
        print("Entered into special character 2 alphabet:$charcode");
        //chr((ord(txt)+ key - 58) % 7 + 58) here ord(txt) is ASCII Values
        convert = (charcode-key-58)%7 + 58;
        print("Converted Values is:$convert");
        result = String.fromCharCode(convert);
        print("The result of our convert alphabet is:$result");
        dec += result;
      }
      else if(charcode >='['.codeUnitAt(0) && charcode <='`'.codeUnitAt(0)){
        print("Entered into special character 2 alphabet:$charcode");
        //chr((ord(txt)+ key - 58) % 7 + 58) here ord(txt) is ASCII Values
        convert = (charcode-key-91)%6 + 91;
        print("Converted Values is:$convert");
        result = String.fromCharCode(convert);
        print("The result of our convert alphabet is:$result");
        dec += result;
      }

      print('$dec');
    }
   return dec;
  }
}
// {
//
//   String name = 'cdb34/:AC';
//   int key = 2;
//
//   int charcode;
//   int convert;
//
//   String result = '';
//   String dec = '';
//
//   for(int i = 0;i<name.length;i++){
//
//     charcode = name.codeUnitAt(i);
//     print(' ASCII value of ${name[i]} is ${name.codeUnitAt(i)}');
//
//     if(charcode == 32){
//       dec += ' ';
//     }
//     else if(charcode >='a'.codeUnitAt(0) && charcode <='z'.codeUnitAt(0)){
//       convert = (charcode-key-97)%26 + 97;
//       print("Converted Values is:$convert");
//       result = String.fromCharCode(convert);
//       print("The result of our convert alphabet is:$result");
//       dec += result;
//     }
//     else if(charcode >='A'.codeUnitAt(0) && charcode <='Z'.codeUnitAt(0)){
//       print("Entered into Uppercases alphabet:$charcode");
//       //chr((ord(txt)+ key - 65) % 26 + 65) here ord(txt) is ASCII Values
//       convert = (charcode-key-65)%26 + 65;
//       print("Converted Values is:$convert");
//       result = String.fromCharCode(convert);
//       print("The result of our convert alphabet is:$result");
//       dec += result;
//     }
//     else if(charcode >='0'.codeUnitAt(0) && charcode <='9'.codeUnitAt(0)){
//       print("Entered into Numbers alphabet:$charcode");
//       //chr((ord(txt)+ key - 65) % 26 + 65) here ord(txt) is ASCII Values
//       convert = (charcode-key-48)%10 + 48;
//       print("Converted Values is:$convert");
//       result = String.fromCharCode(convert);
//       print("The result of our convert alphabet is:$result");
//       dec += result;
//     }
//     else if(charcode >='!'.codeUnitAt(0) && charcode <='/'.codeUnitAt(0)){
//       print("Entered into special character 1 alphabet:$charcode");
//       //chr((ord(txt)+ key - 33) % 15 + 33) here ord(txt) is ASCII Values
//       convert = (charcode-key-33)%15 + 33;
//       print("Converted Values is:$convert");
//       result = String.fromCharCode(convert);
//       print("The result of our convert alphabet is:$result");
//       dec += result;
//     }
//     else if(charcode >=':'.codeUnitAt(0) && charcode <='@'.codeUnitAt(0)){
//       print("Entered into special character 2 alphabet:$charcode");
//       //chr((ord(txt)+ key - 58) % 7 + 58) here ord(txt) is ASCII Values
//       convert = (charcode-key-58)%7 + 58;
//       print("Converted Values is:$convert");
//       result = String.fromCharCode(convert);
//       print("The result of our convert alphabet is:$result");
//       dec += result;
//     }
//     else if(charcode >='['.codeUnitAt(0) && charcode <='`'.codeUnitAt(0)){
//       print("Entered into special character 2 alphabet:$charcode");
//       //chr((ord(txt)+ key - 58) % 7 + 58) here ord(txt) is ASCII Values
//       convert = (charcode-key-91)%6 + 91;
//       print("Converted Values is:$convert");
//       result = String.fromCharCode(convert);
//       print("The result of our convert alphabet is:$result");
//       dec += result;
//     }
//
//   print('$dec');
//   }
//
//
// }