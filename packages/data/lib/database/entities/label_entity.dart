part of 'entities.dart';

@Collection(accessor: 'label ')
class LabelEntity extends BaseNoSqlEntity{
  @Index(unique: true)
  String id = '';
  String name = '';
  String color = '';
  int order = 0;
  bool favorite = false;

  LabelEntity();

  factory LabelEntity.fromModel(LabelModel model) {
    final entity = LabelEntity();
    entity.id = model.id;
    entity.name = model.name;
    entity.color = model.color;
    entity.order = model.order;
    entity.favorite = model.favorite;
    return entity;
  }

  LabelModel toModel() => LabelModel(
        id: id,
        name: name,
        color: color,
        order: order,
        favorite: favorite,
      );
}
