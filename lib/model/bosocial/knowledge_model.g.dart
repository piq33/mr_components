// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'knowledge_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetKnowledgeSearchHistoryCollection on Isar {
  IsarCollection<KnowledgeSearchHistory> get knowledgeSearchHistorys =>
      this.collection();
}

const KnowledgeSearchHistorySchema = CollectionSchema(
  name: r'KnowledgeSearchHistory',
  id: 984390755410776403,
  properties: {
    r'count': PropertySchema(
      id: 0,
      name: r'count',
      type: IsarType.long,
    ),
    r'createTime': PropertySchema(
      id: 1,
      name: r'createTime',
      type: IsarType.dateTime,
    ),
    r'hashCode': PropertySchema(
      id: 2,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'keyword': PropertySchema(
      id: 3,
      name: r'keyword',
      type: IsarType.string,
    ),
    r'updateTime': PropertySchema(
      id: 4,
      name: r'updateTime',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _knowledgeSearchHistoryEstimateSize,
  serialize: _knowledgeSearchHistorySerialize,
  deserialize: _knowledgeSearchHistoryDeserialize,
  deserializeProp: _knowledgeSearchHistoryDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _knowledgeSearchHistoryGetId,
  getLinks: _knowledgeSearchHistoryGetLinks,
  attach: _knowledgeSearchHistoryAttach,
  version: '3.1.0+1',
);

int _knowledgeSearchHistoryEstimateSize(
  KnowledgeSearchHistory object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.keyword;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _knowledgeSearchHistorySerialize(
  KnowledgeSearchHistory object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.count);
  writer.writeDateTime(offsets[1], object.createTime);
  writer.writeLong(offsets[2], object.hashCode);
  writer.writeString(offsets[3], object.keyword);
  writer.writeDateTime(offsets[4], object.updateTime);
}

KnowledgeSearchHistory _knowledgeSearchHistoryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = KnowledgeSearchHistory();
  object.count = reader.readLongOrNull(offsets[0]);
  object.createTime = reader.readDateTimeOrNull(offsets[1]);
  object.id = id;
  object.keyword = reader.readStringOrNull(offsets[3]);
  object.updateTime = reader.readDateTimeOrNull(offsets[4]);
  return object;
}

P _knowledgeSearchHistoryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _knowledgeSearchHistoryGetId(KnowledgeSearchHistory object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _knowledgeSearchHistoryGetLinks(
    KnowledgeSearchHistory object) {
  return [];
}

void _knowledgeSearchHistoryAttach(
    IsarCollection<dynamic> col, Id id, KnowledgeSearchHistory object) {
  object.id = id;
}

extension KnowledgeSearchHistoryQueryWhereSort
    on QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QWhere> {
  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension KnowledgeSearchHistoryQueryWhere on QueryBuilder<
    KnowledgeSearchHistory, KnowledgeSearchHistory, QWhereClause> {
  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension KnowledgeSearchHistoryQueryFilter on QueryBuilder<
    KnowledgeSearchHistory, KnowledgeSearchHistory, QFilterCondition> {
  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> countIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'count',
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> countIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'count',
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> countEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> countGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> countLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> countBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'count',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> createTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createTime',
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> createTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createTime',
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> createTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> createTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> createTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createTime',
        value: value,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> createTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> keywordIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'keyword',
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> keywordIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'keyword',
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> keywordEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'keyword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> keywordGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'keyword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> keywordLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'keyword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> keywordBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'keyword',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> keywordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'keyword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> keywordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'keyword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
          QAfterFilterCondition>
      keywordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'keyword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
          QAfterFilterCondition>
      keywordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'keyword',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> keywordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'keyword',
        value: '',
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> keywordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'keyword',
        value: '',
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> updateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updateTime',
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> updateTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updateTime',
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> updateTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> updateTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> updateTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory,
      QAfterFilterCondition> updateTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension KnowledgeSearchHistoryQueryObject on QueryBuilder<
    KnowledgeSearchHistory, KnowledgeSearchHistory, QFilterCondition> {}

extension KnowledgeSearchHistoryQueryLinks on QueryBuilder<
    KnowledgeSearchHistory, KnowledgeSearchHistory, QFilterCondition> {}

extension KnowledgeSearchHistoryQuerySortBy
    on QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QSortBy> {
  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      sortByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      sortByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      sortByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.asc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      sortByCreateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.desc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      sortByKeyword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyword', Sort.asc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      sortByKeywordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyword', Sort.desc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      sortByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.asc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      sortByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.desc);
    });
  }
}

extension KnowledgeSearchHistoryQuerySortThenBy on QueryBuilder<
    KnowledgeSearchHistory, KnowledgeSearchHistory, QSortThenBy> {
  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      thenByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      thenByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      thenByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.asc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      thenByCreateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createTime', Sort.desc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      thenByKeyword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyword', Sort.asc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      thenByKeywordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyword', Sort.desc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      thenByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.asc);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QAfterSortBy>
      thenByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.desc);
    });
  }
}

