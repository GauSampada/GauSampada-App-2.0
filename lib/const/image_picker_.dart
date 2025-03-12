import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerService extends ChangeNotifier {
  final ImagePicker _picker = ImagePicker();
  XFile? _selectedImage;

  // Getter
  XFile? get selectedImage => _selectedImage;

  // Pick image from camera or gallery
  Future<void> pickImage({
    required BuildContext context,
    required bool isCamera,
  }) async {
    try {
      final XFile? pickedImage = await _picker.pickImage(
        source: isCamera ? ImageSource.camera : ImageSource.gallery,
        imageQuality: 80,
      );

      if (pickedImage != null) {
        _selectedImage = pickedImage;
        notifyListeners();
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error picking image: $e")),
      );
    }
  }

  // Clear selected image
  void clearImage() {
    _selectedImage = null;
    notifyListeners();
  }
}
