import 'package:flutter/material.dart';
import 'package:syggrel_connect/config/localization/texts.dart';
import 'package:syggrel_connect/config/sizes_styles.dart';

class OperationDialog extends StatelessWidget {
  final String message;

  const OperationDialog({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(
        horizontal: context.paddingSmall,
        vertical: context.paddingMedium,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          UIDimensions.defaultInstance.cornerRadius,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(context.paddingMedium),
        constraints: BoxConstraints(
          maxHeight: UIDimensions.defaultInstance.maxHeight,
          maxWidth: UIDimensions.defaultInstance.maxWidth,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              message,
              style: TextStyle(
                fontSize: AppTextSizes.defaultInstance.body,
                color: context.foreground,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: context.verticalMedium),
            ElevatedButton(
              onPressed: Navigator.of(context).pop,
              style: ElevatedButton.styleFrom(
                backgroundColor: context.primary,
                minimumSize: Size(
                  double.infinity,
                  UIDimensions.defaultInstance.buttonHeight,
                ),
              ),
              child: Text(
                Texts.okayButton,
                style: TextStyle(color: context.onPrimary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
