import '../database.dart';

class UserCreditCardDefautTable extends SupabaseTable<UserCreditCardDefautRow> {
  @override
  String get tableName => 'user_credit_card_defaut';

  @override
  UserCreditCardDefautRow createRow(Map<String, dynamic> data) =>
      UserCreditCardDefautRow(data);
}

class UserCreditCardDefautRow extends SupabaseDataRow {
  UserCreditCardDefautRow(super.data);

  @override
  SupabaseTable get table => UserCreditCardDefautTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get cardId => getField<String>('card_id');
  set cardId(String? value) => setField<String>('card_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  double? get cardNumber => getField<double>('card_number');
  set cardNumber(double? value) => setField<double>('card_number', value);

  String? get validation => getField<String>('validation');
  set validation(String? value) => setField<String>('validation', value);

  double? get cvv => getField<double>('cvv');
  set cvv(double? value) => setField<double>('cvv', value);

  bool? get defaut => getField<bool>('defaut');
  set defaut(bool? value) => setField<bool>('defaut', value);
}
