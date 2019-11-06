import 'dart:io';

import 'package:image_picker/image_picker.dart';

class GalleryProvider {
  Future<File> takeImageFromGaller() async {
    return await ImagePicker.pickImage(source: ImageSource.gallery);
  }
}
