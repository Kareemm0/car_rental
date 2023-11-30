import '../../../core/utils/app_image.dart';

class HomeLogoModel {
  final String image;
  final String name;

  HomeLogoModel({
    required this.image,
    required this.name,
  });
}

final List<HomeLogoModel> homeList = [
  HomeLogoModel(image: AppImage.bmw, name: "BMW"),
  HomeLogoModel(image: AppImage.marcides, name: "Mercedes"),
  HomeLogoModel(image: AppImage.parsche, name: "Porsche"),
  HomeLogoModel(image: AppImage.honda, name: "Honda"),
  HomeLogoModel(image: AppImage.toyota, name: "Toyota"),
];
