import 'package:flutter/material.dart';
import 'package:smartic_app/config/constants/colors.dart';
import 'package:smartic_app/config/constants/fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      required this.title,
      required this.height,
      required this.icon,
      required this.function,
      this.angle = 0,
      required this.widget});
  final String title;
  final double height;
  final IconData icon;
  final Function()? function;
  final double angle;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        title: Row(children: [
          widget,
          Expanded(
            child: Center(
              child: Text(
                title,
                style: AppFonts.primaryLetter(fontSize: 24),
              ),
            ),
          ),
        ]),
        actions: [
          Transform.rotate(
            angle: angle,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: IconButton(
                icon: FaIcon(
                  icon,
                  color: AppColors.secondaryColor,
                ),
                onPressed: function,
              ),
            ),
          ),
        ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
