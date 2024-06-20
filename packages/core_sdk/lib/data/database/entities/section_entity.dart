part of 'entities.dart';

@Collection(accessor: 'section')
class SectionEntity extends BaseNoSqlEntity{
  @Index(unique: true, replace: true)
  String id = '';
  @Index()
  String projectId = '';
  int order = 0;
  String name = '';

  SectionEntity();

  factory SectionEntity.fromModel(SectionModel model) {
    final entity = SectionEntity();
    entity.id = model.id;
    entity.projectId = model.projectId;
    entity.order = model.order;
    entity.name = model.name;
    return entity;
  }

  SectionModel toModel() => SectionModel(
        id: id,
        name: name,
        projectId: projectId,
        order: order,
      );
}
