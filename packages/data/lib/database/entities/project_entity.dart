part of 'entities.dart';

@Collection(accessor: 'project')
class ProjectEntity  extends BaseNoSqlEntity{
  @Index(unique: true, replace: true)
  String id = '';
  String name = '';
  int commentCount = 0;
  int order = 0;
  String color = '';
  bool shared = false;
  bool favorite = false;
  bool inboxProject = false;
  bool teamInbox = false;
  String parentId = '';
  String viewStyle = '';
  String url = '';

  ProjectEntity();

  factory ProjectEntity.fromModel(ProjectModel model) {
    final entity = ProjectEntity();
    entity.id = model.id;
    entity.name = model.name;
    entity.commentCount = model.commentCount;
    entity.order = model.order;
    entity.color = model.color;
    entity.shared = model.shared;
    entity.favorite = model.favorite;
    entity.inboxProject = model.inboxProject;
    entity.teamInbox = model.teamInbox;
    entity.parentId = model.parentId;
    entity.viewStyle = model.viewStyle;
    entity.url = model.url;
    return entity;
  }
  ProjectModel toModel() => ProjectModel(
        id: id,
        name: name,
        commentCount: commentCount,
        order: order,
        color: color,
        shared: shared,
        favorite: favorite,
        inboxProject: inboxProject,
        teamInbox: teamInbox,
        parentId: parentId,
        viewStyle: viewStyle,
        url: url,
      );
}
