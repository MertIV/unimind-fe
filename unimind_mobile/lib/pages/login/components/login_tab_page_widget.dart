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
    _model.phoneLoginController ??= TextEditingController();
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
      padding: EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 24.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 1.0, 15.0, 0.0),
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
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: UnimindMainTheme.of(context).secondaryBackground,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                ),
                style: UnimindMainTheme.of(context).bodyMedium,
                validator:
                    _model.emailLoginControllerValidator.asValidator(context),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 6.0, 20.0, 6.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 20.0),
                  child: Text(
                    'Veya',
                    style: UnimindMainTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0x98FFFFFF),
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 52.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextFormField(
                controller: _model.phoneLoginController,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Telefon Numarası',
                  hintStyle: UnimindMainTheme.of(context).bodySmall,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: UnimindMainTheme.of(context).secondaryBackground,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                ),
                style: UnimindMainTheme.of(context).bodyMedium,
                validator:
                    _model.phoneLoginControllerValidator.asValidator(context),
              ),
            ),
          ),
          ButtonWidget(
            onPressed: () async {
              if (Navigator.of(context).canPop()) {
                context.pop();
              }
              context.pushNamed('VerificationPin');
            },
            text: 'Giriş Yap',
            options: ButtonOptions(
              width: 230.0,
              height: 50.0,
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: Colors.white,
              textStyle: UnimindMainTheme.of(context).titleSmall.override(
                    fontFamily: 'Poppins',
                    color: UnimindMainTheme.of(context).primary,
                  ),
              elevation: 3.0,
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: ButtonWidget(
              onPressed: () {
                print('Button-ForgotPassword pressed ...');
              },
              text: 'Şifremi unuttum?',
              options: ButtonOptions(
                width: 170.0,
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: UnimindMainTheme.of(context).primary,
                textStyle: UnimindMainTheme.of(context).titleSmall.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                elevation: 0.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 36.0, 20.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Giriş yapmak için hesaplarınızı kullanın',
                  style: UnimindMainTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lexend Deca',
                        color: Color(0x98FFFFFF),
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: UnimindMainTheme.of(context).primaryText,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Color(0x3314181B),
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                    shape: BoxShape.circle,
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: FaIcon(
                    FontAwesomeIcons.google,
                    color: UnimindMainTheme.of(context).secondaryBackground,
                    size: 24.0,
                  ),
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: UnimindMainTheme.of(context).primaryText,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Color(0x3314181B),
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                    shape: BoxShape.circle,
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: FaIcon(
                    FontAwesomeIcons.facebookF,
                    color: UnimindMainTheme.of(context).secondaryBackground,
                    size: 24.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
