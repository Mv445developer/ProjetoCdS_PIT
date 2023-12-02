import '../database.dart';

class ShpoCartTable extends SupabaseTable<ShpoCartRow> {
  @override
  String get tableName => 'shpo_cart';

  @override
  ShpoCartRow createRow(Map<String, dynamic> data) => ShpoCartRow(data);
}

class ShpoCartRow extends SupabaseDataRow {
  ShpoCartRow(super.data);

  @override
  SupabaseTable get table => ShpoCartTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get selectQtd => getField<int>('select_qtd');
  set selectQtd(int? value) => setField<int>('select_qtd', value);

  double? get totalPrice => getField<double>('total_price');
  set totalPrice(double? value) => setField<double>('total_price', value);
}
