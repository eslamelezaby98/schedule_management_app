class CoursesModel {
  final String name;
  final bool isActive;
  final String subtitle;
  final String room;
  final String userName;
  final String time;
  final String timeUp;

  CoursesModel({
    required this.name,
    required this.isActive,
    required this.subtitle,
    required this.room,
    required this.userName,
    required this.time,
    required this.timeUp,
  });
}

List<CoursesModel> courses = [
  CoursesModel(
    name: "Mathematics",
    isActive: true,
    subtitle: "Chapter 1: Introduction",
    room: "Room 6-205",
    userName: "Brooklyn Williamson",
    time: "11:35",
    timeUp: "13:05",
  ),
  CoursesModel(
    name: "Biology",
    isActive: false,
    subtitle: "Chapter 3: Animal Kingdom",
    room: "Room 2-168",
    userName: "Julie Watson",
    time: "13:15",
    timeUp: "14:45",
  ),
  CoursesModel(
    name: "Geography",
    isActive: false,
    room: "Room 1-403",
    subtitle: "Chapter 2: Economy USA",
    userName: "Jenny Alexander",
    time: "15:10",
    timeUp: "16:40",
  ),
];
