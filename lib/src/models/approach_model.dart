import 'package:json_annotation/json_annotation.dart';

part 'approach_model.g.dart';

@JsonSerializable()
class ApproachModel {
  final String id, title, description;

  ApproachModel({
    required this.id,
    required this.title,
    required this.description,
    });

  factory ApproachModel.fromJson(Map<String, dynamic> json) =>
      _$ApproachModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApproachModelToJson(this);
}
