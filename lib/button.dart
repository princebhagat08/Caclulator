import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;

  const MyButton(
      {Key? key,
      required this.title,
      required this.color,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Container(
            height: 63,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Center(
                child: Text(
              title,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ))),
      ),
    );
  }
}
