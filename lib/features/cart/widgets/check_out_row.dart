import 'package:flutter/material.dart';
import 'package:green_mart/core/theme/app_text_styles.dart';

class CheckoutRow extends StatelessWidget {
  final String label;
  final Widget trailing;
  final VoidCallback onTap;

  const CheckoutRow({
    super.key,
    required this.label,
    required this.trailing,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: AppTextStyles.body.copyWith(color: Colors.grey)),
            Row(
              children: [
                trailing,
                const SizedBox(width: 4),
                const Icon(Icons.arrow_forward_ios, size: 14),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
