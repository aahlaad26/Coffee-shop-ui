import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: content(context),
        ),
      ),
    );
  }

  Widget content(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Image.asset('assets/logo.png'),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "CAFFEINATED",
          style: TextStyle(
            color: Colors.brown,
            fontSize: 45,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(
          height: 100,
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed("/menu"),
          child: Container(
            height: 60,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.brown,
            ),
            child: Center(
              child: Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 100,
        ),
      ],
    );
  }
}
