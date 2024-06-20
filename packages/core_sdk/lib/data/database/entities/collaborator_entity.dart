part of 'entities.dart';

@Collection(accessor: 'collaborator')
class CollaboratorEntity extends BaseNoSqlEntity{
  @Index(unique: true)
  String id = '';
  String name = '';
  String email = '';

  CollaboratorEntity();

  factory CollaboratorEntity.fromModel(CollaboratorModel model) {
    final entity = CollaboratorEntity();
    entity.id = model.id;
    entity.name = model.name;
    entity.email = model.email;
    return entity;
  }

  CollaboratorModel toModel() => CollaboratorModel(
        id: id,
        name: name,
        email: email,
      );
}
