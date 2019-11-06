import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lecture5/widgets/take_picture_sheet_item_widget.dart';

class TakePictureSheetWidget extends StatelessWidget {
  const TakePictureSheetWidget(
      {@required this.cameraAction, @required this.galleryAction});

  final VoidCallback cameraAction;
  final VoidCallback galleryAction;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TakePictureSheetItemWidget(
          iconData: Icons.add_a_photo,
          title: 'Camera',
          onTapAction: cameraAction,
        ),
        TakePictureSheetItemWidget(
          iconData: Icons.add_photo_alternate,
          title: 'Gallery',
          onTapAction: galleryAction,
        )
      ],
    );
  }
}
