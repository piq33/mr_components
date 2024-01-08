import 'package:bsl/model/common_model.dart';
import 'package:json_annotation/json_annotation.dart';

class RelationshipJsonConverter implements JsonConverter<Relationship, int> {
  const RelationshipJsonConverter();

  @override
  Relationship fromJson(int json) {
    switch (json) {
      case 1:
        return Relationship.father;
      case 2:
        return Relationship.mother;
      case 3:
        return Relationship.paternalGrandpa;
      case 4:
        return Relationship.paternalGrandma;
      case 5:
        return Relationship.maternalGrandpa;
      case 6:
        return Relationship.maternalGrandma;
      case 7:
        return Relationship.paternalUncle;
      case 8:
        return Relationship.maternalUncle;
      case 9:
        return Relationship.paternalAunt;
      case 10:
        return Relationship.maternalAunt;
      case 11:
        return Relationship.other;
      default:
        return Relationship.other;
    }
  }

  @override
  int toJson(Relationship gender) {
    return gender.req;
  }
}

class RelationshipNullableJsonConverter
    implements JsonConverter<Relationship?, int?> {
  const RelationshipNullableJsonConverter();

  @override
  Relationship? fromJson(int? json) {
    switch (json) {
      case 1:
        return Relationship.father;
      case 2:
        return Relationship.mother;
      case 3:
        return Relationship.paternalGrandpa;
      case 4:
        return Relationship.paternalGrandma;
      case 5:
        return Relationship.maternalGrandpa;
      case 6:
        return Relationship.maternalGrandma;
      case 7:
        return Relationship.paternalUncle;
      case 8:
        return Relationship.maternalUncle;
      case 9:
        return Relationship.paternalAunt;
      case 10:
        return Relationship.maternalAunt;
      case 11:
        return Relationship.other;
    }
    return null;
  }

  @override
  int? toJson(Relationship? gender) {
    return gender?.req;
  }
}

class RelationshipStringJsonConverter
    implements JsonConverter<Relationship, String> {
  const RelationshipStringJsonConverter();

  @override
  Relationship fromJson(String json) {
    switch (json) {
      case '爸爸':
      case '父亲':
        return Relationship.father;
      case '妈妈':
      case '母亲':
        return Relationship.mother;
      case '爷爷':
        return Relationship.paternalGrandpa;
      case '奶奶':
        return Relationship.paternalGrandma;
      case '外公':
        return Relationship.maternalGrandpa;
      case '外婆':
        return Relationship.maternalGrandma;
      case '叔叔':
        return Relationship.paternalUncle;
      case '舅舅':
        return Relationship.maternalUncle;
      case '阿姨':
        return Relationship.paternalAunt;
      case '姑妈':
        return Relationship.maternalAunt;
      case '其他':
        return Relationship.other;
      default:
        return Relationship.other;
    }
  }

  @override
  String toJson(Relationship gender) {
    return gender.display;
  }
}

class RelationshipStringNullableJsonConverter
    implements JsonConverter<Relationship?, String?> {
  const RelationshipStringNullableJsonConverter();

  @override
  Relationship? fromJson(String? json) {
    switch (json) {
      case '爸爸':
      case '父亲':
        return Relationship.father;
      case '妈妈':
      case '母亲':
        return Relationship.mother;
      case '爷爷':
        return Relationship.paternalGrandpa;
      case '奶奶':
        return Relationship.paternalGrandma;
      case '外公':
        return Relationship.maternalGrandpa;
      case '外婆':
        return Relationship.maternalGrandma;
      case '叔叔':
        return Relationship.paternalUncle;
      case '舅舅':
        return Relationship.maternalUncle;
      case '阿姨':
        return Relationship.paternalAunt;
      case '姑妈':
        return Relationship.maternalAunt;
      case '其他':
        return Relationship.other;
    }
    return null;
  }

  @override
  String toJson(Relationship? gender) {
    return gender?.display ?? '';
  }
}

class RelationshipStringJsonConverter2
    implements JsonConverter<Relationship, String> {
  const RelationshipStringJsonConverter2();

  @override
  Relationship fromJson(String json) {
    switch (json) {
      case '1':
        return Relationship.father;
      case '2':
        return Relationship.mother;
      case '3':
        return Relationship.paternalGrandpa;
      case '4':
        return Relationship.paternalGrandma;
      case '5':
        return Relationship.maternalGrandpa;
      case '6':
        return Relationship.maternalGrandma;
      case '7':
        return Relationship.paternalUncle;
      case '8':
        return Relationship.maternalUncle;
      case '9':
        return Relationship.paternalAunt;
      case '10':
        return Relationship.maternalAunt;
      case '11':
        return Relationship.other;
      default:
        return Relationship.other;
    }
  }

  @override
  String toJson(Relationship gender) {
    return gender.display;
  }
}

class RelationshipStringNullableJsonConverter2
    implements JsonConverter<Relationship?, String?> {
  const RelationshipStringNullableJsonConverter2();

  @override
  Relationship? fromJson(String? json) {
    switch (json) {
      case '1':
        return Relationship.father;
      case '2':
        return Relationship.mother;
      case '3':
        return Relationship.paternalGrandpa;
      case '4':
        return Relationship.paternalGrandma;
      case '5':
        return Relationship.maternalGrandpa;
      case '6':
        return Relationship.maternalGrandma;
      case '7':
        return Relationship.paternalUncle;
      case '8':
        return Relationship.maternalUncle;
      case '9':
        return Relationship.paternalAunt;
      case '10':
        return Relationship.maternalAunt;
      case '11':
        return Relationship.other;
    }
    return null;
  }

  @override
  String toJson(Relationship? gender) {
    return gender?.display ?? '';
  }
}
