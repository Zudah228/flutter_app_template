import 'package:flutter/material.dart';

import '../../../../extensions/context_extension.dart';
import '../../../widgets/rounded_button.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    required this.detail,
    required this.onTapRetry,
    super.key,
  });

  final String detail;
  final VoidCallback onTapRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'エラーが発生しました\n$detail',
            style: context.bodyStyle.copyWith(
              color: Colors.red,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: RoundedButton(
              onTap: onTapRetry,
              child: Text(
                '再試行',
                style: context.bodyStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
