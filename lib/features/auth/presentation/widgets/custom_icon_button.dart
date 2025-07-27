import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? iconAsset;

  const CustomIconButton({super.key, this.onPressed, this.iconAsset});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        side: const BorderSide(width: 1, color: Color(0xFFD6D6D6)),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: iconAsset != null
          ? SvgPicture.asset(iconAsset!, fit: BoxFit.contain)
          : const SizedBox.shrink(),
    );
  }
}
