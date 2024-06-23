import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    required this.obscured,
  });

  final String title;
  final bool obscured;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 17, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 45,
          child: TextField(
            obscureText: obscured,
            decoration: InputDecoration(
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
            ),
          ),
        ),
      ],
    );
  }
}
