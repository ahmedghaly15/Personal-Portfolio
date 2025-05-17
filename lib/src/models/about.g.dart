// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

About _$AboutFromJson(Map<String, dynamic> json) => About(
      headerSmallText: json['headerSmallText'] as String,
      headerBigText: json['headerBigText'] as String,
      description: json['description'] as String,
      seeMyWorkLink: json['seeMyWorkLink'] as String,
      downloadCVLink: json['downloadCVLink'] as String,
      projects: (json['projects'] as List<dynamic>)
          .map((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList(),
      workExperience: (json['workExperience'] as List<dynamic>)
          .map((e) => WorkExperienceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      approaches: (json['approaches'] as List<dynamic>)
          .map((e) => Approach.fromJson(e as Map<String, dynamic>))
          .toList(),
      contactMe: ContactMe.fromJson(json['contactMe'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AboutToJson(About instance) => <String, dynamic>{
      'headerSmallText': instance.headerSmallText,
      'headerBigText': instance.headerBigText,
      'description': instance.description,
      'seeMyWorkLink': instance.seeMyWorkLink,
      'downloadCVLink': instance.downloadCVLink,
      'projects': instance.projects.map((e) => e.toJson()).toList(),
      'workExperience': instance.workExperience.map((e) => e.toJson()).toList(),
      'approaches': instance.approaches.map((e) => e.toJson()).toList(),
      'contactMe': instance.contactMe.toJson(),
    };

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
      imgPath: json['imgPath'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      downloadLink: json['downloadLink'] as String?,
      promoLink: json['promoLink'] as String?,
      gitHubLink: json['gitHubLink'] as String?,
    );

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'imgPath': instance.imgPath,
      'title': instance.title,
      'description': instance.description,
      'downloadLink': instance.downloadLink,
      'promoLink': instance.promoLink,
      'gitHubLink': instance.gitHubLink,
    };

WorkExperienceModel _$WorkExperienceModelFromJson(Map<String, dynamic> json) =>
    WorkExperienceModel(
      title: json['title'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      company: json['company'] as String,
      experienceStatus: json['experienceStatus'] as String,
      experienceMode: json['experienceMode'] as String,
      description: (json['description'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$WorkExperienceModelToJson(
        WorkExperienceModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'company': instance.company,
      'experienceStatus': instance.experienceStatus,
      'experienceMode': instance.experienceMode,
      'description': instance.description,
    };

Approach _$ApproachFromJson(Map<String, dynamic> json) => Approach(
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$ApproachToJson(Approach instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };

ContactMe _$ContactMeFromJson(Map<String, dynamic> json) => ContactMe(
      title: json['title'] as String,
      description: json['description'] as String,
      link: json['link'] as String,
      gitHubUrl: json['gitHubUrl'] as String,
      linkedInUrl: json['linkedInUrl'] as String,
      mediumUrl: json['mediumUrl'] as String,
    );

Map<String, dynamic> _$ContactMeToJson(ContactMe instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'link': instance.link,
      'gitHubUrl': instance.gitHubUrl,
      'linkedInUrl': instance.linkedInUrl,
      'mediumUrl': instance.mediumUrl,
    };
