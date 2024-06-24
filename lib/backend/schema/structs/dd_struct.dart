// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DdStruct extends BaseStruct {
  DdStruct({
    int? id,
    String? createdAt,
    String? name,
    int? price,
    String? imgUrl,
  })  : _id = id,
        _createdAt = createdAt,
        _name = name,
        _price = price,
        _imgUrl = imgUrl;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;

  void incrementPrice(int amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "img_url" field.
  String? _imgUrl;
  String get imgUrl => _imgUrl ?? '';
  set imgUrl(String? val) => _imgUrl = val;

  bool hasImgUrl() => _imgUrl != null;

  static DdStruct fromMap(Map<String, dynamic> data) => DdStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        name: data['name'] as String?,
        price: castToType<int>(data['price']),
        imgUrl: data['img_url'] as String?,
      );

  static DdStruct? maybeFromMap(dynamic data) =>
      data is Map ? DdStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'name': _name,
        'price': _price,
        'img_url': _imgUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'img_url': serializeParam(
          _imgUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static DdStruct fromSerializableMap(Map<String, dynamic> data) => DdStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
        imgUrl: deserializeParam(
          data['img_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DdStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DdStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        name == other.name &&
        price == other.price &&
        imgUrl == other.imgUrl;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, createdAt, name, price, imgUrl]);
}

DdStruct createDdStruct({
  int? id,
  String? createdAt,
  String? name,
  int? price,
  String? imgUrl,
}) =>
    DdStruct(
      id: id,
      createdAt: createdAt,
      name: name,
      price: price,
      imgUrl: imgUrl,
    );
