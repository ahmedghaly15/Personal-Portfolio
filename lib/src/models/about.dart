import 'package:json_annotation/json_annotation.dart';

part 'about.g.dart';

@JsonSerializable(explicitToJson: true)
class About {
  final String headerSmallText,
      headerBigText,
      description,
      seeMyWorkLink,
      downloadCVLink;
  final List<Project> projects;
  final List<WorkExperienceModel> workExperience;
  final List<Approach> approaches;
  final ContactMe contactMe;

  About({
    required this.headerSmallText,
    required this.headerBigText,
    required this.description,
    required this.seeMyWorkLink,
    required this.downloadCVLink,
    required this.projects,
    required this.workExperience,
    required this.approaches,
    required this.contactMe,
  });

  factory About.fromJson(Map<String, dynamic> json) => _$AboutFromJson(json);
  Map<String, dynamic> toJson() => _$AboutToJson(this);
}

@JsonSerializable()
class Project {
  final String imgPath, title, description;
  final String? downloadLink, promoLink, gitHubLink;

  Project({
    required this.imgPath,
    required this.title,
    required this.description,
    this.downloadLink,
    this.promoLink,
    this.gitHubLink,
  });

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}

@JsonSerializable()
class WorkExperienceModel {
  final String title,
      startDate,
      endDate,
      company,
      experienceStatus,
      experienceMode;
  final List<String> description;

  WorkExperienceModel({
    required this.title,
    required this.startDate,
    required this.endDate,
    required this.company,
    required this.experienceStatus,
    required this.experienceMode,
    required this.description,
  });

  factory WorkExperienceModel.fromJson(Map<String, dynamic> json) =>
      _$WorkExperienceModelFromJson(json);
  Map<String, dynamic> toJson() => _$WorkExperienceModelToJson(this);
}

@JsonSerializable()
class Approach {
  final String title, description;

  Approach({required this.title, required this.description});

  factory Approach.fromJson(Map<String, dynamic> json) =>
      _$ApproachFromJson(json);
  Map<String, dynamic> toJson() => _$ApproachToJson(this);
}

@JsonSerializable()
class ContactMe {
  final String title, description, link, gitHubUrl, linkedInUrl, mediumUrl;

  ContactMe({
    required this.title,
    required this.description,
    required this.link,
    required this.gitHubUrl,
    required this.linkedInUrl,
    required this.mediumUrl,
  });

  factory ContactMe.fromJson(Map<String, dynamic> json) =>
      _$ContactMeFromJson(json);
  Map<String, dynamic> toJson() => _$ContactMeToJson(this);
}
