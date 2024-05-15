import 'package:flutter/material.dart';
import 'package:ptcp/screens/home.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});
  static const String routeName = '/GetStarted';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 300,
            ),
            Image.asset("assets/icons/logo.png"),
            const SizedBox(
              height: 20,
            ),
            const Text('Welcome',
                style: TextStyle(fontSize: 50, color: Colors.white)),
            const SizedBox(
              height: 2,
            ),
            const Text('to our store',
                style: TextStyle(fontSize: 50, color: Colors.white)),
            const SizedBox(
              height: 2,
            ),
            const Text('Get your groceries in as fast as one hour',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                )),
            const SizedBox(
              height: 30,
            ),
            Container(
                height: 60,
                width: (MediaQuery.of(context).size.width / 3) * 2,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(200)),
                child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.teal)),
                  onPressed: () {
                    // Navigator.of(context).pushReplacement(
                    //   MaterialPageRoute(
                    //     builder: (context) => const Home(),
                    //   ),
                    // );
                    Navigator.pushReplacementNamed(context, Home.routeName);
                  },
                  child: const Text('Get Started',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold)),
                )),
          ],
        ),
      ),
    );
  }
}
