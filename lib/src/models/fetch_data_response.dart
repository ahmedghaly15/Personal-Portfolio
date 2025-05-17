import 'package:json_annotation/json_annotation.dart';

import 'about.dart';
import 'skill_tab_model.dart';

part 'fetch_data_response.g.dart';

@JsonSerializable(explicitToJson: true)
class FetchDataResponse {
  final About about;
  final SkillTabModel skills;
  final List<Project> portfolio;

  FetchDataResponse({
    required this.about,
    required this.skills,
    required this.portfolio,
  });

  factory FetchDataResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchDataResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchDataResponseToJson(this);
}
