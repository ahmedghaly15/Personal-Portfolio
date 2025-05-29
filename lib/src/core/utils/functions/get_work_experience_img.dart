import '../../enums/experience_status.dart';
import '../app_assets.dart';

String getWorkExperienceImg(ExperienceStatus status) {
  switch (status) {
    case ExperienceStatus.freelance:
      return Assets.imagesFreelanceIcon;
    case ExperienceStatus.fullTime:
      return Assets.imagesJobIcon;
    default:
      return Assets.imagesInternExperienceImg;
  }
}
