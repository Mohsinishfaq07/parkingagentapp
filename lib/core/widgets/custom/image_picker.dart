import 'dart:io';
import 'package:image_picker/image_picker.dart';

Future<File?> getImageFromGallery() async {
  XFile? pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
  if (pickedFile != null) {
    return File(pickedFile.path);
  }
  return null;
}

/// Get from Camera
Future<File?> getImageFromCamera() async {
  XFile? pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
  if (pickedFile != null) {

    return File(pickedFile.path);
  }
  return null;
}