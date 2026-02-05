import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_model.freezed.dart';
part 'project_model.g.dart';

@freezed
abstract class ProjectModel with _$ProjectModel {

  const factory ProjectModel({
    required String title,
    required String paragraph,
    required List<String> bulletpoints,
    required List<String> imagePaths,
    required String githubURL,
    String? hostURL,
  }) = _ProjectModel;

  factory ProjectModel.fromJson(Map<String, dynamic> json) => _$ProjectModelFromJson(json);
}