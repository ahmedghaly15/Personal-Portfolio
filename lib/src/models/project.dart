import 'package:json_annotation/json_annotation.dart';

part 'part.g.dart';

@JsonSerializable()
class Project {
  final String id, imgPath, title, description;
  final String? downloadLink, promoLink, gitHubLink;
  final bool shownInAbout;

  Project({
    required this.id,
    required this.imgPath,
    required this.title,
    required this.description,
    required this.shownInAbout,
    this.downloadLink,
    this.promoLink,
    this.gitHubLink,
  });

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}
