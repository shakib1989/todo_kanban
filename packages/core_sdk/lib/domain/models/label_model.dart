part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class LabelModel extends BaseJson{
  @JsonKey(name: "id", defaultValue: '')
  String id;
  @JsonKey(name: "name", defaultValue: '')
  String name;
  @JsonKey(name: "color", defaultValue: '')
  String color;
  @JsonKey(name: "order", defaultValue: 0)
  int order;
  @JsonKey(name: "is_favorite", defaultValue: false)
  bool favorite;

  LabelModel({
    required this.id,
    required this.name,
    required this.color,
    required this.order,
    required this.favorite,
  });

  factory LabelModel.fromJson(Map<String, dynamic> json) =>
      _$LabelModelFromJson(json);

  Map<String, dynamic> toJson() => _$LabelModelToJson(this);
}
