import '../database.dart';

class ProductsTable extends SupabaseTable<ProductsRow> {
  @override
  String get tableName => 'products';

  @override
  ProductsRow createRow(Map<String, dynamic> data) => ProductsRow(data);
}

class ProductsRow extends SupabaseDataRow {
  ProductsRow(super.data);

  @override
  SupabaseTable get table => ProductsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);

  double get price => getField<double>('price')!;
  set price(double value) => setField<double>('price', value);

  double get quantity => getField<double>('quantity')!;
  set quantity(double value) => setField<double>('quantity', value);

  bool get onSale => getField<bool>('on_sale')!;
  set onSale(bool value) => setField<bool>('on_sale', value);

  String get category => getField<String>('category')!;
  set category(String value) => setField<String>('category', value);
}
