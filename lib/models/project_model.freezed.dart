// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProjectModel {

 String get title; String get paragraph; List<String> get bulletpoints; List<String> get imagePaths; String get githubURL; String? get hostURL;
/// Create a copy of ProjectModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectModelCopyWith<ProjectModel> get copyWith => _$ProjectModelCopyWithImpl<ProjectModel>(this as ProjectModel, _$identity);

  /// Serializes this ProjectModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectModel&&(identical(other.title, title) || other.title == title)&&(identical(other.paragraph, paragraph) || other.paragraph == paragraph)&&const DeepCollectionEquality().equals(other.bulletpoints, bulletpoints)&&const DeepCollectionEquality().equals(other.imagePaths, imagePaths)&&(identical(other.githubURL, githubURL) || other.githubURL == githubURL)&&(identical(other.hostURL, hostURL) || other.hostURL == hostURL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,paragraph,const DeepCollectionEquality().hash(bulletpoints),const DeepCollectionEquality().hash(imagePaths),githubURL,hostURL);

@override
String toString() {
  return 'ProjectModel(title: $title, paragraph: $paragraph, bulletpoints: $bulletpoints, imagePaths: $imagePaths, githubURL: $githubURL, hostURL: $hostURL)';
}


}

/// @nodoc
abstract mixin class $ProjectModelCopyWith<$Res>  {
  factory $ProjectModelCopyWith(ProjectModel value, $Res Function(ProjectModel) _then) = _$ProjectModelCopyWithImpl;
@useResult
$Res call({
 String title, String paragraph, List<String> bulletpoints, List<String> imagePaths, String githubURL, String? hostURL
});




}
/// @nodoc
class _$ProjectModelCopyWithImpl<$Res>
    implements $ProjectModelCopyWith<$Res> {
  _$ProjectModelCopyWithImpl(this._self, this._then);

  final ProjectModel _self;
  final $Res Function(ProjectModel) _then;

/// Create a copy of ProjectModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? paragraph = null,Object? bulletpoints = null,Object? imagePaths = null,Object? githubURL = null,Object? hostURL = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,paragraph: null == paragraph ? _self.paragraph : paragraph // ignore: cast_nullable_to_non_nullable
as String,bulletpoints: null == bulletpoints ? _self.bulletpoints : bulletpoints // ignore: cast_nullable_to_non_nullable
as List<String>,imagePaths: null == imagePaths ? _self.imagePaths : imagePaths // ignore: cast_nullable_to_non_nullable
as List<String>,githubURL: null == githubURL ? _self.githubURL : githubURL // ignore: cast_nullable_to_non_nullable
as String,hostURL: freezed == hostURL ? _self.hostURL : hostURL // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProjectModel].
extension ProjectModelPatterns on ProjectModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProjectModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProjectModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProjectModel value)  $default,){
final _that = this;
switch (_that) {
case _ProjectModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProjectModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProjectModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String paragraph,  List<String> bulletpoints,  List<String> imagePaths,  String githubURL,  String? hostURL)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProjectModel() when $default != null:
return $default(_that.title,_that.paragraph,_that.bulletpoints,_that.imagePaths,_that.githubURL,_that.hostURL);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String paragraph,  List<String> bulletpoints,  List<String> imagePaths,  String githubURL,  String? hostURL)  $default,) {final _that = this;
switch (_that) {
case _ProjectModel():
return $default(_that.title,_that.paragraph,_that.bulletpoints,_that.imagePaths,_that.githubURL,_that.hostURL);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String paragraph,  List<String> bulletpoints,  List<String> imagePaths,  String githubURL,  String? hostURL)?  $default,) {final _that = this;
switch (_that) {
case _ProjectModel() when $default != null:
return $default(_that.title,_that.paragraph,_that.bulletpoints,_that.imagePaths,_that.githubURL,_that.hostURL);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProjectModel implements ProjectModel {
  const _ProjectModel({required this.title, required this.paragraph, required final  List<String> bulletpoints, required final  List<String> imagePaths, required this.githubURL, this.hostURL}): _bulletpoints = bulletpoints,_imagePaths = imagePaths;
  factory _ProjectModel.fromJson(Map<String, dynamic> json) => _$ProjectModelFromJson(json);

@override final  String title;
@override final  String paragraph;
 final  List<String> _bulletpoints;
@override List<String> get bulletpoints {
  if (_bulletpoints is EqualUnmodifiableListView) return _bulletpoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bulletpoints);
}

 final  List<String> _imagePaths;
@override List<String> get imagePaths {
  if (_imagePaths is EqualUnmodifiableListView) return _imagePaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imagePaths);
}

@override final  String githubURL;
@override final  String? hostURL;

/// Create a copy of ProjectModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProjectModelCopyWith<_ProjectModel> get copyWith => __$ProjectModelCopyWithImpl<_ProjectModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProjectModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProjectModel&&(identical(other.title, title) || other.title == title)&&(identical(other.paragraph, paragraph) || other.paragraph == paragraph)&&const DeepCollectionEquality().equals(other._bulletpoints, _bulletpoints)&&const DeepCollectionEquality().equals(other._imagePaths, _imagePaths)&&(identical(other.githubURL, githubURL) || other.githubURL == githubURL)&&(identical(other.hostURL, hostURL) || other.hostURL == hostURL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,paragraph,const DeepCollectionEquality().hash(_bulletpoints),const DeepCollectionEquality().hash(_imagePaths),githubURL,hostURL);

@override
String toString() {
  return 'ProjectModel(title: $title, paragraph: $paragraph, bulletpoints: $bulletpoints, imagePaths: $imagePaths, githubURL: $githubURL, hostURL: $hostURL)';
}


}

/// @nodoc
abstract mixin class _$ProjectModelCopyWith<$Res> implements $ProjectModelCopyWith<$Res> {
  factory _$ProjectModelCopyWith(_ProjectModel value, $Res Function(_ProjectModel) _then) = __$ProjectModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String paragraph, List<String> bulletpoints, List<String> imagePaths, String githubURL, String? hostURL
});




}
/// @nodoc
class __$ProjectModelCopyWithImpl<$Res>
    implements _$ProjectModelCopyWith<$Res> {
  __$ProjectModelCopyWithImpl(this._self, this._then);

  final _ProjectModel _self;
  final $Res Function(_ProjectModel) _then;

/// Create a copy of ProjectModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? paragraph = null,Object? bulletpoints = null,Object? imagePaths = null,Object? githubURL = null,Object? hostURL = freezed,}) {
  return _then(_ProjectModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,paragraph: null == paragraph ? _self.paragraph : paragraph // ignore: cast_nullable_to_non_nullable
as String,bulletpoints: null == bulletpoints ? _self._bulletpoints : bulletpoints // ignore: cast_nullable_to_non_nullable
as List<String>,imagePaths: null == imagePaths ? _self._imagePaths : imagePaths // ignore: cast_nullable_to_non_nullable
as List<String>,githubURL: null == githubURL ? _self.githubURL : githubURL // ignore: cast_nullable_to_non_nullable
as String,hostURL: freezed == hostURL ? _self.hostURL : hostURL // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
