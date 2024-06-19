part of 'entities.dart';

@Collection(accessor: 'task')
class TaskEntity extends BaseNoSqlEntity {
  @Index(unique: true, replace: true)
  String id = '';
  String creatorId = '';
  int createdAt = 0;
  String assigneeId = '';
  String assignerId = '';
  int commentCount = 0;
  bool completed = false;
  String content = '';
  String description = '';
  TaskDueEntityEmbedded? taskDue;
  int duration = 0;
  List<String> labels = [];
  int order = 0;
  int priority = 0;
  String projectId = '';
  String sectionId = '';
  String parentId = '';
  String url = '';

  TaskEntity();

  factory TaskEntity.fromModel(TaskModel model) {
    final entity = TaskEntity();
    entity.id = model.id;
    entity.creatorId = model.creatorId;
    entity.createdAt = model.createdAt.millisecondsSinceEpoch;
    entity.assigneeId = model.assigneeId;
    entity.assignerId = model.assignerId;
    entity.completed = model.completed;
    entity.content = model.content;
    entity.description = model.description;
    entity.taskDue = model.taskDue != null
        ? TaskDueEntityEmbedded.fromModel(model.taskDue!)
        : null;
    entity.duration = model.duration;
    entity.labels = model.labels;
    entity.order = model.order;
    entity.priority = model.priority;
    entity.projectId = model.projectId;
    entity.sectionId = model.sectionId;
    entity.parentId = model.parentId;
    entity.url = model.url;
    return entity;
  }

  TaskModel toModel() => TaskModel(
        creatorId: creatorId,
        projectId: projectId,
        sectionId: sectionId,
        parentId: parentId,
        createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
        assigneeId: assigneeId,
        assignerId: assignerId,
        commentCount: commentCount,
        completed: completed,
        content: content,
        description: description,
        taskDue: taskDue?.toModel(),
        duration: duration,
        id: id,
        labels: labels,
        order: order,
        priority: priority,
        url: url,
      );
}
