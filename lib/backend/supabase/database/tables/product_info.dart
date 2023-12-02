import '../database.dart';

class ProductInfoTable extends SupabaseTable<ProductInfoRow> {
  @override
  String get tableName => 'product_info';

  @override
  ProductInfoRow createRow(Map<String, dynamic> data) => ProductInfoRow(data);
}

class ProductInfoRow extends SupabaseDataRow {
  ProductInfoRow(super.data);

  @override
  SupabaseTable get table => ProductInfoTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

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

  bool? get onSale => getField<bool>('on_sale');
  set onSale(bool? value) => setField<bool>('on_sale', value);

  double? get salesPrice => getField<double>('sales_price');
  set salesPrice(double? value) => setField<double>('sales_price', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  double? get quantity => getField<double>('quantity');
  set quantity(double? value) => setField<double>('quantity', value);
}
