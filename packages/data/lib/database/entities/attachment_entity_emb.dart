part of 'entities.dart';

@embedded
class AttachmentEntityEmbedded {
  String fileName = '';
  String fileType = '';
  String fileUrl = '';
  String resourceType = '';

  AttachmentEntityEmbedded();

  factory AttachmentEntityEmbedded.fromModel(AttachmentModel model) {
    final entity = AttachmentEntityEmbedded();
    entity.fileName = model.fileName;
    entity.fileType = model.fileType;
    entity.fileUrl = model.fileUrl;
    entity.resourceType = model.resourceType;
    return entity;
  }

  AttachmentModel toModel() => AttachmentModel(
        fileName: fileName,
        fileType: fileType,
        fileUrl: fileUrl,
        resourceType: resourceType,
      );
}
