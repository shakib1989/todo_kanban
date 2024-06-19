part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class FailureModel {
  final String message;

  FailureModel({required this.message});

  factory FailureModel.empty() => FailureModel(message: '');
  factory FailureModel.genericFailure() =>
      FailureModel(message: 'A error occurred');

  @override
  factory FailureModel.fromJson(Map<String, dynamic> json) =>
      _$FailureModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FailureModelToJson(this);
}
