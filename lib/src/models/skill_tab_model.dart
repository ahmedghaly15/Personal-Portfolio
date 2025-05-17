import 'package:json_annotation/json_annotation.dart';

part 'skill_tab_model.g.dart';

@JsonSerializable(explicitToJson: true)
class SkillTabModel {
  final String headerSmallText;
  final SkillHeaderTextModel headerBigText;
  final List<SkillModel> skills;

  SkillTabModel({
    required this.headerSmallText,
    required this.headerBigText,
    required this.skills,
  });

  factory SkillTabModel.fromJson(Map<String, dynamic> json) =>
      _$SkillTabModelFromJson(json);
  Map<String, dynamic> toJson() => _$SkillTabModelToJson(this);
}

@JsonSerializable()
class SkillModel {
  final String name;
  final double percentage;

  SkillModel({required this.name, required this.percentage});

  factory SkillModel.fromJson(Map<String, dynamic> json) =>
      _$SkillModelFromJson(json);
  Map<String, dynamic> toJson() => _$SkillModelToJson(this);
}

@JsonSerializable()
class SkillHeaderTextModel {
  final String text1, colorfulString, text3;

  SkillHeaderTextModel({
    required this.text1,
    required this.colorfulString,
    required this.text3,
  });

  factory SkillHeaderTextModel.fromJson(Map<String, dynamic> json) =>
      _$SkillHeaderTextModelFromJson(json);
  Map<String, dynamic> toJson() => _$SkillHeaderTextModelToJson(this);
}
