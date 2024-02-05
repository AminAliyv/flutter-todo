// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTodoModelCollection on Isar {
  IsarCollection<TodoModel> get todoModels => this.collection();
}

const TodoModelSchema = CollectionSchema(
  name: r'TodoModel',
  id: 4924789365587537652,
  properties: {
    r'complated': PropertySchema(
      id: 0,
      name: r'complated',
      type: IsarType.bool,
    ),
    r'decs': PropertySchema(
      id: 1,
      name: r'decs',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    ),
    r'showDesc': PropertySchema(
      id: 3,
      name: r'showDesc',
      type: IsarType.bool,
    )
  },
  estimateSize: _todoModelEstimateSize,
  serialize: _todoModelSerialize,
  deserialize: _todoModelDeserialize,
  deserializeProp: _todoModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _todoModelGetId,
  getLinks: _todoModelGetLinks,
  attach: _todoModelAttach,
  version: '3.1.0+1',
);

int _todoModelEstimateSize(
  TodoModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.desc.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _todoModelSerialize(
  TodoModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.complated);
  writer.writeString(offsets[1], object.desc);
  writer.writeString(offsets[2], object.name);
  writer.writeBool(offsets[3], object.showDesc);
}

TodoModel _todoModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TodoModel();
  object.complated = reader.readBool(offsets[0]);
  object.desc = reader.readString(offsets[1]);
  object.id = id;
  object.name = reader.readString(offsets[2]);
  object.showDesc = reader.readBool(offsets[3]);
  return object;
}

P _todoModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _todoModelGetId(TodoModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _todoModelGetLinks(TodoModel object) {
  return [];
}

void _todoModelAttach(IsarCollection<dynamic> col, Id id, TodoModel object) {
  object.id = id;
}

extension TodoModelQueryWhereSort
    on QueryBuilder<TodoModel, TodoModel, QWhere> {
  QueryBuilder<TodoModel, TodoModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TodoModelQueryWhere
    on QueryBuilder<TodoModel, TodoModel, QWhereClause> {
  QueryBuilder<TodoModel, TodoModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<TodoModel, TodoModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterWhereClause> idBetween(
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

extension TodoModelQueryFilter
    on QueryBuilder<TodoModel, TodoModel, QFilterCondition> {
  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> complatedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'complated',
        value: value,
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> decsEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'decs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> decsGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'decs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> decsLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'decs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> decsBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'decs',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> decsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'decs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> decsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'decs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> decsContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'decs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> decsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'decs',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> decsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'decs',
        value: '',
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> decsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'decs',
        value: '',
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterFilterCondition> showDescEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'showDesc',
        value: value,
      ));
    });
  }
}

extension TodoModelQueryObject
    on QueryBuilder<TodoModel, TodoModel, QFilterCondition> {}

extension TodoModelQueryLinks
    on QueryBuilder<TodoModel, TodoModel, QFilterCondition> {}

extension TodoModelQuerySortBy on QueryBuilder<TodoModel, TodoModel, QSortBy> {
  QueryBuilder<TodoModel, TodoModel, QAfterSortBy> sortByComplated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'complated', Sort.asc);
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterSortBy> sortByComplatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'complated', Sort.desc);
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterSortBy> sortByDecs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'decs', Sort.asc);
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterSortBy> sortByDecsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'decs', Sort.desc);
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterSortBy> sortByShowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showDesc', Sort.asc);
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterSortBy> sortByShowDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showDesc', Sort.desc);
    });
  }
}

extension TodoModelQuerySortThenBy
    on QueryBuilder<TodoModel, TodoModel, QSortThenBy> {
  QueryBuilder<TodoModel, TodoModel, QAfterSortBy> thenByComplated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'complated', Sort.asc);
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterSortBy> thenByComplatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'complated', Sort.desc);
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterSortBy> thenByDecs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'decs', Sort.asc);
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterSortBy> thenByDecsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'decs', Sort.desc);
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterSortBy> thenByShowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showDesc', Sort.asc);
    });
  }

  QueryBuilder<TodoModel, TodoModel, QAfterSortBy> thenByShowDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showDesc', Sort.desc);
    });
  }
}

extension TodoModelQueryWhereDistinct
    on QueryBuilder<TodoModel, TodoModel, QDistinct> {
  QueryBuilder<TodoModel, TodoModel, QDistinct> distinctByComplated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'complated');
    });
  }

  QueryBuilder<TodoModel, TodoModel, QDistinct> distinctByDecs(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'decs', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TodoModel, TodoModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TodoModel, TodoModel, QDistinct> distinctByShowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'showDesc');
    });
  }
}

extension TodoModelQueryProperty
    on QueryBuilder<TodoModel, TodoModel, QQueryProperty> {
  QueryBuilder<TodoModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TodoModel, bool, QQueryOperations> complatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'complated');
    });
  }

  QueryBuilder<TodoModel, String, QQueryOperations> decsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'decs');
    });
  }

  QueryBuilder<TodoModel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<TodoModel, bool, QQueryOperations> showDescProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'showDesc');
    });
  }
}
