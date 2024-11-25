import 'dart:convert';
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_option_model.freezed.dart';
part 'quiz_option_model.g.dart';

@freezed
class QuizOptionModel with _$QuizOptionModel {
  factory QuizOptionModel({
    @FileConverter() File? image,
    @Default('') final String? answer,
    @Default('') final String? answerMatch,
    @Default(0) final int? isCorrect,
    @Default(0) final int? isSelect,
    @Default(0) final int? score,
  }) = _QuizOptionModel;

  factory QuizOptionModel.fromJson(Map<String, dynamic> json) =>
      _$QuizOptionModelFromJson(json);
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
