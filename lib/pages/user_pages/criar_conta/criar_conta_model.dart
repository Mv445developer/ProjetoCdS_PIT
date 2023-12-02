import '/flutter_flow/flutter_flow_util.dart';
import 'criar_conta_widget.dart' show CriarContaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CriarContaModel extends FlutterFlowModel<CriarContaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  String? _nameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneController;
  final telefoneMask = MaskTextInputFormatter(mask: '(##) # ####-####');
  String? Function(BuildContext, String?)? telefoneControllerValidator;
  String? _telefoneControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfController;
  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfControllerValidator;
  String? _cpfControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaControllerValidator;
  String? _senhaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for senha2 widget.
  FocusNode? senha2FocusNode;
  TextEditingController? senha2Controller;
  late bool senha2Visibility;
  String? Function(BuildContext, String?)? senha2ControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    nameControllerValidator = _nameControllerValidator;
    emailControllerValidator = _emailControllerValidator;
    telefoneControllerValidator = _telefoneControllerValidator;
    cpfControllerValidator = _cpfControllerValidator;
    senhaVisibility = false;
    senhaControllerValidator = _senhaControllerValidator;
    senha2Visibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneController?.dispose();

    cpfFocusNode?.dispose();
    cpfController?.dispose();

    senhaFocusNode?.dispose();
    senhaController?.dispose();

    senha2FocusNode?.dispose();
    senha2Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
