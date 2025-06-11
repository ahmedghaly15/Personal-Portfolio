part 'work_experience_model.g.dart';

@JsonSerializable()
class WorkExperienceModel {
  final String id, title, startDate, endDate, company;
  final ExperienceStatus experienceStatus;
  final List<String> description;

  WorkExperienceModel({
    required this.id,
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
