import '/flutter_flow/flutter_flow_util.dart';
import 'card_add_widget.dart' show CardAddWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CardAddModel extends FlutterFlowModel<CardAddWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for card_name widget.
  FocusNode? cardNameFocusNode;
  TextEditingController? cardNameController;
  String? Function(BuildContext, String?)? cardNameControllerValidator;
  // State field(s) for card_number widget.
  FocusNode? cardNumberFocusNode;
  TextEditingController? cardNumberController;
  final cardNumberMask = MaskTextInputFormatter(mask: '#### #### #### ####');
  String? Function(BuildContext, String?)? cardNumberControllerValidator;
  // State field(s) for card_date widget.
  FocusNode? cardDateFocusNode;
  TextEditingController? cardDateController;
  final cardDateMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? cardDateControllerValidator;
  // State field(s) for card_cvv widget.
  FocusNode? cardCvvFocusNode;
  TextEditingController? cardCvvController;
  final cardCvvMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? cardCvvControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cardNameFocusNode?.dispose();
    cardNameController?.dispose();

    cardNumberFocusNode?.dispose();
    cardNumberController?.dispose();

    cardDateFocusNode?.dispose();
    cardDateController?.dispose();

    cardCvvFocusNode?.dispose();
    cardCvvController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
