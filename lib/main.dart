import 'package:contacts_app/screens/conatcts_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: ContactsScreen.route,
     routes: {
       ContactsScreen.route:(_)=>ContactsScreen(),
     },
   );
  }
}

