import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum ExperienceStatus {
  @JsonValue('Full-time')
  fullTime,
  @JsonValue('Part-time')
  partTime,
  @JsonValue('Remote')
  remote,
  @JsonValue('Freelance')
  freelance
}
