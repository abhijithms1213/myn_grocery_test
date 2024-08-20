import 'package:flutter/material.dart';
import 'package:myn_grocery/Main/mainfunction.dart';
import 'package:myn_grocery/Presentation/(4)productbuypage/buy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: ProductBuyPage(),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Single Scrollable Example'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
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
//       ),
//     );
//   }
// }