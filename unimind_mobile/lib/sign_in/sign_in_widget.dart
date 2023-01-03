import '../components/login_tab_page_widget.dart';
import '../components/signup_tab_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SelectionArea(
                        child: Text(
                      FFLocalizations.of(context).getText(
                        'tbmktfz6' /* unimind */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            fontSize: 38,
                          ),
                    )),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
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
                    TabBar(
                      isScrollable: true,
                      labelColor: FlutterFlowTheme.of(context).primaryBtnText,
                      labelPadding:
                          EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      labelStyle: FlutterFlowTheme.of(context).subtitle1,
                      indicatorColor:
                          FlutterFlowTheme.of(context).primaryBtnText,
                      tabs: [
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            'r5cmoeuu' /* Giriş Yap */,
                          ),
                        ),
                        Tab(
                          text: FFLocalizations.of(context).getText(
                            '03d42a5b' /* Kayıt Ol */,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          KeepAliveWidgetWrapper(
                            builder: (context) => LoginTabPageWidget(),
                          ),
                          KeepAliveWidgetWrapper(
                            builder: (context) => SignupTabPageWidget(),
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
