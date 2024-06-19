part of 'entities.dart';

@Collection(accessor: 'comment')
class CommentEntity extends BaseNoSqlEntity{
  @Index(unique: true)
  String id = '';
  String content = '';
  int postedAt = 0;
  String projectId = '';
  String taskId = '';
  AttachmentEntityEmbedded? attachment;
  CommentEntity();

  factory CommentEntity.fromModel(CommentModel model) {
    final entity = CommentEntity();
    entity.id = model.id;
    entity.content = model.content;
    entity.postedAt = model.postedAt.millisecondsSinceEpoch;
    entity.projectId = model.projectId;
    entity.taskId = model.taskId;
    entity.attachment = model.attachment != null
        ? AttachmentEntityEmbedded.fromModel(model.attachment!)
        : null;
    return entity;
  }

  CommentModel toModel() => CommentModel(
        id: id,
        content: content,
        projectId: projectId,
        taskId: taskId,
        attachment: attachment?.toModel(),
        postedAt: DateTime.fromMillisecondsSinceEpoch(postedAt),
      );
}
