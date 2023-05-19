import 'package:flutter/material.dart';
import 'widgets/common_widget.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Latte",
          style: TextStyle(color: Colors.brown, fontSize: 30),
        ),
        backgroundColor: Colors.brown[50],
        toolbarHeight: 100,
        elevation: 0,
      ),
      body: content(context),
    );
  }

  Widget content(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.brown[50],
              child: Image.asset('assets/coffee_cup.png'),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Latte",
                        style: TextStyle(fontSize: 20, color: Colors.brown),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.remove),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              "1",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                          Icon(Icons.add)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    "Size",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.brown,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        child: Image.asset('assets/coffee_cup.png'),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.asset('assets/coffee_cup.png'),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    "Sugar",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "0%",
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "25%",
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "50%",
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "100%",
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 80),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed("/summary"),
              child: submitButton("Add to Cart"),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
