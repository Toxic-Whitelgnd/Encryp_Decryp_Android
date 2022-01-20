import 'package:encryp_decryp/constants/constant.dart';
import 'package:flutter/material.dart';

class history_ED extends StatefulWidget {

  const history_ED({Key? key}) : super(key: key);

  @override
  _history_EDState createState() => _history_EDState();

}

var now = DateTime(now.year,now.month,now.day);

class _history_EDState extends State<history_ED> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: const Text('History',
        style: TextStyle(
          color: Colors.indigo,
        ),
        ),
        centerTitle: true,
      ),
        body: ListView(
          padding: EdgeInsets.all(8.0),
          children: [
            Expanded(
              child: Row(
                children:  [
                   ReusableTxtCard(now),
                  ksizedboxwidth,
                   ReusableTxtCard('E or D'),
                  ksizedboxwidth,
                  ReusableTxtCard('Txt'),
                  kSizedboxDividerD

                ],
              ),
            )
          ],
        ),
    )
    );
  }

  Text ReusableTxtCard(var content) {
    return Text('$content',
              style: kTextstyle,);
  }
}


