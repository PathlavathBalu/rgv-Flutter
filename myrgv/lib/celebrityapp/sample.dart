// import 'package:flutter/material.dart';

// class Images extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final title = 'Grid List';

    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: title,
    //   home: Scaffold(
    //     backgroundColor: Colors.grey[200],
    //     body: GridView.count(
    //       crossAxisCount: 1,
    //       children: List.generate(30, (index) {
    //         return Center(
    //           child: Padding(
    //             padding: const EdgeInsets.all(8.0),
    //              child: ClipRRect(
    //       borderRadius: BorderRadius.circular(10.0),         
    //             child: Image.asset(
    //         "images/R$index.jpg",
    //         fit: BoxFit.fill,
    //        height: 400,
    //         width:280,
    //       ),
    //           ),
    //           ),
    //         );
    //       }),
    //     ),
    //   ),
    // );
//   }
// }



// import 'package:flutter/material.dart';
// //import 'package:transparent_image/transparent_image.dart';

// class Images extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _buildGrid(),
//     );
//   }
//   // #docregion grid
//   Widget _buildGrid() {
//     return GridView.builder(
//       itemCount: 30,
//       gridDelegate:
//           SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: const EdgeInsets.all(3.0),
//           child: GestureDetector(
//             child: Image.asset(
//             "images/R$index.jpg",
//             fit: BoxFit.fill,
//             ),
//             onTap: () {
//               _openImage(context, index);
//             },
            
//           ),
//         );
//       },
//     );
//   }
//   _openImage(context, index) async {
//   showDialog(
//     context: context,
//     builder: (a) => AlertDialog(
//       title: Text("Look at this! Very Nice!"),
//       content:  Image.asset(
//             "images/R$index.jpg",
//             fit: BoxFit.fill,
//             ),
//       actions: <Widget>[
//         FlatButton(
//             onPressed: () {
//               _dismissDialog(context);
//             },
//             child: Text(''))
//       ],
//     ),
//   );
// }
//  _dismissDialog(context) {
//     Navigator.pop(context);
//   }
// }







// import 'package:flutter/material.dart';

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => new _HomeState();
// }

// class _HomeState extends State<Home> {
//   List<Container> daftarSuperhero = new List();

//   var karakter = [
//   {"nama": "rgv0", "gambar": "R0.jpg"},
//    {"nama": "rgv1", "gambar": "R1.jpg"},
//    {"nama": "rgv2", "gambar": "R2.jpg"},
//    {"nama": "rgv3", "gambar": "R3.jpg"},
//    {"nama": "rgv4", "gambar": "R4.jpg"},
//    {"nama": "rgv5", "gambar": "R5.jpg"},
//    {"nama": "rgv6", "gambar": "R6.jpg"},
//    {"nama": "rgv7", "gambar": "R7.jpg"},
//    {"nama": "rgv8", "gambar": "R8.jpg"},
//    {"nama": "rgv9", "gambar": "R9.jpg"},
//    {"nama": "rgv10", "gambar": "R10.jpg"},
//    {"nama": "rgv11", "gambar": "R11.jpg"},
//    {"nama": "rgv12", "gambar": "R12.jpg"},
//    {"nama": "rgv13", "gambar": "R13.jpg"},
//    {"nama": "rgv14", "gambar": "R14.jpg"},
//    {"nama": "rgv15", "gambar": "R15.jpg"},
//    {"nama": "rgv16", "gambar": "R16.jpg"},
//    {"nama": "rgv17", "gambar": "R17.jpg"},
//    {"nama": "rgv18", "gambar": "R18.jpg"},
//    {"nama": "rgv19", "gambar": "R19.jpg"},
//    {"nama": "rgv20", "gambar": "R20.jpg"},
//    {"nama": "rgv21", "gambar": "R21.jpg"},
//    {"nama": "rgv22", "gambar": "R22.jpg"},
//    {"nama": "rgv23", "gambar": "R23.jpg"},
//    {"nama": "rgv24", "gambar": "R24.jpg"},
//    {"nama": "rgv25", "gambar": "R25.jpg"},
//    {"nama": "rgv26", "gambar": "R26.jpg"},
//    {"nama": "rgv27", "gambar": "R27.jpg"},
//    {"nama": "rgv28", "gambar": "R28.jpg"}, 
//   {"nama": "rgv29", "gambar": "R9.jpg"},
  
//   ];

//   _buatlist() async {
//     for (var i = 0; i < karakter.length; i++) {
//       final karakternya = karakter[i];
//       final String gambar = karakternya["gambar"];

