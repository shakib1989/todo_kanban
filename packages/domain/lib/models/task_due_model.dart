part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class TaskDueModel extends BaseJson {
  @JsonKey(name: "date", fromJson: DateTimeHelper.toDateTime, toJson: DateTimeHelper.fromDateTime)
  DateTime date;
  @JsonKey(name: "is_recurring", defaultValue: false)
  bool recurring;
  @JsonKey(name: "datetime", fromJson: DateTimeHelper.toDateTime, toJson: DateTimeHelper.fromDateTime)
  DateTime? datetime;
  @JsonKey(name: "string", defaultValue: '')
  String string;
  @JsonKey(name: "timezone", defaultValue: '')
  String timezone;

  TaskDueModel({
    required this.date,
    required this.recurring,
    required this.datetime,
    required this.string,
    required this.timezone,
  });

  factory TaskDueModel.fromJson(Map<String, dynamic> json) => _$TaskDueModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskDueModelToJson(this);
}
