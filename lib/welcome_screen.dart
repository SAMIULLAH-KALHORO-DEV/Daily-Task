import 'package:design2/home/home.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD1EDC0),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage("assets/icon.png")),
                ],
              ),
            ),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                "To simplify\nthe way you\nwork",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w800,
                    fontSize: 30),
              ),
            ),
            Image(height: 250, image: AssetImage("assets/pic2.png")),
            Text(
              "Controlling deliveries in\nreliable and no-hassle way.",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width - 50,
                  decoration: BoxDecoration(
                      color: Color(0xFF25282B),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Get free trail",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 22),
                    ),
                  )),
            ),
          ]),
    );
  }
}
