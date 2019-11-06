import 'dart:io';

import 'package:image_picker/image_picker.dart';

class CameraProvider {
  Future<File> takePhoto() async {
    return await ImagePicker.pickImage(source: ImageSource.camera);
  }
}
