import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PictureButtonWidget extends StatelessWidget {
  const PictureButtonWidget({
    @required this.label,
    @required this.onTapAction,
  });

  final String label;
  final VoidCallback onTapAction;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(label),
      onPressed: onTapAction,
    );
  }
}
