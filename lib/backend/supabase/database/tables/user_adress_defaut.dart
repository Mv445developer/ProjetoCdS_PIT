import '../database.dart';

class UserAdressDefautTable extends SupabaseTable<UserAdressDefautRow> {
  @override
  String get tableName => 'user_adress_defaut';

  @override
  UserAdressDefautRow createRow(Map<String, dynamic> data) =>
      UserAdressDefautRow(data);
}

class UserAdressDefautRow extends SupabaseDataRow {
  UserAdressDefautRow(super.data);

  @override
  SupabaseTable get table => UserAdressDefautTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get adressId => getField<String>('adress_id');
  set adressId(String? value) => setField<String>('adress_id', value);

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

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);

  bool get defaut => getField<bool>('defaut')!;
  set defaut(bool value) => setField<bool>('defaut', value);
}
