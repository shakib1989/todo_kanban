part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class TaskEditModel {
  @JsonKey(name: "content", includeIfNull: false)
  String? content;
  @JsonKey(name: "description", includeIfNull: false)
  String? description;
  @JsonKey(name: "labels", includeIfNull: false)
  List<String>? labels;
  @JsonKey(name: "priority", includeIfNull: false)
  int? priority;
  @JsonKey(name: "due_string", includeIfNull: false)
  String? dueText;
  @JsonKey(
      name: "due_date",
      fromJson: DateTimeHelper.toDateTime,
      toJson: DateTimeHelper.fromDateTime,
      includeIfNull: false)
  DateTime? dueDate;
  @JsonKey(
      name: "due_datetime",
      fromJson: DateTimeHelper.toDateTime,
      toJson: DateTimeHelper.fromDateTime,
      includeIfNull: false)
  DateTime? dueDateTime;
  @JsonKey(name: "due_lang", includeIfNull: false)
  String? dueLang;
  @JsonKey(name: "assignee_id", includeIfNull: false)
  String? assigneeId;
  @JsonKey(name: "duration", defaultValue: 0, includeIfNull: false)
  int? duration;
  @JsonKey(name: "duration_unit", includeIfNull: false)
  String? durationUnit;

  TaskEditModel({
    this.content,
    this.description,
    this.labels,
    this.priority,
    this.dueText,
    this.dueDate,
    this.dueDateTime,
    this.dueLang,
    this.assigneeId,
    this.duration,
    this.durationUnit,
  });

  factory TaskEditModel.fromJson(Map<String, dynamic> json) =>
      _$TaskEditModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskEditModelToJson(this);
}
