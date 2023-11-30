import 'package:car_rental/core/utils/app_image.dart';

class HomeLogoModel {
  final String image;

  HomeLogoModel({
    required this.image,
  });
}

final List<HomeLogoModel> homeList = [
  HomeLogoModel(image: AppImage.bmw),
  HomeLogoModel(image: AppImage.marcides),
  HomeLogoModel(image: AppImage.parsche),
  HomeLogoModel(image: AppImage.honda),
  HomeLogoModel(image: AppImage.toyota),
];
