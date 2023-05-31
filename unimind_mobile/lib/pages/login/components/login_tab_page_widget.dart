import '/theme/main_theme.dart';
import '/common/utils.dart';
import '/widgets/button.dart';
import '/common/page_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'login_tab_page_model.dart';
export 'login_tab_page_model.dart';

class LoginTabPageWidget extends StatefulWidget {
  const LoginTabPageWidget({Key? key}) : super(key: key);

  @override
  _LoginTabPageWidgetState createState() => _LoginTabPageWidgetState();
}

class _LoginTabPageWidgetState extends State<LoginTabPageWidget> {
  late LoginTabPageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginTabPageModel());

    _model.emailLoginController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<AppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(24, 20, 24, 0),
      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 1, 15, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextFormField(
                  controller: _model.emailLoginController,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'E-mail',
                    hintStyle: UnimindMainTheme.of(context).bodySmall,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: UnimindMainTheme.of(context).secondaryBackground,
                    contentPadding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                  ),
                  style: UnimindMainTheme.of(context).bodyMedium,
                  validator:
                      _model.emailLoginControllerValidator.asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: ButtonWidget(
                onPressed: () async {
                  if (Navigator.of(context).canPop()) {
                    context.pop();
                  }
                  context.pushNamed(
                    'VerificationPin',
                    // queryParams: {
                    //   'loginOrRegister': serializeParam(
                    //     1.0,
                    //     ParamType.double,
                    //   ),
                    // }.withoutNulls,
                  );
                },
                text: 'Giriş Yap',
                options: ButtonOptions(
                  width: 230,
                  height: 50,
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  color: Colors.white,
                  textStyle: UnimindMainTheme.of(context).titleSmall.override(
                        fontFamily: 'Poppins',
                        color: UnimindMainTheme.of(context).primary,
                      ),
                  elevation: 3,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: ButtonWidget(
                onPressed: () {
                  print('Button-ForgotPassword pressed ...');
                },
                text: 'Şifremi unuttum?',
                options: ButtonOptions(
                  width: 170,
                  height: 40,
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  color: UnimindMainTheme.of(context).primary,
                  textStyle: UnimindMainTheme.of(context).titleSmall.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  elevation: 0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 20, 24, 8),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: UnimindMainTheme.of(context).primaryText,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x3314181B),
                          offset: Offset(0, 2),
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    alignment: AlignmentDirectional(0, 0),
                    child: FaIcon(
                      FontAwesomeIcons.google,
                      color: UnimindMainTheme.of(context).secondaryBackground,
                      size: 24,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: UnimindMainTheme.of(context).primaryText,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x3314181B),
                          offset: Offset(0, 2),
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    alignment: AlignmentDirectional(0, 0),
                    child: FaIcon(
                      FontAwesomeIcons.facebookF,
                      color: UnimindMainTheme.of(context).secondaryBackground,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
