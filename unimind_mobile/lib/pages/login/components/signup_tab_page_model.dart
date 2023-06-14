import 'package:unimind_core/unimind_core.dart';
import 'package:flutter/material.dart';

import '../../../common/page_model.dart';

class SignupTabPageModel extends PageModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for email-signup widget.
  TextEditingController? emailSignupController;
  String? Function(BuildContext, String?)? emailSignupControllerValidator;
  // State field(s) for phone-signup widget.
  TextEditingController? phoneSignupController;
  String? Function(BuildContext, String?)? phoneSignupControllerValidator;
  // State field(s) for name-signup widget.
  TextEditingController? nameSignupController;
  String? Function(BuildContext, String?)? nameSignupControllerValidator;
  // State field(s) for birthdate-signup widget.
  TextEditingController? birthdateSignupController;
  String? Function(BuildContext, String?)? birthdateSignupControllerValidator;
  // Stores action output result for [Backend Call - API (RegisterUser)] action in Button-Login widget.
  ApiCallResponse? apiResult0l3;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailSignupController?.dispose();
    phoneSignupController?.dispose();
    nameSignupController?.dispose();
    birthdateSignupController?.dispose();
  }

  /// Additional helper methods are added here.
}
