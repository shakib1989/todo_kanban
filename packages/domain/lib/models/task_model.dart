part of 'models.dart';


@JsonSerializable(explicitToJson: true)
class TaskModel {
  @JsonKey(name: "creator_id", defaultValue: '')
  String creatorId;
  @JsonKey(name: "created_at", fromJson: DateTimeHelper.toDateTime, toJson: DateTimeHelper.fromDateTime)
  DateTime createdAt;
  @JsonKey(name: "assignee_id", defaultValue: '')
  String assigneeId;
  @JsonKey(name: "assigner_id", defaultValue: '')
  String assignerId;
  @JsonKey(name: "comment_count", defaultValue: 0)
  int commentCount;
  @JsonKey(name: "is_completed", defaultValue: false)
  bool completed;
  @JsonKey(name: "content", defaultValue: '')
  String content;
  @JsonKey(name: "description", defaultValue: '')
  String description;
  @JsonKey(name: "due")
  TaskDueModel taskDue;
  @JsonKey(name: "duration", defaultValue: 0)
  int duration;
  @JsonKey(name: "id", defaultValue: '')
  String id;
  @JsonKey(name: "labels", defaultValue: [])
  List<String> labels;
  @JsonKey(name: "order", defaultValue: 0)
  int order;
  @JsonKey(name: "priority", defaultValue: 0)
  int priority;
  @JsonKey(name: "project_id", defaultValue: '')
  String projectId;
  @JsonKey(name: "section_id", defaultValue: '')
  String sectionId;
  @JsonKey(name: "parent_id", defaultValue: '')
  String parentId;
  @JsonKey(name: "url", defaultValue: '')
  String url;

  TaskModel({
    required this.creatorId,
    required this.createdAt,
    required this.assigneeId,
    required this.assignerId,
    required this.commentCount,
    required this.completed,
    required this.content,
    required this.description,
    required this.taskDue,
    required this.duration,
    required this.id,
    required this.labels,
    required this.order,
    required this.priority,
    required this.projectId,
    required this.sectionId,
    required this.parentId,
    required this.url,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) => _$TaskModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskModelToJson(this);
}

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
