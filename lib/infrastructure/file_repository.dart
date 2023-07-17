import 'dart:io';

import 'package:file_picker/file_picker.dart';
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

  static Future<File?> getFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        //allowedExtensions: ['png','pdf','jpg'],
        allowMultiple: false,
      );

      if (result != null) {
        // String _fileName = result.files.first.name;
        PlatformFile? pickedFile = result.files.first;
        File fileToDisplay = File(pickedFile.path.toString());

        return fileToDisplay;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
