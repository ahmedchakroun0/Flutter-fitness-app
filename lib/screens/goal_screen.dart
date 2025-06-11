import 'package:fitness_app/models/detailled_page_button.dart';
import 'package:fitness_app/models/detailled_page_title.dart';
import 'package:fitness_app/models/list_wheel_view_scroller.dart';
import 'package:flutter/material.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({super.key});

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<String> items = [];
    items.add('Lose weight');
    items.add('Gain weight');
    items.add('Maintain weight');
    items.add('Improve fitness');
    items.add('Build muscle');
    items.add('Increase endurance');
    items.add('Improve flexibility');
    items.add('Enhance overall health');

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.only(
          top: size.width * 0.1,
          left: size.width * 0.05,
          right: size.width * 0.05,
          bottom: size.width * 0.03,
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Detailledpagetitle(title: "What is your goal ?"),
            SizedBox(height: size.height * 0.055),

            SizedBox(
              height: size.height * 0.5,
              child: ListWheelViewScroller(items: items),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Detailledpagebutton(
              text: "Next",
              onTap: () {
                Navigator.pushNamed(context, "/level");
              },
              showBackButton: true,
              onBackTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
