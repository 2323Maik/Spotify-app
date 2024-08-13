import 'package:flutter/material.dart';
import 'package:spotify/core/configs/themes/app_colors.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? height;
  const BasicAppButton({
    required this.onPressed,
    required this.title,
    this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            minimumSize: Size.fromHeight(height ?? 80),
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            elevation: 0),
        child: Text(
          title,
          style: const TextStyle(fontSize: 17),
        ));
  }
}
