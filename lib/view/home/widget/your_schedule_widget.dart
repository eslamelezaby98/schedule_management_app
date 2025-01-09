import 'package:flutter/material.dart';
import 'title_widget.dart';

class YourScheduleWidget extends StatelessWidget {
  const YourScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        TitleWidget(
          subtitle: "Next lessons",
          title: "Your Schedule",
        ),
      ],
    );
  }
}
