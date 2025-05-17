// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

About _$AboutFromJson(Map<String, dynamic> json) => About(
      headerSmallText: json['headerSmallText'] as String,
      headerBigText: AboutHeaderTextModel.fromJson(
          json['headerBigText'] as Map<String, dynamic>),
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
          .map((e) => ApproachModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      contactMe:
          ContactMeModel.fromJson(json['contactMe'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AboutToJson(About instance) => <String, dynamic>{
      'headerSmallText': instance.headerSmallText,
      'description': instance.description,
      'seeMyWorkLink': instance.seeMyWorkLink,
      'downloadCVLink': instance.downloadCVLink,
      'headerBigText': instance.headerBigText.toJson(),
      'projects': instance.projects.map((e) => e.toJson()).toList(),
      'workExperience': instance.workExperience.map((e) => e.toJson()).toList(),
      'approaches': instance.approaches.map((e) => e.toJson()).toList(),
      'contactMe': instance.contactMe.toJson(),
    };

AboutHeaderTextModel _$AboutHeaderTextModelFromJson(
        Map<String, dynamic> json) =>
    AboutHeaderTextModel(
      text1: json['text1'] as String,
      text2: json['text2'] as String,
      coloredString: json['coloredString'] as String,
    );

Map<String, dynamic> _$AboutHeaderTextModelToJson(
        AboutHeaderTextModel instance) =>
    <String, dynamic>{
      'text1': instance.text1,
      'text2': instance.text2,
      'coloredString': instance.coloredString,
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
      'description': instance.description,
    };

ApproachModel _$ApproachModelFromJson(Map<String, dynamic> json) =>
    ApproachModel(
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$ApproachModelToJson(ApproachModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };

ContactMeModel _$ContactMeModelFromJson(Map<String, dynamic> json) =>
    ContactMeModel(
      text1: json['text1'] as String,
      colorfulText: json['colorfulText'] as String,
      description: json['description'] as String,
      contactMeUrl: json['contactMeUrl'] as String,
      gitHubUrl: json['gitHubUrl'] as String,
      linkedInUrl: json['linkedInUrl'] as String,
      mediumUrl: json['mediumUrl'] as String,
    );

Map<String, dynamic> _$ContactMeModelToJson(ContactMeModel instance) =>
    <String, dynamic>{
      'text1': instance.text1,
      'colorfulText': instance.colorfulText,
      'description': instance.description,
      'contactMeUrl': instance.contactMeUrl,
      'gitHubUrl': instance.gitHubUrl,
      'linkedInUrl': instance.linkedInUrl,
      'mediumUrl': instance.mediumUrl,
    };
