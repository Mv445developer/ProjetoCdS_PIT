import '../database.dart';

class AppUsersTable extends SupabaseTable<AppUsersRow> {
  @override
  String get tableName => 'app_users';

  @override
  AppUsersRow createRow(Map<String, dynamic> data) => AppUsersRow(data);
}

class AppUsersRow extends SupabaseDataRow {
  AppUsersRow(super.data);

  @override
  SupabaseTable get table => AppUsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get cpf => getField<String>('cpf')!;
  set cpf(String value) => setField<String>('cpf', value);

  String get phoneNumber => getField<String>('phone_number')!;
  set phoneNumber(String value) => setField<String>('phone_number', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);
}
