import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.icon,
      required this.color,
      required this.title, required this.onTap});
  final IconData icon;
  final Color color;
  VoidCallback onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: onTap,
          style: OutlinedButton.styleFrom(
              fixedSize: const Size(55,55),
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
        ),
       SizedBox(
        height: 10,
       ),
        Text(
          title,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
