import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.icon, required this.title, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 28),
        ),
        CustomIcon(onPressed: onPressed, icon: icon)
      ],
    );
  }
}
