part of 'entities.dart';

@embedded
class TaskDueEntityEmbedded {
  int date = 0;
  bool recurring = false;
  int? datetime;
  String string = '';
  String timezone = '';

  TaskDueEntityEmbedded();

  factory TaskDueEntityEmbedded.fromModel(TaskDueModel model) {
    final entity = TaskDueEntityEmbedded();
    entity.date = model.date.millisecondsSinceEpoch;
    entity.recurring = model.recurring;
    entity.datetime = model.datetime?.millisecondsSinceEpoch;
    entity.string = model.string;
    entity.timezone = model.timezone;
    return entity;
  }

  TaskDueModel toModel() => TaskDueModel(
        date: DateTime.fromMillisecondsSinceEpoch(date),
        datetime: datetime != null
            ? DateTime.fromMillisecondsSinceEpoch(datetime!)
            : null,
        recurring: recurring,
        string: string,
        timezone: timezone,
      );
}
