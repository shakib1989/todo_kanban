part of 'models.dart';


@JsonSerializable(explicitToJson: true)
class AttachmentModel {
  @JsonKey(name: "file_name",  defaultValue: '')
  String fileName;
  @JsonKey(name: "file_type",  defaultValue: '')
  String fileType;
  @JsonKey(name: "file_url",  defaultValue: '')
  String fileUrl;
  @JsonKey(name: "resource_type",  defaultValue: '')
  String resourceType;

  AttachmentModel({
    required this.fileName,
    required this.fileType,
    required this.fileUrl,
    required this.resourceType,
  });

  factory AttachmentModel.fromJson(Map<String, dynamic> json) => _$AttachmentModelFromJson(json);

  Map<String, dynamic> toJson() => _$AttachmentModelToJson(this);
}
