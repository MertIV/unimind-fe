import 'package:unimind_frontend/common/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '/common/api_requests/api_calls.dart';
import '/common/page_model.dart';
import '/theme/main_theme.dart';
import '/widgets/button.dart';

import 'signup_tab_page_model.dart';
export 'signup_tab_page_model.dart';

class SignupTabPageWidget extends StatefulWidget {
  const SignupTabPageWidget({Key? key}) : super(key: key);

  @override
  _SignupTabPageWidgetState createState() => _SignupTabPageWidgetState();
}

class _SignupTabPageWidgetState extends State<SignupTabPageWidget> {
  late SignupTabPageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignupTabPageModel());

    _model.emailSignupController ??= TextEditingController();
    _model.phoneSignupController ??= TextEditingController();
    _model.nameSignupController ??= TextEditingController();
    _model.birthdateSignupController ??= TextEditingController();
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
      padding: const EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 24.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 10.0),
            child: TextFormField(
              controller: _model.emailSignupController,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'E-mail',
                hintStyle: UnimindMainTheme.of(context).bodySmall,
                enabledBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: UnimindMainTheme.of(context).secondaryBackground,
                contentPadding:
                    const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
              ),
              style: UnimindMainTheme.of(context).bodyMedium,
              validator:
                  _model.emailSignupControllerValidator.asValidator(context),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 10.0),
            child: TextFormField(
              controller: _model.phoneSignupController,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Telefon numarası',
                hintStyle: UnimindMainTheme.of(context).bodySmall,
                enabledBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: UnimindMainTheme.of(context).secondaryBackground,
                contentPadding:
                    const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
              ),
              style: UnimindMainTheme.of(context).bodyMedium,
              validator:
                  _model.phoneSignupControllerValidator.asValidator(context),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 10.0),
            child: TextFormField(
              controller: _model.nameSignupController,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Ad Soyad',
                hintStyle: UnimindMainTheme.of(context).bodySmall,
                enabledBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: UnimindMainTheme.of(context).secondaryBackground,
                contentPadding:
                    const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
              ),
              style: UnimindMainTheme.of(context).bodyMedium,
              validator:
                  _model.nameSignupControllerValidator.asValidator(context),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 32.0),
            child: TextFormField(
              controller: _model.birthdateSignupController,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Doğum Tarihi (GG/AA/YYYY)',
                hintStyle: UnimindMainTheme.of(context).bodySmall,
                enabledBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: UnimindMainTheme.of(context).secondaryBackground,
                contentPadding:
                    const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
              ),
              style: UnimindMainTheme.of(context).bodyMedium,
              validator: _model.birthdateSignupControllerValidator
                  .asValidator(context),
            ),
          ),
          ButtonWidget(
            onPressed: () async {
              _model.apiResult0l3 = await RegisterUserCall.call(
                email: _model.emailSignupController.text,
                phone: _model.phoneSignupController.text,
                name: _model.nameSignupController.text,
                birthdate: _model.birthdateSignupController.text,
              );
              if ((_model.apiResult0l3?.succeeded ?? true)) {
                context.pushNamed(
                  'VerificationPin',
                );
              } else {
                context.pushNamed(
                  'VerificationPin',
                );
              }

              setState(() {});
            },
            text: 'Hesap Oluştur',
            options: ButtonOptions(
              width: 230.0,
              height: 50.0,
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: Colors.white,
              textStyle: UnimindMainTheme.of(context).titleSmall.override(
                    fontFamily: 'Poppins',
                    color: UnimindMainTheme.of(context).primary,
                  ),
              elevation: 3.0,
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Text(
                    'Kayıt olmak için hesaplarınızı kullanın',
                    style: UnimindMainTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lexend Deca',
                          color: const Color(0x98FFFFFF),
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: UnimindMainTheme.of(context).primaryText,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Color(0x3314181B),
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                    shape: BoxShape.circle,
                  ),
                  alignment: const AlignmentDirectional(0.0, 0.0),
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
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Color(0x3314181B),
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                    shape: BoxShape.circle,
                  ),
                  alignment: const AlignmentDirectional(0.0, 0.0),
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
