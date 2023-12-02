import '../database.dart';

class AdressInfoTable extends SupabaseTable<AdressInfoRow> {
  @override
  String get tableName => 'adress_info';

  @override
  AdressInfoRow createRow(Map<String, dynamic> data) => AdressInfoRow(data);
}

class AdressInfoRow extends SupabaseDataRow {
  AdressInfoRow(super.data);

  @override
  SupabaseTable get table => AdressInfoTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get neighborhood => getField<String>('neighborhood');
  set neighborhood(String? value) => setField<String>('neighborhood', value);

  String? get number => getField<String>('number');
  set number(String? value) => setField<String>('number', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);

  String? get adressId => getField<String>('adress_id');
  set adressId(String? value) => setField<String>('adress_id', value);
}
