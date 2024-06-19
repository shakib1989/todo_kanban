part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class ProjectModel extends BaseJson{
  @JsonKey(defaultValue: '')
  final String id;
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(name: 'comment_count', defaultValue: 0)
  final int commentCount;
  @JsonKey(name: 'order', defaultValue: 0)
  final int order;
  @JsonKey(defaultValue: '')
  final String color;
  @JsonKey(name: 'is_shared', defaultValue: false)
  final bool shared;
  @JsonKey(name: 'is_favorite', defaultValue: false)
  final bool favorite;
  @JsonKey(name: 'is_inbox_project', defaultValue: false)
  final bool inboxProject;
  @JsonKey(name: 'is_team_inbox', defaultValue: false)
  final bool teamInbox;
  @JsonKey(name: 'parent_id', defaultValue: '')
  final String parentId;
  @JsonKey(name: 'view_style', defaultValue: '')
  final String viewStyle;
  @JsonKey(name: 'url', defaultValue: '')
  final String url;

  ProjectModel({
    required this.id,
    required this.name,
    required this.commentCount,
    required this.order,
    required this.color,
    required this.shared,
    required this.favorite,
    required this.inboxProject,
    required this.teamInbox,
    required this.parentId,
    required this.viewStyle,
    required this.url,
  });

  factory ProjectModel.empty() => ProjectModel(
    id: '',
    name: '',
    commentCount: 0,
    order: 0,
    color: '',
    shared: false,
    favorite: false,
    inboxProject: false,
    teamInbox: false,
    parentId: '',
    viewStyle: '',
    url: '',
  );

  @override
  factory ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProjectModelToJson(this);
}
