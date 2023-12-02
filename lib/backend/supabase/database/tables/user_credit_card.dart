import '../database.dart';

class UserCreditCardTable extends SupabaseTable<UserCreditCardRow> {
  @override
  String get tableName => 'user_credit_card';

  @override
  UserCreditCardRow createRow(Map<String, dynamic> data) =>
      UserCreditCardRow(data);
}

class UserCreditCardRow extends SupabaseDataRow {
  UserCreditCardRow(super.data);

  @override
  SupabaseTable get table => UserCreditCardTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  double? get cardNumber => getField<double>('card_number');
  set cardNumber(double? value) => setField<double>('card_number', value);

  String? get validation => getField<String>('validation');
  set validation(String? value) => setField<String>('validation', value);

  double? get cvv => getField<double>('cvv');
  set cvv(double? value) => setField<double>('cvv', value);

  String? get apelido => getField<String>('apelido');
  set apelido(String? value) => setField<String>('apelido', value);
}
