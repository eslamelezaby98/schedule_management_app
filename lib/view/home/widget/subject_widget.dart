import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schedule_management_app/view/config/theme/color.dart';

import '../model/subject.dart';

class SubjectsWidget extends StatelessWidget {
  const SubjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Subjects",
          style: TextStyle(
            color: Color(0xff212523),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          "Recommendations for you",
          style: TextStyle(
            color: Color(0xffBCC1CD),
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 5),
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
                        child: SvgPicture.asset(subject.shape),
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
