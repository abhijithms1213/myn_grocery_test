
// import 'package:flutter/material.dart';

// class ScreenSupermarket extends StatelessWidget {
//   const ScreenSupermarket({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: SafeArea(
//         child: CustomScrollView(
//           slivers: [
//              SliverAppBar(
//               backgroundColor: Colors.black38,
//               pinned: false,
//               expandedHeight: 100,
//               collapsedHeight: 150,
//               flexibleSpace: FlexibleSpaceBar(
//                 //Top Portions
//                 background:  Column(
//                   children: [
//                     Container(color: Colors.black,height: 70,),
//                     const Text("hi"),
//                   ],
//                 ),
//               ),
//               //Center
//               // bottom: PreferredSize(
//               //   preferredSize: Size.fromHeight(0),
//               //   child: WidgetMid(),
//               // ),
//             ),
//             //BottomSheet
//             SliverToBoxAdapter(
//               child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//              Container(
//       height: 32,
//       width: double.infinity,
//       decoration: const BoxDecoration(
//           color: Color.fromARGB(255, 255, 255, 255),
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(32),
//               topRight: Radius.circular(32))),
//       alignment: Alignment.center,
//       //Center scrolling
//       child: Container(
//         width: 40,
//         height: 5,
       
//         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.black,),
//       ),
//     ),
//             const Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Text(
//                 'Header',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//             ),
//             ListView.builder(
//               physics: const NeverScrollableScrollPhysics(), // Disable the scroll for ListView
//               shrinkWrap: true, // Makes ListView take only the necessary space
//               itemCount: 20,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text('Item $index'),
//                 );
//               },
//             ),
//             const Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Text(
//                 'Footer',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//             ),
//             ListView.builder(
//               physics: const NeverScrollableScrollPhysics(), // Disable the scroll for ListView
//               shrinkWrap: true, // Makes ListView take only the necessary space
//               itemCount: 20,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text('Item $index'),
//                 );
//               },
//             ),
//           ],
//         ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }