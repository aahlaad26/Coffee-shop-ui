import 'package:flutter/material.dart';

Widget summaryDisplay(String title, String subtitle) {
  return Row(
    children: [
      Text(
        title,
        style: TextStyle(
          color: Colors.brown,
          fontSize: 20,
        ),
      ),
      Spacer(),
      Text(
        subtitle,
        style: TextStyle(
          color: Colors.brown,
          fontSize: 20,
        ),
      )
    ],
  );
}

Widget submitButton(String title) {
  return Container(
    height: 60,
    width: 130,
    decoration: BoxDecoration(
      color: Colors.brown,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Center(
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