//       daftarSuperhero.add(new Container(
//                  padding: new EdgeInsets.all(0.0),
//           child: new Card(
//                 child: new Column(

                  
            
//             children: <Widget>[
                
//                 new Container(
              
//                     child: new InkWell(
//                       onTap: () =>
//                           Navigator.of(context).push(new MaterialPageRoute(
//                                 builder: (BuildContext context) => new Detail(
//                                       nama: karakternya['nama'],
//                                       gambar: gambar,
//                                     ),
//                               )),
//                       child: new Image.asset(
//                         "images/$gambar",
//                         height: 170,
//                        width: 160,
//                         fit: BoxFit.fill,
//                       ),
//                     ),
                  
//                 ),
//                 // new Padding(
//                 //   padding: new EdgeInsets.all(10.0),
//                 // ),
//                 // new Text(
//                 //   karakternya['nama'],
//                 //   style: new TextStyle(fontSize: 10.0),
//                 // )
//             ],
//           ),
//               )));
//     }
//   }

//   @override
//   void initState() {
//     _buatlist();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(     
//       body: new GridView.count(
//         crossAxisCount: 2,
//         children: daftarSuperhero,
//       ),
//     );
//   }
// }

// class Detail extends StatelessWidget {
//   Detail({this.nama, this.gambar});
//   final String nama;
//   final String gambar;

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: new ListView(
//         children: <Widget>[
//           new Container(
//               height: 600.0,
//               child: new Hero(
//                 tag: nama,
//                 child: new Material(
//                   child: new InkWell(
//                     child: new Image.asset(
//                       "images/$gambar",
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               )),
//           // new BagianNama(
//           //   nama: nama,
//           // ),
//         //  new BagianIcon(),
//          // new Keterangan(),
//         ],
//       ),
//          floatingActionButton: Padding(
//          padding: const EdgeInsets.only(top: 100),
//          child: FloatingActionButton(
//            child:Icon(Icons.arrow_back, color: Colors.white),
//            backgroundColor: Colors.transparent,     
      
      
//       onPressed: () {
        
//           Navigator.pop(context);
//       },
//     ),
//        ),
//     floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
//     );
//   }
// }

// class BagianNama extends StatelessWidget {
//   BagianNama({this.nama});
//   final String nama;

//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//       padding: new EdgeInsets.all(10.0),
//       child: new Row(
//         children: <Widget>[
//           new Expanded(
//             child: new Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 new Text(
//                   nama,
//                   style: new TextStyle(fontSize: 20.0, color: Colors.blue),
//                 ),
//                 new Text(
//                   "$nama\@gmail.com",
//                   style: new TextStyle(fontSize: 17.0, color: Colors.grey),
//                 ),
//               ],
//             ),
//           ),
//           // new Row(
//           //   children: <Widget>[
//           //     new Icon(
//           //       Icons.star,
//           //       size: 30.0,
//           //       color: Colors.red,
//           //     ),
//           //     new Text(
//           //       "12",
//           //       style: new TextStyle(fontSize: 18.0),
//           //     )
//           //   ],
//           // )
//         ],
//       ),
//     );
//   }
// }

// // class BagianIcon extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return new Container(
// //       padding: new EdgeInsets.all(10.0),
// //       child: new Row(
// //         children: <Widget>[
// //           new Iconteks(
// //             icon: Icons.call,
// //             teks: "Call",
// //           ),
// //           new Iconteks(
// //             icon: Icons.message,
// //             teks: "Message",
// //           ),
// //           new Iconteks(
// //             icon: Icons.photo,
// //             teks: "Photo",
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class Iconteks extends StatelessWidget {
// //   Iconteks({this.icon, this.teks});
// //   final IconData icon;
// //   final String teks;
// //   @override
// //   Widget build(BuildContext context) {
// //     return new Expanded(
// //       child: new Column(
// //         children: <Widget>[
// //           new Icon(
// //             icon,
// //             size: 50.0,
// //             color: Colors.blue,
// //           ),
// //           new Text(
// //             teks,
// //             style: new TextStyle(fontSize: 18.0, color: Colors.blue),
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class Keterangan extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return new Container(
// //       padding: new EdgeInsets.all(10.0),
// //       child: new Card(
// //         child: new Padding(
// //           padding: const EdgeInsets.all(10.0),
// //           child: new Text(
// //             "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
// //             style: new TextStyle(fontSize: 18.0),
// //             textAlign: TextAlign.justify,
// //           ),
// //         ),
      
// //       ),
// //     );
// //   }
// // }
