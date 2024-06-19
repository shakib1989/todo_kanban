part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class CollaboratorModel extends BaseJson{
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "email")
  String email;

  CollaboratorModel({
    required this.id,
    required this.name,
    required this.email,
  });

  factory CollaboratorModel.fromJson(Map<String, dynamic> json) => _$CollaboratorModelFromJson(json);

  Map<String, dynamic> toJson() => _$CollaboratorModelToJson(this);
}
