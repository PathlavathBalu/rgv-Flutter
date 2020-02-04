// import 'package:flutter/material.dart';
// import 'package:myapp/widgets/Hyperlink.dart';

// class Facebook extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//        debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: Hyperlink('https://www.facebook.com/RamGopalVarmaRGV-294591953963096/', 'Face feeds!'),
//         ),
//       ),
//     );
//   }
// }
 

 import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Facebook extends StatefulWidget {
 Facebook({Key key}) : super(key: key);
  final String title = 'Launch Url';
  @override
  _FacebookState createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  Future<Void> _launched;
  String phoneNumber = '';
  String _launchUrl = 'https://www.facebook.com/RGV/?epa=SEARCH_BOX';

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInApp(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: const Text('Launch In Browser'),
              onPressed: () {
                setState(() {
                  _launched = _launchInBrowser(_launchUrl);
                });               
              },
            ),
            RaisedButton(
              child: const Text('Launch In App'),
              onPressed: () {
                setState(() {
               _launched = _launchInApp(_launchUrl);                  
                });
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            FutureBuilder(
              future: _launched,
              builder: (BuildContext contex, AsyncSnapshot<void> snapshot) {
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return Container();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
