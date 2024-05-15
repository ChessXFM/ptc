import 'package:flutter/material.dart';
import 'package:ptcp/screens/get_started.dart';
import 'package:ptcp/screens/home.dart';
import 'package:ptcp/screens/pages/cart/accepted_order.dart';
import 'package:ptcp/screens/pages/cart/cart.dart';
import 'package:ptcp/screens/pages/explore/beverages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PTC',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const GetStartedScreen(),
      routes: {
        GetStartedScreen.routeName: (context) => const GetStartedScreen(),
        Home.routeName: (context) => const Home(),
        Beverages.routeName: (context) => const Beverages(),
        CartPage.routeName: (context) => const CartPage(),
        AcceptedOrder.routeName:(context) => const AcceptedOrder(),
      },
    );
  }
}
