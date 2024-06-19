// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttachmentModel _$AttachmentModelFromJson(Map<String, dynamic> json) =>
    AttachmentModel(
      fileName: json['file_name'] as String? ?? '',
      fileType: json['file_type'] as String? ?? '',
      fileUrl: json['file_url'] as String? ?? '',
      resourceType: json['resource_type'] as String? ?? '',
    );

Map<String, dynamic> _$AttachmentModelToJson(AttachmentModel instance) =>
    <String, dynamic>{
      'file_name': instance.fileName,
      'file_type': instance.fileType,
      'file_url': instance.fileUrl,
      'resource_type': instance.resourceType,
    };

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) => CommentModel(
      content: json['content'] as String? ?? '',
      id: json['id'] as String? ?? '',
      postedAt: DateTimeHelper.toDateTime(json['posted_at'] as String?),
      projectId: json['project_id'] ?? '',
      taskId: json['task_id'] as String? ?? '',
      attachment: json['attachment'] == null
          ? null
          : AttachmentModel.fromJson(
              json['attachment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommentModelToJson(CommentModel instance) =>
    <String, dynamic>{
      'content': instance.content,
      'id': instance.id,
      'posted_at': DateTimeHelper.fromDateTime(instance.postedAt),
      'project_id': instance.projectId,
      'task_id': instance.taskId,
      'attachment': instance.attachment?.toJson(),
    };

CollaboratorModel _$CollaboratorModelFromJson(Map<String, dynamic> json) =>
    CollaboratorModel(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$CollaboratorModelToJson(CollaboratorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };

FailureModel _$FailureModelFromJson(Map<String, dynamic> json) => FailureModel(
      message: json['message'] as String,
    );

Map<String, dynamic> _$FailureModelToJson(FailureModel instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

LabelModel _$LabelModelFromJson(Map<String, dynamic> json) => LabelModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      color: json['color'] as String? ?? '',
      order: (json['order'] as num?)?.toInt() ?? 0,
      favorite: json['is_favorite'] as bool? ?? false,
    );

Map<String, dynamic> _$LabelModelToJson(LabelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'order': instance.order,
      'is_favorite': instance.favorite,
    };

ProjectModel _$ProjectModelFromJson(Map<String, dynamic> json) => ProjectModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      commentCount: (json['comment_count'] as num?)?.toInt() ?? 0,
      order: (json['order'] as num?)?.toInt() ?? 0,
      color: json['color'] as String? ?? '',
      shared: json['is_shared'] as bool? ?? false,
      favorite: json['is_favorite'] as bool? ?? false,
      inboxProject: json['is_inbox_project'] as bool? ?? false,
      teamInbox: json['is_team_inbox'] as bool? ?? false,
      parentId: json['parent_id'] as String? ?? '',
      viewStyle: json['view_style'] as String? ?? '',
      url: json['url'] as String? ?? '',
    );

Map<String, dynamic> _$ProjectModelToJson(ProjectModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'comment_count': instance.commentCount,
      'order': instance.order,
      'color': instance.color,
      'is_shared': instance.shared,
      'is_favorite': instance.favorite,
      'is_inbox_project': instance.inboxProject,
      'is_team_inbox': instance.teamInbox,
      'parent_id': instance.parentId,
      'view_style': instance.viewStyle,
      'url': instance.url,
    };

SectionModel _$SectionModelFromJson(Map<String, dynamic> json) => SectionModel(
      id: json['id'] as String,
      projectId: json['project_id'] as String,
      order: (json['order'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$SectionModelToJson(SectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'project_id': instance.projectId,
      'order': instance.order,
      'name': instance.name,
    };

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => TaskModel(
      creatorId: json['creator_id'] as String? ?? '',
      createdAt: DateTimeHelper.toDateTime(json['created_at'] as String?),
      assigneeId: json['assignee_id'] as String? ?? '',
      assignerId: json['assigner_id'] as String? ?? '',
      commentCount: (json['comment_count'] as num?)?.toInt() ?? 0,
      completed: json['is_completed'] as bool? ?? false,
      content: json['content'] as String? ?? '',
      description: json['description'] as String? ?? '',
      taskDue: TaskDueModel.fromJson(json['due'] as Map<String, dynamic>),
      duration: (json['duration'] as num?)?.toInt() ?? 0,
      id: json['id'] as String? ?? '',
      labels: (json['labels'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      order: (json['order'] as num?)?.toInt() ?? 0,
      priority: (json['priority'] as num?)?.toInt() ?? 0,
      projectId: json['project_id'] as String? ?? '',
      sectionId: json['section_id'] as String? ?? '',
      parentId: json['parent_id'] as String? ?? '',
      url: json['url'] as String? ?? '',
    );

Map<String, dynamic> _$TaskModelToJson(TaskModel instance) => <String, dynamic>{
      'creator_id': instance.creatorId,
      'created_at': DateTimeHelper.fromDateTime(instance.createdAt),
      'assignee_id': instance.assigneeId,
      'assigner_id': instance.assignerId,
      'comment_count': instance.commentCount,
      'is_completed': instance.completed,
      'content': instance.content,
      'description': instance.description,
      'due': instance.taskDue.toJson(),
      'duration': instance.duration,
      'id': instance.id,
      'labels': instance.labels,
      'order': instance.order,
      'priority': instance.priority,
      'project_id': instance.projectId,
      'section_id': instance.sectionId,
      'parent_id': instance.parentId,
      'url': instance.url,
    };

TaskDueModel _$TaskDueModelFromJson(Map<String, dynamic> json) => TaskDueModel(
      date: DateTimeHelper.toDateTime(json['date'] as String?),
      recurring: json['is_recurring'] as bool? ?? false,
      datetime: DateTimeHelper.toDateTime(json['datetime'] as String?),
      string: json['string'] as String? ?? '',
      timezone: json['timezone'] as String? ?? '',
    );

Map<String, dynamic> _$TaskDueModelToJson(TaskDueModel instance) =>
    <String, dynamic>{
      'date': DateTimeHelper.fromDateTime(instance.date),
      'is_recurring': instance.recurring,
      'datetime': DateTimeHelper.fromDateTime(instance.datetime),
      'string': instance.string,
      'timezone': instance.timezone,
    };
