import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    @required this.btnName,
    this.color: Colors.white,
    this.textColor: Colors.black87,
    this.onPressed,
    this.imagePath,
  }) : assert(btnName != null);

  final String btnName;
  final Color color;
  final Color textColor;
  final String imagePath;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          imagePath == null
              ? Text('')
              : Opacity(
                  opacity: 1,
                  child: Image.asset(imagePath),
                ),
          Text(
            btnName,
            style: TextStyle(
              color: textColor,
              fontSize: 13,
            ),
          ),
          imagePath == null
              ? Text('')
              : Opacity(
                  opacity: 0,
                  child: Image.asset(imagePath),
                ),
        ],
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(200, 50),
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