extension KnowledgeSearchHistoryQueryWhereDistinct
    on QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QDistinct> {
  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QDistinct>
      distinctByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'count');
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QDistinct>
      distinctByCreateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createTime');
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QDistinct>
      distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QDistinct>
      distinctByKeyword({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'keyword', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KnowledgeSearchHistory, KnowledgeSearchHistory, QDistinct>
      distinctByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateTime');
    });
  }
}

extension KnowledgeSearchHistoryQueryProperty on QueryBuilder<
    KnowledgeSearchHistory, KnowledgeSearchHistory, QQueryProperty> {
  QueryBuilder<KnowledgeSearchHistory, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<KnowledgeSearchHistory, int?, QQueryOperations> countProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'count');
    });
  }

  QueryBuilder<KnowledgeSearchHistory, DateTime?, QQueryOperations>
      createTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createTime');
    });
  }

  QueryBuilder<KnowledgeSearchHistory, int, QQueryOperations>
      hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<KnowledgeSearchHistory, String?, QQueryOperations>
      keywordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'keyword');
    });
  }

  QueryBuilder<KnowledgeSearchHistory, DateTime?, QQueryOperations>
      updateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateTime');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KnowledgeRefreshOtherParamImpl _$$KnowledgeRefreshOtherParamImplFromJson(
        Map<String, dynamic> json) =>
    _$KnowledgeRefreshOtherParamImpl(
      catalogId: json['catalogId'] as String?,
    );

Map<String, dynamic> _$$KnowledgeRefreshOtherParamImplToJson(
        _$KnowledgeRefreshOtherParamImpl instance) =>
    <String, dynamic>{
      'catalogId': instance.catalogId,
    };

