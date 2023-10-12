import 'package:flutter/material.dart';

class LoginButtom extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const LoginButtom({super.key, required this.onTap, required this.text});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 60),
          
          decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          )),
    );
  }
}
