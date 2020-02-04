// import 'package:chewie/chewie.dart';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class ChewieListItem extends StatefulWidget {
//   final VideoPlayerController videoPlayerController;
//   final bool looping;
//   ChewieListItem({
//     @required this.videoPlayerController,
//     this.looping,
//     Key key,
//   }) : super(key : key);
//   @override
//   _ChewieListItemState createState() => _ChewieListItemState();
// }

// class _ChewieListItemState extends State<ChewieListItem> {
//   ChewieController _chewieController;
//   @override
//   void initState() {
//     super.initState();
//    _chewieController = ChewieController(
//      videoPlayerController: widget.videoPlayerController,
//      aspectRatio: 16 / 9,
//      autoInitialize: true,
//      looping: widget.looping,
//      errorBuilder: (context, errorMessage) {
//        return Center(
//          child: Text(
//            errorMessage,
//            style: TextStyle(color: Colors.white),
//          ),
//        );
//      },
//    );
//   }
//   Widget build(BuildContext context) {
//     return Padding(
//        padding: const EdgeInsets.all(8.0),
//        child: Chewie(
//          controller: _chewieController,
//        ),
//     );
//   }
// }  
// //   @override 
// //   void dispose() {
// //     super.dispose();
// //     widget.videoPlayerController.dispose();
// //     _chewieController.dispose();
// //   }

// // }
  

// //     return Scaffold(
// //       body: ListView(
// //         children: <Widget>[
// //           ChewieListItem(
// //             videoPlayerController : VideoPlayerController.asset(
// //                'videos/flutter_dart_v.mp4',
// //             ),
// //             looping: true,
// //           ),
// //           ChewieListItem(
// //             videoPlayerController : VideoPlayerController.asset(
// //                'videos/flutter_dart_v.mp4',
// //             ),
// //             looping: true,
// //           ),
// //         ],
// //       ),
// //     );
// //   }


// //   return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: Scaffold(
// //         body: new ListView(
// //             shrinkWrap: true,
// //             padding: const EdgeInsets.all(20.0),
// //             children: List.generate(choices.length, (index) {
// //                 return Center(
// //                   child: ChoiceCard(choice: choices[index], item: choices[index]),
// //                 );
// //             }
// //           )
// //         )
// //       )
// //     );
// //   }
// // }
// // class Choice {
// //   // final String icon;
// //   // final String date;
// //   // final String description;
// //   final String videoPlayerController;

// //   const Choice({this.videoPlayerController});
// // }


// // class ChoiceCard extends StatelessWidget {
// //   const ChoiceCard(
// //       {Key key, this.choice, this.onTap, @required this.item, this.selected: false}
// //     ) : super(key: key);
 
// //   final Choice choice;
// //   final VoidCallback onTap;
// //   final Choice item;
// //   final bool selected;

// //   // @override 
// //   // void dispose() {
// //   //   super.dispose();
// //   //   widget.videoPlayerController.dispose();
// //   //   _chewieController.dispose();
// //   // }

// //   //main

// //   @override
// //   Widget build(BuildContext context) {
// //     TextStyle textStyle = Theme.of(context).textTheme.display1;
// //     if (selected)
// //       textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
// //         return Card(
// //           color: Colors.white,
// //           child: Column(
// //               children: <Widget>[
// //                 new Container( 
// //                   padding: const EdgeInsets.all(8.0),
// //                   child: 
// //                   Image.network(
// //                     choice.videoPlayerController
// //                   )),
// //             ],
// //            crossAxisAlignment: CrossAxisAlignment.start,
// //           )
// //     );
// //   }
  
// // }