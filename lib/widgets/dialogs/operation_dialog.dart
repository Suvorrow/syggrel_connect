import 'package:flutter/material.dart';
import 'package:syggrel_connect/config/app_theme.dart';
import 'package:syggrel_connect/config/localization/texts.dart';
import 'package:syggrel_connect/config/dialog_sizes.dart';

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
        borderRadius: BorderRadius.circular(DialogSizes.cornerRadius),
      ),
      child: Container(
        padding: EdgeInsets.all(context.paddingMedium),
        constraints: BoxConstraints(
          maxHeight: DialogSizes.maxHeight,
          maxWidth: DialogSizes.maxWidth,
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
                minimumSize: Size(double.infinity, DialogSizes.buttonHeight),
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
