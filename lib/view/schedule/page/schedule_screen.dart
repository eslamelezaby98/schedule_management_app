import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:schedule_management_app/view/schedule/model/courses_model.dart';
import '../../../config/assets/assets.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xffFAF9F9),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),
            //* header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        "24",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 44,
                          color: Color(0xff212525),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Wed",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xffBCC1CD),
                            ),
                          ),
                          Text(
                            "Jan 2020",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xffBCC1CD),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Card(
                    elevation: 0,
                    color: const Color(0xffE9F4EF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Text(
                        "Today",
                        style: TextStyle(
                          color: Color(0xff4DC591),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            //* courses
            Expanded(
              child: Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 10,
                  ),
                  child: ListView(
                    children: [
                      DatePicker(
                        DateTime.now(),
                        initialSelectedDate: DateTime.now(),
                        selectionColor: const Color(0xffFF7648),
                        selectedTextColor: Colors.white,
                        onDateChange: (date) {},
                        height: 90,
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                        thickness: 1,
                        color: Color(0xffFAF9F9),
                      ),
                      const SizedBox(height: 10),
                      //* header
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  "Time",
                                  style: TextStyle(
                                    color: Color(0xffBCC1CD),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "Course",
                                  style: TextStyle(
                                    color: Color(0xffBCC1CD),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.sort,
                            color: Color(0xffBCC1CD),
                          ),
                        ],
                      ),

                      //* courses
                      Stack(
                        children: [
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: courses.length,
                            itemBuilder: (context, index) {
                              var course = courses[index];
                              Color cardColor = course.isActive
                                  ? const Color(0xff4DC591)
                                  : const Color(0xffF6F6F5);
                              Color textColor = course.isActive
                                  ? Colors.white
                                  : const Color(0xff212525);
                              Color iconColor = course.isActive
                                  ? Colors.white
                                  : const Color(0xff88889D);
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          course.time,
                                          style: const TextStyle(
                                            color: Color(0xff212525),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          course.timeUp,
                                          style: const TextStyle(
                                            color: Color(0xffBCC1CD),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 20),
                                    Expanded(
                                      child: Card(
                                        elevation: 0,
                                        color: cardColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    course.name,
                                                    style: TextStyle(
                                                      color: textColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  Text(
                                                    course.subtitle,
                                                    style: TextStyle(
                                                      color: textColor,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 20),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .place_outlined,
                                                            color: iconColor,
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          Text(
                                                            course.room,
                                                            style: TextStyle(
                                                              color: textColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 12,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      Row(
                                                        children: [
                                                          const Image(
                                                            image: AssetImage(
                                                              "${AppAssets.images}user.png",
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          Text(
                                                            course.userName,
                                                            style: TextStyle(
                                                              color: textColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 12,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Icon(
                                                Icons.more_vert,
                                                color: iconColor,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          Positioned(
                            left: 45,
                            child: Container(
                              color: const Color(0xffFAF9F9),
                              width: 2,
                              height: MediaQuery.sizeOf(context).height,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
