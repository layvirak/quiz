import 'dart:convert';
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../quiz_option_model/quiz_option_model.dart';

part 'quiz_item_model.freezed.dart';
part 'quiz_item_model.g.dart';

@freezed
class QuizItemModel with _$QuizItemModel {
  factory QuizItemModel({
    @FileConverter() File? image,
    @Default('') final String? question,
    @Default('') final String? type,
    final List<QuizOptionModel>? options,
    @Default(false) final bool? isquestion,
    @Default(false) final bool? istype,
  }) = _QuizItemModel;

  factory QuizItemModel.fromJson(Map<String, dynamic> json) =>
      _$QuizItemModelFromJson(json);
}

class FileConverter implements JsonConverter<File?, String?> {
  const FileConverter();

  @override
  File? fromJson(String? json) {
    if (json == null) return null;

    // Decode base64 and write to a temporary file
    final bytes = base64Decode(json);
    final tempFile = File('${Directory.systemTemp.path}/temp_file');
    tempFile.writeAsBytesSync(bytes);
    return tempFile;
  }

  @override
  String? toJson(File? file) {
    if (file == null) return null;

    // Encode file bytes as a base64 string
    final bytes = file.readAsBytesSync();
    return base64Encode(bytes);
  }
}
