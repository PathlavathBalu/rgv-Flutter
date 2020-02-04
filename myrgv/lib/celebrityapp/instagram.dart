// import 'package:flutter/material.dart';

// class Instagram extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverList(
//             delegate: SliverChildListDelegate(<Widget>[
//               Container(
//                 height: 100,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: List.generate(
//                     30,
//                     (int index) {
//                       return Container(
//                         width: 70,
//                         height: 50,
//                         margin: const EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           image: DecorationImage(
//                             fit: BoxFit.fill,
//                             image: AssetImage(
//                               "images/R$index.jpg",
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ),
//               Divider(
//                 height: 10,
//               )
//             ]),
//           ),
//           SliverList(
//             delegate: SliverChildListDelegate(
//               List.generate(
//                 30,
//                 (int index) {
//                   return Column(
//                     children: <Widget>[
//                       ListTile(
//                         leading: CircleAvatar(
//                           backgroundImage: AssetImage("images/TH-7-STAR-RGV.jpeg"),
//                         ),
//                         title: Text(
//                           "Ram Gopal Varma",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       Container(
//                          height: 400,
//                          width: 350,
//                         child: Image.asset(
//                           "images/R$index.jpg",
//                           fit: BoxFit.fill,
//                         ),
//                       )
//                     ],
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//           fixedColor: Colors.black,
//           type: BottomNavigationBarType.fixed,
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home,
//               ),
//               title: Text(""),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.search,
//               ),
//               title: Text(""),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.add_box,
//               ),
//               title: Text(""),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.favorite_border,
//               ),
//               title: Text(""),
//             ),
//             BottomNavigationBarItem(
//               icon: CircleAvatar(
//                 backgroundImage: AssetImage(
//                   "images/rgv_image.jpg",
//                 ),
//               ),
//               title: Text(""),
//             ),
//           ]),
//     );
//   }
// }







import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Instagram extends StatefulWidget {
 Instagram({Key key}) : super(key: key);
  final String title = 'Launch Url';
  @override
  _InstagramState createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  Future<Void> _launched;
  String phoneNumber = '';
  String _launchUrl = 'https://www.instagram.com/rgvzoomin/?hl=en';

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
