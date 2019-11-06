import 'package:flutter/material.dart';
import 'package:lecture5/providers/camera_provider.dart';
import 'package:lecture5/providers/gallery_provider.dart';
import 'package:lecture5/widgets/input_field_widget.dart';
import 'package:lecture5/widgets/picture_button_widget.dart';
import 'package:lecture5/widgets/take_picture_sheet_widget.dart';

class CreatePlacePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CreatePlacePageState();
}

class _CreatePlacePageState extends State<CreatePlacePage> {
  final _cameraProvider = CameraProvider();
  final _galleryProvider = GalleryProvider();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text('Create your favourite place'),
        ),
      ),
      body: SingleChildScrollView(
        child: Builder(
          builder: (BuildContext context) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: <Widget>[
                  PictureButtonWidget(
                    label: 'Take a picture',
                    onTapAction: () => _showImageBottomSheet(context),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  InputFieldWidget(
                    context: context,
                    controller: _nameController,
                    labelText: 'Input a picture name',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  InputFieldWidget(
                    context: context,
                    controller: _descriptionController,
                    labelText: 'Input a picture description',
                  ),
                  PictureButtonWidget(
                    label: 'Create a picture',
                    onTapAction: () {},
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _showImageBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) => TakePictureSheetWidget(
        cameraAction: () {},
        galleryAction: () {},
      ),
    );
  }
}
