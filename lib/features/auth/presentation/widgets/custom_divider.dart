import 'package:flutter/material.dart';

class CustomDivieder extends StatelessWidget {
  const CustomDivieder({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Colors.grey[400], height: .2)),
        SizedBox(width: 16),
        Text(
          'Or sign in with',
          style: TextStyle(
            color: const Color(0xFF878787),
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 1.43,
          ),
        ),
        SizedBox(width: 16),
        Expanded(child: Divider(color: Colors.grey[400], height: .2)),
      ],
    );
  }
}
