part of 'models.dart';


@JsonSerializable(explicitToJson: true)
class SectionModel extends BaseJson{
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "project_id")
  String projectId;
  @JsonKey(name: "order")
  int order;
  @JsonKey(name: "name")
  String name;

  SectionModel({
    required this.id,
    required this.projectId,
    required this.order,
    required this.name,
  });

  factory SectionModel.fromJson(Map<String, dynamic> json) => _$SectionModelFromJson(json);

  Map<String, dynamic> toJson() => _$SectionModelToJson(this);
}
