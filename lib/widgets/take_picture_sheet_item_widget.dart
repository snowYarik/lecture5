import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TakePictureSheetItemWidget extends StatelessWidget {
  const TakePictureSheetItemWidget(
      {@required this.iconData,
      @required this.title,
      @required this.onTapAction});

  final IconData iconData;
  final String title;
  final VoidCallback onTapAction;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        leading: Icon(
          iconData,
        ),
        title: Text(title),
        onTap: onTapAction,
      ),
    );
  }
}
