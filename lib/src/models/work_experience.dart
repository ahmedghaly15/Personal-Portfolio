import '../core/utils/app_assets.dart';
import '../core/utils/app_strings.dart';

class WorkExperience {
  final String title;
  final String company;
  final String period;
  final String description;
  final String jobMode;
  final String imgPath;

  const WorkExperience({
    required this.title,
    required this.company,
    required this.period,
    required this.description,
    required this.jobMode,
    required this.imgPath,
  });

  static const List<WorkExperience> workExperience = [
    WorkExperience(
      title: 'Flutter Developer',
      company: 'Future of Egypt',
      period: 'Mar 2025– Present',
      description:
          '• Design and build high-quality, cross-platform mobile applications using Flutter and Dart, ensuring modern UI/UX and seamless user experiences. • Implement scalable architectures and effective state management (Bloc, Cubit, Riverpod), integrating RESTful APIs, Firebase, and payment gateways. • Collaborate with cross-functional teams in an Agile environment to develop, test, and maintain production-ready mobile solutions. • Continuously apply the latest Flutter best practices to improve performance, maintainability, and overall user engagement.',
      jobMode: 'Full-time',
      imgPath: Assets.imagesJobIcon,
    ),
    WorkExperience(
      title: 'Flutter Developer',
      company: 'Upwork',
      period: 'Apr 2025– May 2025',
      description:
          '• Built a cross-platform Flutter app for managing job applications, featuring search, filters, visual stats, and profile management. • Integrated Supabase for secure user auth, real-time database, and file storage; applied Riverpod for clean, scalable state management. • Delivered a polished, intuitive UI with dark/light theme support and smooth user experience.',
      jobMode: 'Freelance',
      imgPath: Assets.imagesFreelanceIcon,
    ),
    WorkExperience(
      title: AppStrings.flutterDevIntern,
      jobMode: 'Remote',
      company: 'Cellula Technologies',
      period: 'Sep 2024– Nov 2024',
      description: AppStrings.myInternDescription,
      imgPath: Assets.imagesInternExperienceImg,
    ),
  ];
}
