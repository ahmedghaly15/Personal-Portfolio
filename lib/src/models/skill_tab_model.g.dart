// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_tab_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SkillTabModel _$SkillTabModelFromJson(Map<String, dynamic> json) =>
    SkillTabModel(
      headerSmallText: json['headerSmallText'] as String,
      headerBigText: SkillHeaderTextModel.fromJson(
          json['headerBigText'] as Map<String, dynamic>),
      skills: (json['skills'] as List<dynamic>)
          .map((e) => SkillModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SkillTabModelToJson(SkillTabModel instance) =>
    <String, dynamic>{
      'headerSmallText': instance.headerSmallText,
      'headerBigText': instance.headerBigText.toJson(),
      'skills': instance.skills.map((e) => e.toJson()).toList(),
    };

SkillModel _$SkillModelFromJson(Map<String, dynamic> json) => SkillModel(
      name: json['name'] as String,
      percentage: (json['percentage'] as num).toDouble(),
    );

Map<String, dynamic> _$SkillModelToJson(SkillModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'percentage': instance.percentage,
    };

SkillHeaderTextModel _$SkillHeaderTextModelFromJson(
        Map<String, dynamic> json) =>
    SkillHeaderTextModel(
      text1: json['text1'] as String,
      colorfulString: json['colorfulString'] as String,
      text3: json['text3'] as String,
    );

Map<String, dynamic> _$SkillHeaderTextModelToJson(
        SkillHeaderTextModel instance) =>
    <String, dynamic>{
      'text1': instance.text1,
      'colorfulString': instance.colorfulString,
      'text3': instance.text3,
    };
