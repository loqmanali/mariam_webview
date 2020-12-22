// import 'package:flutter/material.dart';
// import './web_view.dart';
// import 'dart:async';
//
// class Loading extends StatefulWidget {
//   @override
//   _LoadingState createState() => _LoadingState();
// }
//
// class _LoadingState extends State<Loading> {
//   @override
//   void initState() {
//     displaySplash();
//     super.initState();
//   }
//
//   displaySplash() {
//     Timer(Duration(seconds: 5), () async {
//       // if (EcommerceApp.auth.currentUser != null) {
//       Route route = MaterialPageRoute(builder: (_) => WebViewStore());
//       Navigator.pushReplacement(context, route);
//       // } else {
//       //   Route route = MaterialPageRoute(builder: (_) => AuthenticScreen());
//       //   Navigator.pushReplacement(context, route);
//       // }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Container(
//        width: 100,
//         height: 100,
//         color: Colors.black87,
//         child: Center(
//           child: Text('Loading ...', style: TextStyle(
//             color: Colors.white,
//             fontSize: 16.0,
//             fontWeight: FontWeight.bold,
//             letterSpacing: 1.3,
//           ),),
//         ),
//       ),
//     );
//   }
// }
