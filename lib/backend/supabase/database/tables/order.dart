import '../database.dart';

class OrderTable extends SupabaseTable<OrderRow> {
  @override
  String get tableName => 'order';

  @override
  OrderRow createRow(Map<String, dynamic> data) => OrderRow(data);
}

class OrderRow extends SupabaseDataRow {
  OrderRow(super.data);

  @override
  SupabaseTable get table => OrderTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  List<String> get productId => getListField<String>('product_id');
  set productId(List<String> value) =>
      setListField<String>('product_id', value);

  List<String> get productName => getListField<String>('product_name');
  set productName(List<String> value) =>
      setListField<String>('product_name', value);

  List<double> get productQtd => getListField<double>('product_qtd');
  set productQtd(List<double> value) =>
      setListField<double>('product_qtd', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  List<double> get productPrice => getListField<double>('product_price');
  set productPrice(List<double> value) =>
      setListField<double>('product_price', value);

  double get cartTotal => getField<double>('CartTotal')!;
  set cartTotal(double value) => setField<double>('CartTotal', value);
}
