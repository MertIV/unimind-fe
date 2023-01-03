import 'dart:io';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:unimind_core/src/services/service_factory.dart';

class ImageService {
  static final cloudinary =
      CloudinaryPublic('djga7phar', 'favkfm1u', cache: false);
  static Future<String?> uploadJpegImage(File image, String fileName) async {
    try {
      CloudinaryResponse response = await cloudinary.uploadFile(
        CloudinaryFile.fromFile(image.path,
            resourceType: CloudinaryResourceType.Image),
      );
      return response.secureUrl;
    } on ModelNotProvidedException {
      print(ModelNotProvidedException.message);
      return null;
    } on PathNotProvidedException {
      print(PathNotProvidedException.message);
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
