import 'package:flutter/material.dart';
import '../../config/assets/assets.dart';

class SubjectModel {
  String title;
  Color color;
  String shape;
  String vector;
  SubjectModel({
    required this.title,
    required this.color,
    required this.shape,
    required this.vector,
  });
}

List<SubjectModel> subjects = [
  SubjectModel(
    title: "Mathematics",
    color: const Color(0xffFF7648),
    shape: "${AppAssets.svg}sbjects1.svg",
    vector: "${AppAssets.svg}mathematics.svg",
  ),
  SubjectModel(
    title: "Mathematics",
    color: const Color(0xffFF7648),
    shape: "${AppAssets.svg}sbjects1.svg",
    vector: "${AppAssets.svg}mathematics.svg",
  ),
  SubjectModel(
    title: "Mathematics",
    color: const Color(0xffFF7648),
    shape: "${AppAssets.svg}sbjects1.svg",
    vector: "${AppAssets.svg}mathematics.svg",
  ),
];
