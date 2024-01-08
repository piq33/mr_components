// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAuthenticationCollection on Isar {
  IsarCollection<Authentication> get authentications => this.collection();
}

const AuthenticationSchema = CollectionSchema(
  name: r'Authentication',
  id: 6966287384112473639,
  properties: {
    r'expireTime': PropertySchema(
      id: 0,
      name: r'expireTime',
      type: IsarType.dateTime,
    ),
    r'hashCode': PropertySchema(
      id: 1,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'logged': PropertySchema(
      id: 2,
      name: r'logged',
      type: IsarType.bool,
    ),
    r'phoneNumber': PropertySchema(
      id: 3,
      name: r'phoneNumber',
      type: IsarType.string,
    ),
    r'realName': PropertySchema(
      id: 4,
      name: r'realName',
      type: IsarType.string,
    ),
    r'token': PropertySchema(
      id: 5,
      name: r'token',
      type: IsarType.string,
    ),
    r'userIdentity': PropertySchema(
      id: 6,
      name: r'userIdentity',
      type: IsarType.string,
      enumMap: _AuthenticationuserIdentityEnumValueMap,
    )
  },
  estimateSize: _authenticationEstimateSize,
  serialize: _authenticationSerialize,
  deserialize: _authenticationDeserialize,
  deserializeProp: _authenticationDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _authenticationGetId,
  getLinks: _authenticationGetLinks,
  attach: _authenticationAttach,
  version: '3.1.0+1',
);

int _authenticationEstimateSize(
  Authentication object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.phoneNumber.length * 3;
  bytesCount += 3 + object.realName.length * 3;
  bytesCount += 3 + object.token.length * 3;
  bytesCount += 3 + object.userIdentity.name.length * 3;
  return bytesCount;
}

void _authenticationSerialize(
  Authentication object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.expireTime);
  writer.writeLong(offsets[1], object.hashCode);
  writer.writeBool(offsets[2], object.logged);
  writer.writeString(offsets[3], object.phoneNumber);
  writer.writeString(offsets[4], object.realName);
  writer.writeString(offsets[5], object.token);
  writer.writeString(offsets[6], object.userIdentity.name);
}

Authentication _authenticationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Authentication(
    expireTime: reader.readDateTime(offsets[0]),
    phoneNumber: reader.readString(offsets[3]),
    realName: reader.readString(offsets[4]),
    token: reader.readString(offsets[5]),
    userIdentity: _AuthenticationuserIdentityValueEnumMap[
            reader.readStringOrNull(offsets[6])] ??
        UserIdentity.teacher,
  );
  return object;
}

P _authenticationDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (_AuthenticationuserIdentityValueEnumMap[
              reader.readStringOrNull(offset)] ??
          UserIdentity.teacher) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _AuthenticationuserIdentityEnumValueMap = {
  r'teacher': r'teacher',
  r'parent': r'parent',
  r'visitor': r'visitor',
  r'invalidate': r'invalidate',
};
const _AuthenticationuserIdentityValueEnumMap = {
  r'teacher': UserIdentity.teacher,
  r'parent': UserIdentity.parent,
  r'visitor': UserIdentity.visitor,
  r'invalidate': UserIdentity.invalidate,
};

