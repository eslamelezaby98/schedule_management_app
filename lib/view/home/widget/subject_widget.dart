// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schedule_management_app/config/theme/color.dart';

import '../model/subject.dart';
import 'title_widget.dart';

class SubjectsWidget extends StatelessWidget {
  const SubjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleWidget(
          subtitle: "Recommendations for you",
          title: "Subjects",
        ),
        SizedBox(
          height: 130,
          child: ListView.builder(
            itemCount: subjects.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var subject = subjects[index];
              return SizedBox(
                width: 160,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  color: subject.color,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset(
                          subject.shape,
                          color: subject.shapeColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: SvgPicture.asset(subject.vector),
                                ),
                                const Icon(
                                  Icons.more_vert,
                                  color: AppColor.white,
                                ),
                              ],
                            ),
                            Text(
                              subject.title,
                              style: const TextStyle(
                                color: AppColor.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
