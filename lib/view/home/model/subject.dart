import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../config/assets/assets.dart';

class SubjectModel {
  String title;
  Color color;
  Color shapeColor;
  String shape;
  String vector;
  SubjectModel({
    required this.shapeColor,
    required this.title,
    required this.color,
    required this.shape,
    required this.vector,
  });
}

List<SubjectModel> subjects = [
  SubjectModel(
    title: "Mathematics",
    shapeColor: const Color(0xffFFC278),
    color: const Color(0xffFF7648),
    shape: "${AppAssets.svg}sbjects1.svg",
    vector: "${AppAssets.svg}mathematics.svg",
  ),
  SubjectModel(
    title: "Geography",
    color: const Color(0xff8F98FF),
    shapeColor: const Color(0xff182A88),
    shape: "${AppAssets.svg}sbjects1.svg",
    vector: "${AppAssets.svg}geography.svg",
  ),
  SubjectModel(
    title: "Mathematics",
    shapeColor: const Color(0xffFFC278),
    color: const Color(0xffFF7648),
    shape: "${AppAssets.svg}sbjects1.svg",
    vector: "${AppAssets.svg}mathematics.svg",
  ),
];
