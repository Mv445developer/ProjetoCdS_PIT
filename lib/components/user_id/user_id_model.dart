import '/flutter_flow/flutter_flow_util.dart';
import 'user_id_widget.dart' show UserIdWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class UserIdModel extends FlutterFlowModel<UserIdWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for user_name widget.
  FocusNode? userNameFocusNode;
  TextEditingController? userNameController;
  String? Function(BuildContext, String?)? userNameControllerValidator;
  // State field(s) for user_email widget.
  FocusNode? userEmailFocusNode;
  TextEditingController? userEmailController;
  String? Function(BuildContext, String?)? userEmailControllerValidator;
  // State field(s) for user_phone widget.
  FocusNode? userPhoneFocusNode;
  TextEditingController? userPhoneController;
  final userPhoneMask = MaskTextInputFormatter(mask: '(##) # ####-####');
  String? Function(BuildContext, String?)? userPhoneControllerValidator;
  // State field(s) for user_cpf widget.
  FocusNode? userCpfFocusNode;
  TextEditingController? userCpfController;
  final userCpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? userCpfControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    userNameFocusNode?.dispose();
    userNameController?.dispose();

    userEmailFocusNode?.dispose();
    userEmailController?.dispose();

    userPhoneFocusNode?.dispose();
    userPhoneController?.dispose();

    userCpfFocusNode?.dispose();
    userCpfController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
