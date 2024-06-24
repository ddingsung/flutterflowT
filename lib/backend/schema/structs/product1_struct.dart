// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Product1Struct extends BaseStruct {
  Product1Struct({
    int? id,
    DateTime? createdAt,
    String? name,
    int? price,
    List<String>? imgUrl,
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
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

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
  List<String>? _imgUrl;
  List<String> get imgUrl => _imgUrl ?? const [];
  set imgUrl(List<String>? val) => _imgUrl = val;

  void updateImgUrl(Function(List<String>) updateFn) {
    updateFn(imgUrl ??= []);
  }

  bool hasImgUrl() => _imgUrl != null;

  static Product1Struct fromMap(Map<String, dynamic> data) => Product1Struct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as DateTime?,
        name: data['name'] as String?,
        price: castToType<int>(data['price']),
        imgUrl: getDataList(data['img_url']),
      );

  static Product1Struct? maybeFromMap(dynamic data) =>
      data is Map ? Product1Struct.fromMap(data.cast<String, dynamic>()) : null;

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
          ParamType.DateTime,
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
          isList: true,
        ),
      }.withoutNulls;

  static Product1Struct fromSerializableMap(Map<String, dynamic> data) =>
      Product1Struct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
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
        imgUrl: deserializeParam<String>(
          data['img_url'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'Product1Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is Product1Struct &&
        id == other.id &&
        createdAt == other.createdAt &&
        name == other.name &&
        price == other.price &&
        listEquality.equals(imgUrl, other.imgUrl);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, createdAt, name, price, imgUrl]);
}

Product1Struct createProduct1Struct({
  int? id,
  DateTime? createdAt,
  String? name,
  int? price,
}) =>
    Product1Struct(
      id: id,
      createdAt: createdAt,
      name: name,
      price: price,
    );
