// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchDataResponse _$FetchDataResponseFromJson(Map<String, dynamic> json) =>
    FetchDataResponse(
      about: About.fromJson(json['about'] as Map<String, dynamic>),
      skills: SkillTabModel.fromJson(json['skills'] as Map<String, dynamic>),
      portfolio: (json['portfolio'] as List<dynamic>)
          .map((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FetchDataResponseToJson(FetchDataResponse instance) =>
    <String, dynamic>{
      'about': instance.about.toJson(),
      'skills': instance.skills.toJson(),
      'portfolio': instance.portfolio.map((e) => e.toJson()).toList(),
    };