_$CatalogModelImpl _$$CatalogModelImplFromJson(Map<String, dynamic> json) =>
    _$CatalogModelImpl(
      catalogId: json['catalogId'] as String,
      catalogName: json['catalogName'] as String? ?? '',
      sortNo: json['sortNo'] as int? ?? 0,
      isDeleted: json['isDeleted'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['isDeleted'] as int),
      status: json['status'] == null
          ? Status.unknown
          : const StatusJsonConverter().fromJson(json['status'] as int),
      createUser: json['createUser'] as String?,
      createTime: _$JsonConverterFromJson<String, DateTime?>(
          json['createTime'], const DateTimeJsonConverter().fromJson),
      updateUser: json['updateUser'] as String?,
      updateTime: _$JsonConverterFromJson<String, DateTime?>(
          json['updateTime'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$$CatalogModelImplToJson(_$CatalogModelImpl instance) =>
    <String, dynamic>{
      'catalogId': instance.catalogId,
      'catalogName': instance.catalogName,
      'sortNo': instance.sortNo,
      'isDeleted': const Int2BoolJsonConverter().toJson(instance.isDeleted),
      'status': const StatusJsonConverter().toJson(instance.status),
      'createUser': instance.createUser,
      'createTime': const DateTimeJsonConverter().toJson(instance.createTime),
      'updateUser': instance.updateUser,
      'updateTime': const DateTimeJsonConverter().toJson(instance.updateTime),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

_$KnowledgeModelImpl _$$KnowledgeModelImplFromJson(Map<String, dynamic> json) =>
    _$KnowledgeModelImpl(
      knowledgeId: json['knowledgeId'] as String,
      author: json['author'] as String? ?? '',
      catalogId: json['catalogId'] as String?,
      commentNum: json['commentNum'] as int? ?? 0,
      likeNum: json['likeNum'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      content: json['content'] as String? ?? '',
      url: json['coverUrl'] as String?,
      videoUrl: json['videoUrl'] as String?,
      type: json['knType'] == null
          ? KnowledgeType.unknown
          : const KnowledgeTypeJsonConverter().fromJson(json['knType'] as int),
      scope: json['schoolScope'] == null
          ? KnowledgeScope.unknown
          : const KnowledgeScopeJsonConverter()
              .fromJson(json['schoolScope'] as String),
      studentViewNum: json['studentViewNum'] as int? ?? 0,
      teacherCode: json['teacherCode'] as String?,
      teacherName: json['teacherName'] as String? ?? '',
      teacherViewNum: json['teacherViewNum'] as int? ?? 0,
      status: json['status'] == null
          ? Status.unknown
          : const StatusJsonConverter().fromJson(json['status'] as int),
      deployOrg: json['deployOrg'] as String? ?? '',
      deployUser: json['deployUser'] as String?,
      deployUserCode: json['deployUserCode'] as String?,
      deployUserName: json['deployUserName'] as String? ?? '',
      deployTime: _$JsonConverterFromJson<String, DateTime?>(
          json['deployTime'], const DateTimeJsonConverter().fromJson),
      isDeleted: json['isDeleted'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['isDeleted'] as int),
      createUser: json['createUser'] as String?,
      createUserName: json['createUserName'] as String?,
      createTime: _$JsonConverterFromJson<String, DateTime?>(
          json['createTime'], const DateTimeJsonConverter().fromJson),
      updateUser: json['updateUser'] as String?,
      updateTime: _$JsonConverterFromJson<String, DateTime?>(
          json['updateTime'], const DateTimeJsonConverter().fromJson),
      withdrawUserId: json['withdrawUserId'] as int?,
      withdrawUserName: json['withdrawUserName'] as String?,
      withdrawTime: _$JsonConverterFromJson<String, DateTime?>(
          json['withdrawTime'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$$KnowledgeModelImplToJson(
        _$KnowledgeModelImpl instance) =>
    <String, dynamic>{
      'knowledgeId': instance.knowledgeId,
      'author': instance.author,
      'catalogId': instance.catalogId,
      'commentNum': instance.commentNum,
      'likeNum': instance.likeNum,
      'title': instance.title,
      'content': instance.content,
      'coverUrl': instance.url,
      'videoUrl': instance.videoUrl,
      'knType': const KnowledgeTypeJsonConverter().toJson(instance.type),
      'schoolScope': const KnowledgeScopeJsonConverter().toJson(instance.scope),
      'studentViewNum': instance.studentViewNum,
      'teacherCode': instance.teacherCode,
      'teacherName': instance.teacherName,
      'teacherViewNum': instance.teacherViewNum,
      'status': const StatusJsonConverter().toJson(instance.status),
      'deployOrg': instance.deployOrg,
      'deployUser': instance.deployUser,
      'deployUserCode': instance.deployUserCode,
      'deployUserName': instance.deployUserName,
      'deployTime': const DateTimeJsonConverter().toJson(instance.deployTime),
      'isDeleted': const Int2BoolJsonConverter().toJson(instance.isDeleted),
      'createUser': instance.createUser,
      'createUserName': instance.createUserName,
      'createTime': const DateTimeJsonConverter().toJson(instance.createTime),
      'updateUser': instance.updateUser,
      'updateTime': const DateTimeJsonConverter().toJson(instance.updateTime),
      'withdrawUserId': instance.withdrawUserId,
      'withdrawUserName': instance.withdrawUserName,
      'withdrawTime':
          const DateTimeJsonConverter().toJson(instance.withdrawTime),
    };

_$TagModelImpl _$$TagModelImplFromJson(Map<String, dynamic> json) =>
    _$TagModelImpl(
      tagId: json['tagId'] as String,
      knowledgeId: json['knowledgeId'] as String?,
      relaId: json['relaId'] as String?,
      tagName: json['tagName'] as String? ?? '',
      isDeleted: json['isDeleted'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['isDeleted'] as int),
      status: json['status'] == null
          ? Status.unknown
          : const StatusJsonConverter().fromJson(json['status'] as int),
      createUser: json['createUser'] as String?,
      createTime: _$JsonConverterFromJson<String, DateTime?>(
          json['createTime'], const DateTimeJsonConverter().fromJson),
      updateUser: json['updateUser'] as String?,
      updateTime: _$JsonConverterFromJson<String, DateTime?>(
          json['updateTime'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$$TagModelImplToJson(_$TagModelImpl instance) =>
    <String, dynamic>{
      'tagId': instance.tagId,
      'knowledgeId': instance.knowledgeId,
      'relaId': instance.relaId,
      'tagName': instance.tagName,
      'isDeleted': const Int2BoolJsonConverter().toJson(instance.isDeleted),
      'status': const StatusJsonConverter().toJson(instance.status),
      'createUser': instance.createUser,
      'createTime': const DateTimeJsonConverter().toJson(instance.createTime),
      'updateUser': instance.updateUser,
      'updateTime': const DateTimeJsonConverter().toJson(instance.updateTime),
    };

_$KnowledgeDetailModelImpl _$$KnowledgeDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$KnowledgeDetailModelImpl(
      knowledgeId: json['knowledgeId'] as String,
      author: json['author'] as String? ?? '',
      catalogId: json['catalogId'] as String?,
      commentNum: json['commentNum'] as int? ?? 0,
      likeNum: json['likeNum'] as int? ?? 0,
      selfLike: json['selfLikeFlag'] as bool? ?? false,
      title: json['title'] as String? ?? '',
      content: json['content'] as String? ?? '',
      url: json['coverUrl'] as String?,
      videoUrl: json['videoUrl'] as String?,
      type: json['knType'] == null
          ? KnowledgeType.unknown
          : const KnowledgeTypeJsonConverter().fromJson(json['knType'] as int),
      scope: json['schoolScope'] == null
          ? KnowledgeScope.unknown
          : const KnowledgeScopeJsonConverter()
              .fromJson(json['schoolScope'] as String),
      studentViewNum: json['studentViewNum'] as int? ?? 0,
      teacherCode: json['teacherCode'] as String?,
      teacherName: json['teacherName'] as String? ?? '',
      teacherViewNum: json['teacherViewNum'] as int? ?? 0,
      status: json['status'] == null
          ? Status.unknown
          : const StatusJsonConverter().fromJson(json['status'] as int),
      deployOrg: json['deployOrg'] as String? ?? '',
      deployUser: json['deployUser'] as String?,
      deployUserCode: json['deployUserCode'] as String,
      deployUserName: json['deployUserName'] as String? ?? '',
      deployTime: _$JsonConverterFromJson<String, DateTime?>(
          json['deployTime'], const DateTimeJsonConverter().fromJson),
      isDeleted: json['isDeleted'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['isDeleted'] as int),
      tags: (json['tagList'] as List<dynamic>?)
              ?.map((e) => TagModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createUser: json['createUser'] as String?,
      createUserName: json['createUserName'] as String?,
      createTime: _$JsonConverterFromJson<String, DateTime?>(
          json['createTime'], const DateTimeJsonConverter().fromJson),
      updateUser: json['updateUser'] as String?,
      updateTime: _$JsonConverterFromJson<String, DateTime?>(
          json['updateTime'], const DateTimeJsonConverter().fromJson),
      withdrawUserId: json['withdrawUserId'] as int?,
      withdrawUserName: json['withdrawUserName'] as String?,
      withdrawTime: _$JsonConverterFromJson<String, DateTime?>(
          json['withdrawTime'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$$KnowledgeDetailModelImplToJson(
        _$KnowledgeDetailModelImpl instance) =>
    <String, dynamic>{
      'knowledgeId': instance.knowledgeId,
      'author': instance.author,
      'catalogId': instance.catalogId,
      'commentNum': instance.commentNum,
      'likeNum': instance.likeNum,
      'selfLikeFlag': instance.selfLike,
      'title': instance.title,
      'content': instance.content,
      'coverUrl': instance.url,
      'videoUrl': instance.videoUrl,
      'knType': const KnowledgeTypeJsonConverter().toJson(instance.type),
      'schoolScope': const KnowledgeScopeJsonConverter().toJson(instance.scope),
      'studentViewNum': instance.studentViewNum,
      'teacherCode': instance.teacherCode,
      'teacherName': instance.teacherName,
      'teacherViewNum': instance.teacherViewNum,
      'status': const StatusJsonConverter().toJson(instance.status),
      'deployOrg': instance.deployOrg,
      'deployUser': instance.deployUser,
      'deployUserCode': instance.deployUserCode,
      'deployUserName': instance.deployUserName,
      'deployTime': const DateTimeJsonConverter().toJson(instance.deployTime),
      'isDeleted': const Int2BoolJsonConverter().toJson(instance.isDeleted),
      'tagList': instance.tags,
      'createUser': instance.createUser,
      'createUserName': instance.createUserName,
      'createTime': const DateTimeJsonConverter().toJson(instance.createTime),
      'updateUser': instance.updateUser,
      'updateTime': const DateTimeJsonConverter().toJson(instance.updateTime),
      'withdrawUserId': instance.withdrawUserId,
      'withdrawUserName': instance.withdrawUserName,
      'withdrawTime':
          const DateTimeJsonConverter().toJson(instance.withdrawTime),
    };
