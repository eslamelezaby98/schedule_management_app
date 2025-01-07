import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schedule_management_app/view/config/assets/assets.dart';
import 'package:schedule_management_app/view/config/theme/color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.background,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset(
                    "${AppAssets.svg}vector_home.svg",
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.56,
                  width: double.infinity,
                  child: const Card(
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    color: AppColor.white,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            top: 100,
            child: Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                "${AppAssets.svg}plante.svg",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
