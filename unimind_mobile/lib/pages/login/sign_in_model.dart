import '/common/page_model.dart';
import 'package:flutter/material.dart';

import 'components/login_tab_page_model.dart';
import 'components/signup_tab_page_model.dart';

class SignInModel extends PageModel {
  ///  State fields for stateful widgets in this page.

  // Model for loginTabPage component.
  late LoginTabPageModel loginTabPageModel;
  // Model for signupTabPage component.
  late SignupTabPageModel signupTabPageModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    loginTabPageModel = createModel(context, () => LoginTabPageModel());
    signupTabPageModel = createModel(context, () => SignupTabPageModel());
  }

  void dispose() {
    loginTabPageModel.dispose();
    signupTabPageModel.dispose();
  }

  /// Additional helper methods are added here.
}
