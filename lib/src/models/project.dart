import 'package:personal_portfolio/src/core/utils/app_assets.dart';

class Project {
  final String name, description, image;
  final String? githubUrl, downloadUrl, promoUrl;

  const Project({
    required this.name,
    required this.description,
    required this.image,
    this.githubUrl,
    this.downloadUrl,
    this.promoUrl,
  });

  static const List<Project> portfolio = [
    Project(
      name: 'ICare - Child Care App',
      description:
          "ICare is a comprehensive child care app that combines the power of AI and community support to assist mothers in taking care of their babies. From predicting the baby's needs to providing speech therapy and connecting with other mothers, ICare aims to make motherhood a little easier and a lot more joyful.",
      image: Assets.imagesIcareIcon,
      downloadUrl:
          "https://www.mediafire.com/file/p9f89wxv63mgity/ICare.apk/file",
      promoUrl:
          'https://github.com/user-attachments/assets/9e7325da-aef9-4a39-9702-ad95e63ced9e',
    ),
    Project(
      name: "Storeify - E-Commerce App",
      description:
          "Storeify is a powerful and dynamic e-commerce Flutter application designed to provide users with a seamless and engaging shopping experience. With robust features and a user-centric interface, Storeify combines functionality and performance to deliver an all-in-one e-commerce solution.",
      image: Assets.imagesStoreifyIcon,
      githubUrl: "https://github.com/ahmedghaly15/Storeify",
      promoUrl:
          'https://github.com/user-attachments/assets/ab7bc1ab-4151-40da-accd-143dae9c94a2',
    ),
    Project(
      name: "Linkup - Social Media App",
      description:
          "Linkup is a flutter app aimed at enhancing social connectivity. The app facilitates user interactions with friends, family, and others in a social environment. With its user-friendly interface, users can easily engage with others. The app includes various social interaction tools such as creating profiles, sharing photos, and engaging in real-time conversations with others.",
      image: Assets.imagesLinkupIcon,
      downloadUrl:
          "https://www.mediafire.com/file/ow4ilvobb6jxb04/Linkup.apk/file",
      githubUrl: "https://github.com/ahmedghaly15/Linkup",
    ),
    Project(
      name: "Roome - Hotel Booking App",
      description:
          "Roome is a Flutter app designed to help users find and book hotels for their vacations or leisure activities. The app provides a user-friendly interface to explore various hotel options (Near Me, Recommended, Popular) and make reservations.",
      image: Assets.imagesRoomeIcon,
      githubUrl: "https://github.com/ahmedghaly15/Roome",
      promoUrl:
          "https://github.com/Alaa5652/roome-app/assets/108659381/c33e939f-6420-48fb-9a2f-987f50c98f04",
    ),
  ];
}
