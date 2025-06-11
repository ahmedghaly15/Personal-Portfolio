// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_experience_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkExperienceModel _$WorkExperienceModelFromJson(Map<String, dynamic> json) =>
    WorkExperienceModel(
      id: json['id'] as String,
      title: json['title'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      company: json['company'] as String,
      experienceStatus: $enumDecode(_$ExperienceStatusEnumMap, json['experienceStatus']),
      description: (json['description'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$WorkExperienceModelToJson(WorkExperienceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'company': instance.company,
      'experienceStatus': _$ExperienceStatusEnumMap[instance.experienceStatus]!,
      'description': instance.description,
    };

const _$ExperienceStatusEnumMap = {
  ExperienceStatus.ongoing: 'ongoing',
  ExperienceStatus.completed: 'completed',
};
