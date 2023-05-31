import '../../common/keep_alive_wrapper.dart';
import '../../common/page_model.dart';
import '../../common/utils.dart';
import './components/login_tab_page_widget.dart';
import './components/signup_tab_page_widget.dart';
import '/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'sign_in_model.dart';
export 'sign_in_model.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget({
    Key? key,
    this.tabIndex,
  }) : super(key: key);

  final int? tabIndex;

  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  late SignInModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignInModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<AppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: UnimindMainTheme.of(context).primary,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SelectionArea(
                          child: Text(
                        'unimind',
                        style: UnimindMainTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: UnimindMainTheme.of(context)
                                  .primaryBackground,
                              fontSize: 38,
                            ),
                      )),
                    ],
                  ),
                )),
            Expanded(
              flex: 8,
              child: DefaultTabController(
                length: 2,
                initialIndex: min(
                    valueOrDefault<int>(
                      widget.tabIndex,
                      0,
                    ),
                    1),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment(0, 0),
                      child: TabBar(
                        isScrollable: true,
                        labelColor: UnimindMainTheme.of(context).primaryBtnText,
                        labelPadding:
                            EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        labelStyle: UnimindMainTheme.of(context).titleMedium,
                        indicatorColor:
                            UnimindMainTheme.of(context).primaryBtnText,
                        tabs: [
                          Tab(
                            text: 'Giriş Yap',
                          ),
                          Tab(
                            text: 'Kayıt Ol',
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          KeepAliveWidgetWrapper(
                            builder: (context) => Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: wrapWithModel(
                                model: _model.loginTabPageModel,
                                updateCallback: () => setState(() {}),
                                child: LoginTabPageWidget(),
                              ),
                            ),
                          ),
                          KeepAliveWidgetWrapper(
                            builder: (context) => Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: wrapWithModel(
                                model: _model.signupTabPageModel,
                                updateCallback: () => setState(() {}),
                                child: SignupTabPageWidget(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
