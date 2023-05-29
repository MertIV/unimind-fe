import '/common/page_model.dart';
import 'package:flutter/material.dart';

class LoginTabPageModel extends PageModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for email-login widget.
  TextEditingController? emailLoginController;
  String? Function(BuildContext, String?)? emailLoginControllerValidator;
  // State field(s) for phone-login widget.
  TextEditingController? phoneLoginController;
  String? Function(BuildContext, String?)? phoneLoginControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailLoginController?.dispose();
    phoneLoginController?.dispose();
  }

  /// Additional helper methods are added here.
}
