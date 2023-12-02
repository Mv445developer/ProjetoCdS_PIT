import '/flutter_flow/flutter_flow_util.dart';
import 'adress_add_widget.dart' show AdressAddWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AdressAddModel extends FlutterFlowModel<AdressAddWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepController;
  final cepMask = MaskTextInputFormatter(mask: '##### - ###');
  String? Function(BuildContext, String?)? cepControllerValidator;
  // State field(s) for rua widget.
  FocusNode? ruaFocusNode;
  TextEditingController? ruaController;
  String? Function(BuildContext, String?)? ruaControllerValidator;
  // State field(s) for numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroController;
  String? Function(BuildContext, String?)? numeroControllerValidator;
  // State field(s) for cidade widget.
  FocusNode? cidadeFocusNode1;
  TextEditingController? cidadeController1;
  String? Function(BuildContext, String?)? cidadeController1Validator;
  // State field(s) for cidade widget.
  FocusNode? cidadeFocusNode2;
  TextEditingController? cidadeController2;
  String? Function(BuildContext, String?)? cidadeController2Validator;
  // State field(s) for Referencia widget.
  FocusNode? referenciaFocusNode;
  TextEditingController? referenciaController;
  String? Function(BuildContext, String?)? referenciaControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cepFocusNode?.dispose();
    cepController?.dispose();

    ruaFocusNode?.dispose();
    ruaController?.dispose();

    numeroFocusNode?.dispose();
    numeroController?.dispose();

    cidadeFocusNode1?.dispose();
    cidadeController1?.dispose();

    cidadeFocusNode2?.dispose();
    cidadeController2?.dispose();

    referenciaFocusNode?.dispose();
    referenciaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
