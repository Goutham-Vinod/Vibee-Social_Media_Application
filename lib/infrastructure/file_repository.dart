import 'dart:io';

import 'package:image_picker/image_picker.dart';

class FileRepository {
  static Future<File?> getImage() async {
    XFile? pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      File image = File(pickedFile.path);
      print('image picked');
      print('Image is at ${image.path}');
      return image;
    } else {
      print('no image selected');
      return null;
    }
  }
}
