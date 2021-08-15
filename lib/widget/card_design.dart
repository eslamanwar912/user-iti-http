
import 'package:flutter/material.dart';

class CardDesign extends StatelessWidget {
String content;
CardDesign({this.content});
  @override
  Widget build(BuildContext context) {
    return Card(

      child: Container(
        height: 40,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(child: Text(content)),
            ],
          ),
        ),
      ),
    );
  }
}
