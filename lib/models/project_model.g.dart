// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProjectModel _$ProjectModelFromJson(Map<String, dynamic> json) =>
    _ProjectModel(
      title: json['title'] as String,
      paragraph: json['paragraph'] as String,
      bulletpoints: (json['bulletpoints'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      imagePaths: (json['imagePaths'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      githubURL: json['githubURL'] as String,
      hostURL: json['hostURL'] as String?,
    );

Map<String, dynamic> _$ProjectModelToJson(_ProjectModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'paragraph': instance.paragraph,
      'bulletpoints': instance.bulletpoints,
      'imagePaths': instance.imagePaths,
      'githubURL': instance.githubURL,
      'hostURL': instance.hostURL,
    };
