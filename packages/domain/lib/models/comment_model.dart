part of 'models.dart';


@JsonSerializable(explicitToJson: true)
class CommentModel extends BaseJson{
  @JsonKey(name: "content",  defaultValue: '')
  String content;
  @JsonKey(name: "id",  defaultValue: '')
  String id;
  @JsonKey(name: "posted_at", fromJson: DateTimeHelper.toDateTime, toJson: DateTimeHelper.fromDateTime)
  DateTime postedAt;
  @JsonKey(name: "project_id",  defaultValue: '')
  dynamic projectId;
  @JsonKey(name: "task_id",  defaultValue: '')
  String taskId;
  @JsonKey(name: "attachment")
  AttachmentModel? attachment;

  CommentModel({
    required this.content,
    required this.id,
    required this.postedAt,
    required this.projectId,
    required this.taskId,
    required this.attachment,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) => _$CommentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommentModelToJson(this);
}
