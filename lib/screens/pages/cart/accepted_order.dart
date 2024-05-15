import 'package:flutter/material.dart';

import '../../home.dart';

class AcceptedOrder extends StatelessWidget {
  static const String routeName = '/AcceptedOrder';
  const AcceptedOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(padding: EdgeInsets.only(left: 25,right: 25,top: 50,bottom: 40),
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(color: Colors.white.withOpacity(0.2)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/icons/Group 6872.png"),
          const  SizedBox(height: 50,),
            const Text(
              "Your Order has been\n           accepted",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
           
           const Text(
              "Your items has been placed and is on",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          const  Text(
              "its way to being processed",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            const SizedBox(height: 60,),
          InkWell(
            child: Container(
                          height: 70,
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          decoration: BoxDecoration(
                              color: Colors.teal.shade300,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: const Center(
                              child: Text(
                            'Track Order',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          )),
                        ),
          ),
            InkWell(onTap: (){Navigator.pushReplacementNamed(context, Home.routeName);},
            child: Container(
                          height: 70,
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.0001),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: const Center(
                              child: Text(
                            'Back to home',
                            style: TextStyle(fontSize: 24, color: Colors.black),
                          )),
                        ),
          ),
          ],
        ),
      ),
    );
  }
}
