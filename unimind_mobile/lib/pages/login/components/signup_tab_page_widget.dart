import 'package:unimind_core/unimind_core.dart';
import 'package:unimind_frontend/common/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '/common/page_model.dart';
import '/theme/main_theme.dart';
import '/widgets/button.dart';

import 'signup_tab_page_model.dart';
export 'signup_tab_page_model.dart';

class SignupTabPageWidget extends StatefulWidget {
  const SignupTabPageWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignupTabPageWidgetState createState() => _SignupTabPageWidgetState();
}

class _SignupTabPageWidgetState extends State<SignupTabPageWidget> {
  SignUpViewVC vc = Get.put(SignUpViewVC());

  @override
  Widget build(BuildContext context) {
    context.watch<AppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(24, 20, 24, 0),
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: SizedBox(
            height: 700.0,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 10),
                  child: TextFormField(
                      onChanged:
                          vc.authController.signUpUserX.value.onEmailChanged,
                      controller: vc.emailController,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'E-mail',
                        hintStyle: UnimindMainTheme.of(context).bodySmall,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor:
                            UnimindMainTheme.of(context).secondaryBackground,
                        contentPadding:
                            const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                      ),
                      style: UnimindMainTheme.of(context).bodyMedium,
                      validator: vc.emailSignupControllerValidator
                          .asValidator(context)),
                ),
                // Padding(
                //   padding: const EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                //   child: TextFormField(
                //     controller: _model.phoneSignupController,
                //     autofocus: true,
                //     obscureText: false,
                //     decoration: InputDecoration(
                //       hintText: 'Telefon numarası',
                //       hintStyle: UnimindMainTheme.of(context).bodySmall,
                //       enabledBorder: UnderlineInputBorder(
                //         borderSide: const BorderSide(
                //           color: Color(0x00000000),
                //           width: 1,
                //         ),
                //         borderRadius: BorderRadius.circular(10),
                //       ),
                //       focusedBorder: UnderlineInputBorder(
                //         borderSide: const BorderSide(
                //           color: Color(0x00000000),
                //           width: 1,
                //         ),
                //         borderRadius: BorderRadius.circular(10),
                //       ),
                //       errorBorder: UnderlineInputBorder(
                //         borderSide: const BorderSide(
                //           color: Color(0x00000000),
                //           width: 1,
                //         ),
                //         borderRadius: BorderRadius.circular(10),
                //       ),
                //       focusedErrorBorder: UnderlineInputBorder(
                //         borderSide: const BorderSide(
                //           color: Color(0x00000000),
                //           width: 1,
                //         ),
                //         borderRadius: BorderRadius.circular(10),
                //       ),
                //       filled: true,
                //       fillColor:
                //           UnimindMainTheme.of(context).secondaryBackground,
                //       contentPadding:
                //           const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                //     ),
                //     style: UnimindMainTheme.of(context).bodyMedium,
                //     validator: _model.phoneSignupControllerValidator
                //         .asValidator(context),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                  child: TextFormField(
                    onChanged:
                        vc.authController.signUpUserX.value.onNameChanged,
                    controller: vc.nameController,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Ad Soyad',
                      hintStyle: UnimindMainTheme.of(context).bodySmall,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor:
                          UnimindMainTheme.of(context).secondaryBackground,
                      contentPadding:
                          const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                    ),
                    style: UnimindMainTheme.of(context).bodyMedium,
                    validator:
                        vc.nameSignupControllerValidator.asValidator(context),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                  child: TextFormField(
                    onChanged:
                        vc.authController.signUpUserX.value.onBirthDateSelected,
                    controller: vc.birthDateController,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Doğum Tarihi (YYYY-GG-AA)',
                      hintStyle: UnimindMainTheme.of(context).bodySmall,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor:
                          UnimindMainTheme.of(context).secondaryBackground,
                      contentPadding:
                          const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                    ),
                    style: UnimindMainTheme.of(context).bodyMedium,
                    validator: vc.birthDateSignupControllerValidator
                        .asValidator(context),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: ButtonWidget(
                    onPressed: () async {
                      await vc.authController.registerThunk(
                          name: vc.nameController.text,
                          email: vc.emailController.text,
                          birthDate: vc.birthDateController.text,
                          onSuccess: (code) {
                          context.pushNamed(
                          'VerificationPin', queryParameters: {
                            'loginOrRegister': serializeParam(
                              2.0,
                              ParamType.double,
                            ),
                          }.withoutNulls,);
                          },
                          onError: (error) {
                            //toast return error
                          } );
                      setState(() {});
                    },
                    text: 'Hesap Oluştur',
                    options: ButtonOptions(
                      width: 230,
                      height: 50,
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: Colors.white,
                      textStyle:
                          UnimindMainTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: UnimindMainTheme.of(context).primary,
                              ),
                      elevation: 3,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24, 20, 24, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: UnimindMainTheme.of(context).primaryText,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0x3314181B),
                              offset: Offset(0, 2),
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                        alignment: const AlignmentDirectional(0, 0),
                        child: FaIcon(
                          FontAwesomeIcons.google,
                          color:
                              UnimindMainTheme.of(context).secondaryBackground,
                          size: 24,
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: UnimindMainTheme.of(context).primaryText,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0x3314181B),
                              offset: Offset(0, 2),
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                        alignment: const AlignmentDirectional(0, 0),
                        child: FaIcon(
                          FontAwesomeIcons.facebookF,
                          color:
                              UnimindMainTheme.of(context).secondaryBackground,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
