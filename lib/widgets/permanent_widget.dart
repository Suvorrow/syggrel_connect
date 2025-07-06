import 'package:flutter/material.dart';
import 'package:syggrel_connect/config/sizes_styles.dart';

class PermanentWidget extends StatelessWidget {
  final String title;
  final String value;

  const PermanentWidget({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(context.paddingMedium),
      decoration: BoxDecoration(
        color: context.cardBackground,
        borderRadius: BorderRadius.circular(
          UIDimensions.defaultInstance.cornerRadius,
        ),
        boxShadow: ShadowStyles.defaultShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: AppTextSizes.defaultInstance.body,
              color: context.foreground,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: context.verticalSmall),
          Text(
            value,
            style: TextStyle(
              fontSize: AppTextSizes.defaultInstance.body,
              color: context.foreground,
            ),
          ),
        ],
      ),
    );
  }
}
