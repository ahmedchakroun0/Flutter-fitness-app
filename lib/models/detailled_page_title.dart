import 'package:flutter/material.dart';

class Detailledpagetitle extends StatelessWidget {
  const Detailledpagetitle({super.key, required this.title, this.subtitle});
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height * 0.1),
        Text(
          title.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontSize: size.width * 0.07,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: size.height * 0.05),
        if (subtitle != null)
          Container(
            padding: EdgeInsets.only(
              top: size.width * 0.1,
              left: size.width * 0.05,
              right: size.width * 0.05,
              bottom: size.width * 0.03,
            ),
            child: Center(
              child: Text(
                subtitle!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.05,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
