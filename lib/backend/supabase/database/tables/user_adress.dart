import '../database.dart';

class UserAdressTable extends SupabaseTable<UserAdressRow> {
  @override
  String get tableName => 'user_adress';

  @override
  UserAdressRow createRow(Map<String, dynamic> data) => UserAdressRow(data);
}

class UserAdressRow extends SupabaseDataRow {
  UserAdressRow(super.data);

  @override
  SupabaseTable get table => UserAdressTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get cep => getField<String>('cep')!;
  set cep(String value) => setField<String>('cep', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get neighborhood => getField<String>('neighborhood')!;
  set neighborhood(String value) => setField<String>('neighborhood', value);

  String get number => getField<String>('number')!;
  set number(String value) => setField<String>('number', value);

  String get city => getField<String>('city')!;
  set city(String value) => setField<String>('city', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);
}
