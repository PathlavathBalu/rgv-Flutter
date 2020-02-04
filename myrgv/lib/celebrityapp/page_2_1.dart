// //import 'package:chewie/chewie.dart';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
// import './page_2.dart';

// class Videos extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView(
//       children: <Widget>[
//         Container(
//            child: ClipRRect(
//              borderRadius: BorderRadius.circular(40.0),
//           //margin: EdgeInsets.fromLTRB(40.0, 0, 40.0, 40.0),
//           child: ChewieListItem(
//               videoPlayerController: VideoPlayerController.asset(
//                   'videos/Kamma_Rajyam_Lo_Kadapa_Reddlu_TRAILER.mp4'
//                   ),
//               looping: true),
//            ),
//         ),
//         Container(
//            child: ClipRRect(
//              borderRadius: BorderRadius.circular(40.0),
//           //margin: EdgeInsets.fromLTRB(40.0, 0, 40.0, 40.0),
//           child: ChewieListItem(
//               videoPlayerController: VideoPlayerController.asset(
//                   'videos/Kamma_Rajyam_Lo_Kadapa_Reddlu_TRAILER.mp4'),
//               looping: true),
//            ),
//         ),
//         Container(
//            child: ClipRRect(
//              borderRadius: BorderRadius.circular(40.0),
//           //margin: EdgeInsets.fromLTRB(40.0, 0, 40.0, 40.0),
//           child: ChewieListItem(
//               videoPlayerController: VideoPlayerController.asset(
//                   'videos/Kamma_Rajyam_Lo_Kadapa_Reddlu_TRAILER.mp4'),
//               looping: true),
//            ),
//         ),
//         Container(
//            child: ClipRRect(
//              borderRadius: BorderRadius.circular(40.0),
//           //margin: EdgeInsets.fromLTRB(40.0, 0, 40.0, 40.0),
//           child: ChewieListItem(
//               videoPlayerController: VideoPlayerController.asset(
//                   'videos/Kamma_Rajyam_Lo_Kadapa_Reddlu_TRAILER.mp4'),
//               looping: true),
//            ),
//         ),
//         Container(
//            child: ClipRRect(
//              borderRadius: BorderRadius.circular(40.0),
//          // margin: EdgeInsets.fromLTRB(40.0, 0, 40.0, 40.0),
//           child: ChewieListItem(
//             videoPlayerController: VideoPlayerController.asset(
//                 'videos/Kamma_Rajyam_Lo_Kadapa_Reddlu_TRAILER.mp4'),
//           ),
//            ),
//         ),
//         Container(
//            child: ClipRRect(
//              borderRadius: BorderRadius.circular(40.0),
//           //margin: EdgeInsets.fromLTRB(40.0, 0, 40.0, 40.0),
//           child: ChewieListItem(
//             videoPlayerController: VideoPlayerController.asset(
//                 'videos/Kamma_Rajyam_Lo_Kadapa_Reddlu_TRAILER.mp4'),
//           ),
//            ),
//         ),
        
//       ],
//     ));
//   }
// }


import 'package:flutter/material.dart';
//import 'package:flutter_youtube_api/screens/home_screen.dart';
import 'package:myapp/screens/home_screen.dart';
class Videos extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter YouTube API',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}