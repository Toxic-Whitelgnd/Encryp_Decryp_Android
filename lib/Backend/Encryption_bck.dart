
//creating a class to to the backend part
String Encryptedtxt = '';

class EncryptionConverter{
  String Econverter(String ETxt,String EK){

    //converting the key to a int
    int key;
    key = int.parse(EK);
    print("int has been converted:$key");

    int charcode;
    int convert;


    String result = '';
    String enc = '';

    for(int i = 0; i <ETxt.length; i++){

      charcode = ETxt.codeUnitAt(i);
      print(' ASCII value of ${ETxt[i]} is ${ETxt.codeUnitAt(i)}');


      // print(key + a );
      //
      // keys = key + a;
      if(charcode == 32){
        print("Space has occured$charcode");
        enc+=' ';
      }
      //this is for lower cases
      else if(charcode >='a'.codeUnitAt(0) && charcode <='z'.codeUnitAt(0)){
        print("Entered into lowercases alphabet:$charcode");
        //chr((ord(txt)+ key - 97) % 26 + 97) here ord(txt) is ASCII Values
        convert = (charcode+key-97)%26 + 97;
        print("Converted Values is:$convert");
        result = String.fromCharCode(convert);
        print("The result of our convert alphabet is:$result");
        enc += result;
      }
      //this is for upper cases
      else if(charcode >='A'.codeUnitAt(0) && charcode <='Z'.codeUnitAt(0)){
        print("Entered into Uppercases alphabet:$charcode");
        //chr((ord(txt)+ key - 65) % 26 + 65) here ord(txt) is ASCII Values
        convert = (charcode+key-65)%26 + 65;
        print("Converted Values is:$convert");
        result = String.fromCharCode(convert);
        print("The result of our convert alphabet is:$result");
        enc += result;
      }
      else if(charcode >='0'.codeUnitAt(0) && charcode <='9'.codeUnitAt(0)){
        print("Entered into Numbers alphabet:$charcode");
        //chr((ord(txt)+ key - 65) % 26 + 65) here ord(txt) is ASCII Values
        convert = (charcode+key-48)%10 + 48;
        print("Converted Values is:$convert");
        result = String.fromCharCode(convert);
        print("The result of our convert alphabet is:$result");
        enc += result;
      }
      else if(charcode >='!'.codeUnitAt(0) && charcode <='/'.codeUnitAt(0)){
        print("Entered into special character 1 alphabet:$charcode");
        //chr((ord(txt)+ key - 33) % 15 + 33) here ord(txt) is ASCII Values
        convert = (charcode+key-33)%15 + 33;
        print("Converted Values is:$convert");
        result = String.fromCharCode(convert);
        print("The result of our convert alphabet is:$result");
        enc += result;
      }
      else if(charcode >=':'.codeUnitAt(0) && charcode <='@'.codeUnitAt(0)){
        print("Entered into special character 2 alphabet:$charcode");
        //chr((ord(txt)+ key - 58) % 7 + 58) here ord(txt) is ASCII Values
        convert = (charcode+key-58)%7 + 58;
        print("Converted Values is:$convert");
        result = String.fromCharCode(convert);
        print("The result of our convert alphabet is:$result");
        enc += result;
      }
      else if(charcode >='['.codeUnitAt(0) && charcode <='`'.codeUnitAt(0)){
        print("Entered into special character 2 alphabet:$charcode");
        //chr((ord(txt)+ key - 58) % 7 + 58) here ord(txt) is ASCII Values
        convert = (charcode+key-91)%6 + 91;
        print("Converted Values is:$convert");
        result = String.fromCharCode(convert);
        print("The result of our convert alphabet is:$result");
        enc += result;
      }


      print("the encrypted txt :$enc");

    }//end of for loop
  return enc;

  }//end of fuc

}//end of class