Id _authenticationGetId(Authentication object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _authenticationGetLinks(Authentication object) {
  return [];
}

void _authenticationAttach(
    IsarCollection<dynamic> col, Id id, Authentication object) {}

extension AuthenticationQueryWhereSort
    on QueryBuilder<Authentication, Authentication, QWhere> {
  QueryBuilder<Authentication, Authentication, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AuthenticationQueryWhere
    on QueryBuilder<Authentication, Authentication, QWhereClause> {
  QueryBuilder<Authentication, Authentication, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<Authentication, Authentication, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterWhereClause> idBetween(
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

extension AuthenticationQueryFilter
    on QueryBuilder<Authentication, Authentication, QFilterCondition> {
  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      expireTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expireTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      expireTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expireTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      expireTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expireTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      expireTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expireTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      hashCodeGreaterThan(
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

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      hashCodeLessThan(
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

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      hashCodeBetween(
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

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      loggedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'logged',
        value: value,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      phoneNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      phoneNumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      phoneNumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      phoneNumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phoneNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      phoneNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      phoneNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      phoneNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      phoneNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phoneNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      phoneNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      phoneNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      realNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'realName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      realNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'realName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      realNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'realName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      realNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'realName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      realNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'realName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      realNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'realName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      realNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'realName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      realNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'realName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      realNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'realName',
        value: '',
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      realNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'realName',
        value: '',
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      tokenEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      tokenGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      tokenLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      tokenBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'token',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      tokenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      tokenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      tokenContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      tokenMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'token',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      tokenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'token',
        value: '',
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      tokenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'token',
        value: '',
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      userIdentityEqualTo(
    UserIdentity value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userIdentity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      userIdentityGreaterThan(
    UserIdentity value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userIdentity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      userIdentityLessThan(
    UserIdentity value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userIdentity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      userIdentityBetween(
    UserIdentity lower,
    UserIdentity upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userIdentity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      userIdentityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userIdentity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      userIdentityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userIdentity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      userIdentityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userIdentity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      userIdentityMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userIdentity',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      userIdentityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userIdentity',
        value: '',
      ));
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterFilterCondition>
      userIdentityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userIdentity',
        value: '',
      ));
    });
  }
}

extension AuthenticationQueryObject
    on QueryBuilder<Authentication, Authentication, QFilterCondition> {}

extension AuthenticationQueryLinks
    on QueryBuilder<Authentication, Authentication, QFilterCondition> {}

extension AuthenticationQuerySortBy
    on QueryBuilder<Authentication, Authentication, QSortBy> {
  QueryBuilder<Authentication, Authentication, QAfterSortBy>
      sortByExpireTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expireTime', Sort.asc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy>
      sortByExpireTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expireTime', Sort.desc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy> sortByLogged() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logged', Sort.asc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy>
      sortByLoggedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logged', Sort.desc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy>
      sortByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy>
      sortByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy> sortByRealName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'realName', Sort.asc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy>
      sortByRealNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'realName', Sort.desc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy> sortByToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'token', Sort.asc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy> sortByTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'token', Sort.desc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy>
      sortByUserIdentity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userIdentity', Sort.asc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy>
      sortByUserIdentityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userIdentity', Sort.desc);
    });
  }
}

extension AuthenticationQuerySortThenBy
    on QueryBuilder<Authentication, Authentication, QSortThenBy> {
  QueryBuilder<Authentication, Authentication, QAfterSortBy>
      thenByExpireTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expireTime', Sort.asc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy>
      thenByExpireTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expireTime', Sort.desc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy> thenByLogged() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logged', Sort.asc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy>
      thenByLoggedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logged', Sort.desc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy>
      thenByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy>
      thenByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy> thenByRealName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'realName', Sort.asc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy>
      thenByRealNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'realName', Sort.desc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy> thenByToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'token', Sort.asc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy> thenByTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'token', Sort.desc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy>
      thenByUserIdentity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userIdentity', Sort.asc);
    });
  }

  QueryBuilder<Authentication, Authentication, QAfterSortBy>
      thenByUserIdentityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userIdentity', Sort.desc);
    });
  }
}

extension AuthenticationQueryWhereDistinct
    on QueryBuilder<Authentication, Authentication, QDistinct> {
  QueryBuilder<Authentication, Authentication, QDistinct>
      distinctByExpireTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expireTime');
    });
  }

  QueryBuilder<Authentication, Authentication, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<Authentication, Authentication, QDistinct> distinctByLogged() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'logged');
    });
  }

  QueryBuilder<Authentication, Authentication, QDistinct> distinctByPhoneNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phoneNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Authentication, Authentication, QDistinct> distinctByRealName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'realName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Authentication, Authentication, QDistinct> distinctByToken(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'token', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Authentication, Authentication, QDistinct>
      distinctByUserIdentity({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userIdentity', caseSensitive: caseSensitive);
    });
  }
}

extension AuthenticationQueryProperty
    on QueryBuilder<Authentication, Authentication, QQueryProperty> {
  QueryBuilder<Authentication, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Authentication, DateTime, QQueryOperations>
      expireTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expireTime');
    });
  }

  QueryBuilder<Authentication, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<Authentication, bool, QQueryOperations> loggedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'logged');
    });
  }

  QueryBuilder<Authentication, String, QQueryOperations> phoneNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phoneNumber');
    });
  }

  QueryBuilder<Authentication, String, QQueryOperations> realNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'realName');
    });
  }

  QueryBuilder<Authentication, String, QQueryOperations> tokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'token');
    });
  }

  QueryBuilder<Authentication, UserIdentity, QQueryOperations>
      userIdentityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userIdentity');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthReqImpl _$$AuthReqImplFromJson(Map<String, dynamic> json) =>
    _$AuthReqImpl(
      loginPwd: json['loginPwd'] as String,
      loginType: json['loginType'] as int,
      mobile: json['mobile'] as String,
      smsCode: json['smsCode'] as String,
    );

Map<String, dynamic> _$$AuthReqImplToJson(_$AuthReqImpl instance) =>
    <String, dynamic>{
      'loginPwd': instance.loginPwd,
      'loginType': instance.loginType,
      'mobile': instance.mobile,
      'smsCode': instance.smsCode,
    };

