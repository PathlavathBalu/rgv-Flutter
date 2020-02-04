// import 'package:flutter/material.dart';

// class Images extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
    
      
//   List<Choice> choices = const <Choice>[
//     const Choice(
//       imglink:'http://images.catchnews.com/upload/2017/04/29/Ram_Gopal_Verma.jpg'
//     ),
//     const Choice(
//       imglink:'https://i1.wp.com/ritzmagazine.in/testing/wp-content/uploads/2015/11/Ram-Gopal-Varma.jpg?resize=550%2C458'
//     ),
//     const Choice(
//       imglink:'https://pbs.twimg.com/profile_images/1126560917/6570_138940771232_68958601232_3505842_539965_n_400x400.jpg'
//     ),
//     const Choice(
//       imglink:'http://images.mid-day.com/images/2017/may/15-ramgopal.jpg'
//     ),
//     const Choice(
//       imglink:'http://static.dnaindia.com/sites/default/files/2014/08/30/263809-ram-gopal-verma.jpg'
//     ),
//     const Choice(
//       imglink:'http://content.tupaki.com//twdata/2016/0316/news/RGV-s-Strange-Reason-On-Divorce-1458735846-1165.jpg'
//     ),
//     const Choice(
//       imglink:'https://m.timesofindia.com/photo/63039321.cms'
//     ),
//     const Choice(
//       imglink:'http://images.catchnews.com/upload/2017/04/29/Ram_Gopal_Verma.jpg'
//     ),
//     const Choice(
//       imglink:'https://i1.wp.com/ritzmagazine.in/testing/wp-content/uploads/2015/11/Ram-Gopal-Varma.jpg?resize=550%2C458'
//     ),
//     const Choice(
//       imglink:'https://pbs.twimg.com/profile_images/1126560917/6570_138940771232_68958601232_3505842_539965_n_400x400.jpg'
//     ),
//     const Choice(
//       imglink:'http://images.mid-day.com/images/2017/may/15-ramgopal.jpg'
//     ),
//     const Choice(
//       imglink:'http://static.dnaindia.com/sites/default/files/2014/08/30/263809-ram-gopal-verma.jpg'
//     ),
//     const Choice(
//       imglink:'http://content.tupaki.com//twdata/2016/0316/news/RGV-s-Strange-Reason-On-Divorce-1458735846-1165.jpg'
//     ),
//     const Choice(
//       imglink:'https://m.timesofindia.com/photo/63039321.cms'
//     ),
//   ];


//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: new ListView(
//             shrinkWrap: true,
//             padding: const EdgeInsets.all(20.0),
//             children: List.generate(choices.length, (index) {
//                 return Center(
//                   child: ChoiceCard(choice: choices[index], item: choices[index]),
//                 );
//             }
//           )
//         )
//       )
//     );
//   }
// }

// class Choice {
//   // final String icon;
//   // final String date;
//   // final String description;
//   final String imglink;

//   const Choice({this.imglink});
// }


// class ChoiceCard extends StatelessWidget {
//   const ChoiceCard(
//       {Key key, this.choice, this.onTap, @required this.item, this.selected: false}
//     ) : super(key: key);
 
//   final Choice choice;
//   final VoidCallback onTap;
//   final Choice item;
//   final bool selected;


//   @override
//   Widget build(BuildContext context) {
//     TextStyle textStyle = Theme.of(context).textTheme.display1;
//     if (selected)
//       textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
//         return Card(
//           color: Colors.white,
//           child: Column(
//               children: <Widget>[
//                 new Container( 
//                   padding: const EdgeInsets.all(8.0),
//                   child: 
//                   Image.network(
//                     choice.imglink
//                   )),
//             ],
//            crossAxisAlignment: CrossAxisAlignment.start,
//           )
//     );
//   }

// }

// import 'package:flutter_test/flutter_test.dart';
// import 'images.dart';
// void main() {
//   testWidgets('Example app smoke test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(Images());

//     expect(find.text('Flutter layout demo'), findsOneWidget);
//   });
// }

// import 'package:flutter/material.dart';
// import 'package:transparent_image/transparent_image.dart';
// //...
// //class _MyHomePageState extends State<MyHomePage> {
//   //...
//   Widget _buildGrid() {
//     return GridView.builder(
//       itemCount: 60,
//       gridDelegate:
//           SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: const EdgeInsets.all(3.0),
//           child: GestureDetector(
//             child: FadeInImage.memoryNetwork(
//                 placeholder: kTransparentImage,
//                 image: 'https://picsum.photos/id/$index/128'),
//             onTap: () {
//               _openImage(context, index);
//             },
            
//           ),
//         );
//       },
//     );
//   }
// //}
// _openImage(context, index) async {
//   showDialog(
//     context: context,
//     builder: (a) => AlertDialog(
//       title: Text("Look at this! Very Nice!"),
//       content: FadeInImage.memoryNetwork(
//           placeholder: kTransparentImage, 
//           image: 'https://picsum.photos/id/$index/512'),
//       actions: <Widget>[
//         FlatButton(
//             onPressed: () {
//               _dismissDialog(context);
//             },
//             child: Text('Close'))
//       ],
//     ),
//   );
// }
//  _dismissDialog(context) {
//     Navigator.pop(context);
//   }


import 'package:twitter_api/twitter_api.dart';


// Used for the decode
import 'dart:convert';

Future main() async {

  // Setting placeholder api keys
  String consumerApiKey = "ABC";
  String consumerApiSecret = "ABC";
  String accessToken = "ABC";
  String accessTokenSecret = "ABC";

  // Creating the twitterApi Object with the secret and public keys
  // These keys are generated from the twitter developer page
  // Dont share the keys with anyone
  final _twitterOauth = new twitterApi(
    consumerKey: consumerApiKey,
    consumerSecret: consumerApiSecret,
    token: accessToken,
    tokenSecret: accessTokenSecret
  );

  // Make the request to twitter
  Future twitterRequest = _twitterOauth.getTwitterRequest(
    // Http Method
    "GET", 
    // Endpoint you are trying to reach
    "statuses/user_timeline.json", 
    // The options for the request
    options: {
      "user_id": "19025957",
      "screen_name": "TTCnotices",
      "count": "20",
      "trim_user": "true",
      "tweet_mode": "extended", // Used to prevent truncating tweets
    },
  );

  // Wait for the future to finish
  var res = await twitterRequest;

  // Print off the response
  print(res.statusCode); 
  print(res.body);

  // Convert the string response into something more useable
  var tweets = json.decode(res.body);
  print(tweets);
}