import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key, required this.onChanged});
  final ValueChanged<bool> onChanged;
  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  bool _isAgreed = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: const Color(0xFFFE8C00),
          checkColor: Colors.white,
          fillColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.selected)) {
              return const Color(0xFFFE8C00);
            }
            return Colors.transparent;
          }),
          side: BorderSide(
            color: _isAgreed ? const Color(0xFFFE8C00) : Colors.grey,
            width: 1.5,
          ),
          value: _isAgreed,
          onChanged: (value) {
            setState(() {
              _isAgreed = value ?? false;
            });
            widget.onChanged(_isAgreed);
          },
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'I Agree with ',
                  style: TextStyle(
                    color: const Color(0xFF0F0F0F),
                    fontSize: 14.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 1.43,
                  ),
                ),
                TextSpan(
                  text: 'Terms of Service',
                  style: TextStyle(
                    color: const Color(0xFFFE8C00),
                    fontSize: 14.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 1.43,
                  ),
                ),
                TextSpan(
                  text: ' and ',
                  style: TextStyle(
                    color: const Color(0xFF0F0F0F),
                    fontSize: 14.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 1.43,
                  ),
                ),
                TextSpan(
                  text: 'Privacy Policy ',
                  style: TextStyle(
                    color: const Color(0xFFFE8C00),
                    fontSize: 14.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 1.43,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
