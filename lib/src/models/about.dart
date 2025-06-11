import 'package:json_annotation/json_annotation.dart';

import '../core/enums/experience_status.dart';
import 'project.dart';

part 'about.g.dart';

@JsonSerializable(explicitToJson: true)
class About {
  final String headerSmallText, description, seeMyWorkLink;
  final AboutHeaderTextModel headerBigText;
  final List<Project> projects;
  final List<WorkExperienceModel> workExperience;
  final List<ApproachModel> approaches;

  About({
    required this.headerSmallText,
    required this.headerBigText,
    required this.description,
    required this.seeMyWorkLink,
    required this.projects,
    required this.workExperience,
    required this.approaches,
  });

  factory About.fromJson(Map<String, dynamic> json) => _$AboutFromJson(json);
  Map<String, dynamic> toJson() => _$AboutToJson(this);
}

@JsonSerializable()
class AboutHeaderTextModel {
  final String text1, text2, coloredString;

  AboutHeaderTextModel({
    required this.text1,
    required this.text2,
    required this.coloredString,
  });

  factory AboutHeaderTextModel.fromJson(Map<String, dynamic> json) =>
      _$AboutHeaderTextModelFromJson(json);

  Map<String, dynamic> toJson() => _$AboutHeaderTextModelToJson(this);
}

@JsonSerializable()
class WorkExperienceModel {
  final String title, startDate, endDate, company;
  final ExperienceStatus experienceStatus;
  final List<String> description;

  WorkExperienceModel({
    required this.title,
    required this.startDate,
    required this.endDate,
    required this.company,
    required this.experienceStatus,
    required this.description,
  });

  factory WorkExperienceModel.fromJson(Map<String, dynamic> json) =>
      _$WorkExperienceModelFromJson(json);
  Map<String, dynamic> toJson() => _$WorkExperienceModelToJson(this);
}

@JsonSerializable()
class ApproachModel {
  final String title, description;

  ApproachModel({required this.title, required this.description});

  factory ApproachModel.fromJson(Map<String, dynamic> json) =>
      _$ApproachModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApproachModelToJson(this);
}
