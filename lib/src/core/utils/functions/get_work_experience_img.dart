import '../app_assets.dart';

String getWorkExperienceImg(String workExperienceStatus) {
  switch (workExperienceStatus) {
    case 'Freelance':
      return Assets.imagesFreelanceIcon;
    case 'Full-time':
      return Assets.imagesJobIcon;
    default:
      return Assets.imagesInternExperienceImg;
  }
}
