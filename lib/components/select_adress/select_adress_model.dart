import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_adress_widget.dart' show SelectAdressWidget;
import 'package:flutter/material.dart';

class SelectAdressModel extends FlutterFlowModel<SelectAdressWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.

  Map<UserAdressRow, bool> checkboxValueMap = {};
  List<UserAdressRow> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