_$RegularReqImpl _$$RegularReqImplFromJson(Map<String, dynamic> json) =>
    _$RegularReqImpl(
      studentCode: json['studentCode'] as String?,
    );

Map<String, dynamic> _$$RegularReqImplToJson(_$RegularReqImpl instance) =>
    <String, dynamic>{
      'studentCode': instance.studentCode,
    };

_$AuthModelImpl _$$AuthModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthModelImpl(
      userIdentity:
          $enumDecodeNullable(_$UserIdentityEnumMap, json['appUserIdentity']) ??
              UserIdentity.invalidate,
      phoneNumber: json['phoneNumber'] as String? ?? '',
      realName: json['realName'] as String? ?? '',
      expireTime: _$JsonConverterFromJson<int, DateTime?>(
          json['expireTime'], const TimestampNullableJsonConverter().fromJson),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$AuthModelImplToJson(_$AuthModelImpl instance) =>
    <String, dynamic>{
      'appUserIdentity': _$UserIdentityEnumMap[instance.userIdentity]!,
      'phoneNumber': instance.phoneNumber,
      'realName': instance.realName,
      'expireTime':
          const TimestampNullableJsonConverter().toJson(instance.expireTime),
      'token': instance.token,
    };

const _$UserIdentityEnumMap = {
  UserIdentity.teacher: 'teacher',
  UserIdentity.parent: 'parent',
  UserIdentity.visitor: 'visitor',
  UserIdentity.invalidate: 'invalidate',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      formalUserId: json['formalUserId'] as int?,
      potentialUserId: json['potentialUserId'] as int?,
      regular: json['regularStudentFlag'] as bool? ?? true,
      userName: json['userName'] as String? ?? '',
      nickName: json['nickName'] as String? ?? '',
      avatar: json['avatarUrl'] as String?,
      status: json['studentStatus'] == null
          ? StudentStatus.unknown
          : const StudentStatusJsonConverter()
              .fromJson(json['studentStatus'] as int),
      gender: json['gender'] == null
          ? Gender.unknown
          : const GenderIntJsonConverter().fromJson(json['gender'] as int),
      birthDate: _$JsonConverterFromJson<String, DateTime?>(
          json['birthDate'], const SimpleDateTimeJsonConverter().fromJson),
      phoneNumber: json['contactPhone'] as String? ?? '',
      relationship: json['familyRelation'] == null
          ? Relationship.other
          : const RelationshipJsonConverter()
              .fromJson(json['familyRelation'] as int),
      province: json['residenceAddressProvince'] as String? ?? '',
      city: json['residenceAddressCity'] as String? ?? '',
      district: json['residenceAddressDistrict'] as String? ?? '',
      location: json['residenceAddressLocation'] as String? ?? '',
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'formalUserId': instance.formalUserId,
      'potentialUserId': instance.potentialUserId,
      'regularStudentFlag': instance.regular,
      'userName': instance.userName,
      'nickName': instance.nickName,
      'avatarUrl': instance.avatar,
      'studentStatus':
          const StudentStatusJsonConverter().toJson(instance.status),
      'gender': const GenderIntJsonConverter().toJson(instance.gender),
      'birthDate':
          const SimpleDateTimeJsonConverter().toJson(instance.birthDate),
      'contactPhone': instance.phoneNumber,
      'familyRelation':
          const RelationshipJsonConverter().toJson(instance.relationship),
      'residenceAddressProvince': instance.province,
      'residenceAddressCity': instance.city,
      'residenceAddressDistrict': instance.district,
      'residenceAddressLocation': instance.location,
    };

_$UserUpdateReqImpl _$$UserUpdateReqImplFromJson(Map<String, dynamic> json) =>
    _$UserUpdateReqImpl(
      nickName: json['nickName'] as String?,
      avatar: json['avatarUrl'] as String?,
      birthDate: json['birthDate'] as String?,
      gender: json['gender'] as int?,
    );

Map<String, dynamic> _$$UserUpdateReqImplToJson(_$UserUpdateReqImpl instance) =>
    <String, dynamic>{
      'nickName': instance.nickName,
      'avatarUrl': instance.avatar,
      'birthDate': instance.birthDate,
      'gender': instance.gender,
    };

_$RegularOtherParamImpl _$$RegularOtherParamImplFromJson(
        Map<String, dynamic> json) =>
    _$RegularOtherParamImpl(
      studentCode: json['studentCode'] as String?,
    );

Map<String, dynamic> _$$RegularOtherParamImplToJson(
        _$RegularOtherParamImpl instance) =>
    <String, dynamic>{
      'studentCode': instance.studentCode,
    };
