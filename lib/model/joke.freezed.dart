// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joke.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Joke _$JokeFromJson(Map<String, dynamic> json) {
  return _Joke.fromJson(json);
}

/// @nodoc
mixin _$Joke {
  @HiveField(0)
  List<String> get categories => throw _privateConstructorUsedError;

  @HiveField(1)
  String get id => throw _privateConstructorUsedError;

  @HiveField(2)
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;

  @HiveField(3)
  @JsonKey(name: "icon_url")
  String get iconUrl => throw _privateConstructorUsedError;

  @HiveField(4)
  @JsonKey(name: "updated_at")
  String get updatedAt => throw _privateConstructorUsedError;

  @HiveField(5)
  String get url => throw _privateConstructorUsedError;

  @HiveField(6)
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokeCopyWith<Joke> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeCopyWith<$Res> {
  factory $JokeCopyWith(Joke value, $Res Function(Joke) then) =
      _$JokeCopyWithImpl<$Res, Joke>;

  @useResult
  $Res call(
      {@HiveField(0) List<String> categories,
      @HiveField(1) String id,
      @HiveField(2) @JsonKey(name: "created_at") String createdAt,
      @HiveField(3) @JsonKey(name: "icon_url") String iconUrl,
      @HiveField(4) @JsonKey(name: "updated_at") String updatedAt,
      @HiveField(5) String url,
      @HiveField(6) String value});
}

/// @nodoc
class _$JokeCopyWithImpl<$Res, $Val extends Joke>
    implements $JokeCopyWith<$Res> {
  _$JokeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? id = null,
    Object? createdAt = null,
    Object? iconUrl = null,
    Object? updatedAt = null,
    Object? url = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JokeCopyWith<$Res> implements $JokeCopyWith<$Res> {
  factory _$$_JokeCopyWith(_$_Joke value, $Res Function(_$_Joke) then) =
      __$$_JokeCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@HiveField(0) List<String> categories,
      @HiveField(1) String id,
      @HiveField(2) @JsonKey(name: "created_at") String createdAt,
      @HiveField(3) @JsonKey(name: "icon_url") String iconUrl,
      @HiveField(4) @JsonKey(name: "updated_at") String updatedAt,
      @HiveField(5) String url,
      @HiveField(6) String value});
}

/// @nodoc
class __$$_JokeCopyWithImpl<$Res> extends _$JokeCopyWithImpl<$Res, _$_Joke>
    implements _$$_JokeCopyWith<$Res> {
  __$$_JokeCopyWithImpl(_$_Joke _value, $Res Function(_$_Joke) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? id = null,
    Object? createdAt = null,
    Object? iconUrl = null,
    Object? updatedAt = null,
    Object? url = null,
    Object? value = null,
  }) {
    return _then(_$_Joke(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Joke implements _Joke {
  _$_Joke(
      {@HiveField(0) final List<String> categories = const [],
      @HiveField(1) required this.id,
      @HiveField(2) @JsonKey(name: "created_at") required this.createdAt,
      @HiveField(3) @JsonKey(name: "icon_url") required this.iconUrl,
      @HiveField(4) @JsonKey(name: "updated_at") required this.updatedAt,
      @HiveField(5) required this.url,
      @HiveField(6) required this.value})
      : _categories = categories;

  factory _$_Joke.fromJson(Map<String, dynamic> json) => _$$_JokeFromJson(json);

  final List<String> _categories;

  @override
  @JsonKey()
  @HiveField(0)
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @HiveField(1)
  final String id;
  @override
  @HiveField(2)
  @JsonKey(name: "created_at")
  final String createdAt;
  @override
  @HiveField(3)
  @JsonKey(name: "icon_url")
  final String iconUrl;
  @override
  @HiveField(4)
  @JsonKey(name: "updated_at")
  final String updatedAt;
  @override
  @HiveField(5)
  final String url;
  @override
  @HiveField(6)
  final String value;

  @override
  String toString() {
    return 'Joke(categories: $categories, id: $id, createdAt: $createdAt, iconUrl: $iconUrl, updatedAt: $updatedAt, url: $url, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Joke &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      id,
      createdAt,
      iconUrl,
      updatedAt,
      url,
      value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JokeCopyWith<_$_Joke> get copyWith =>
      __$$_JokeCopyWithImpl<_$_Joke>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JokeToJson(
      this,
    );
  }
}

abstract class _Joke implements Joke {
  factory _Joke(
      {@HiveField(0)
          final List<String> categories,
      @HiveField(1)
          required final String id,
      @HiveField(2)
      @JsonKey(name: "created_at")
          required final String createdAt,
      @HiveField(3)
      @JsonKey(name: "icon_url")
          required final String iconUrl,
      @HiveField(4)
      @JsonKey(name: "updated_at")
          required final String updatedAt,
      @HiveField(5)
          required final String url,
      @HiveField(6)
          required final String value}) = _$_Joke;

  factory _Joke.fromJson(Map<String, dynamic> json) = _$_Joke.fromJson;

  @override
  @HiveField(0)
  List<String> get categories;

  @override
  @HiveField(1)
  String get id;

  @override
  @HiveField(2)
  @JsonKey(name: "created_at")
  String get createdAt;

  @override
  @HiveField(3)
  @JsonKey(name: "icon_url")
  String get iconUrl;

  @override
  @HiveField(4)
  @JsonKey(name: "updated_at")
  String get updatedAt;

  @override
  @HiveField(5)
  String get url;

  @override
  @HiveField(6)
  String get value;

  @override
  @JsonKey(ignore: true)
  _$$_JokeCopyWith<_$_Joke> get copyWith => throw _privateConstructorUsedError;
}
