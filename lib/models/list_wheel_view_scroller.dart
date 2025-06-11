import 'package:flutter/material.dart';

class ListWheelViewScroller extends StatelessWidget {
  final List<String> items;

  const ListWheelViewScroller({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListWheelScrollView(
      magnification: 1.3,
      useMagnifier: true,
      overAndUnderCenterOpacity: 0.29,
      itemExtent: 50,
      diameterRatio: 1.5,
      physics: const FixedExtentScrollPhysics(),
      controller: FixedExtentScrollController(initialItem: items.length ~/ 2),
      children: items.map((level) {
        return Text(
          level,
          style: TextStyle(color: Colors.yellow, fontSize: size.width * 0.05),
        );
      }).toList(),
    );
  }
}
