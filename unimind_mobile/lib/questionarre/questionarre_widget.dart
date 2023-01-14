import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class QuestionarreWidget extends StatefulWidget {
  const QuestionarreWidget({Key? key}) : super(key: key);

  @override
  _QuestionarreWidgetState createState() => _QuestionarreWidgetState();
}

class _QuestionarreWidgetState extends State<QuestionarreWidget> {
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          FFLocalizations.of(context).getText(
            'gyrjoup7' /* Grubunu Bul */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryColor,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (FFAppState().questionIndex == 0)
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'swdxwdsi' /* Question 1/3 */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText2,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(8, 12, 8, 0),
                            child: LinearPercentIndicator(
                              percent: 0.3,
                              width: MediaQuery.of(context).size.width * 0.96,
                              lineHeight: 12,
                              animation: false,
                              progressColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              backgroundColor:
                                  FlutterFlowTheme.of(context).lineColor,
                              barRadius: Radius.circular(24),
                              padding: EdgeInsets.zero,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 20, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'a7fm89js' /* How is your mood? */,
                              ),
                              style: FlutterFlowTheme.of(context).title1,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 8, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'sq6rckt8' /* On a scale of 1 - 3 how are yo... */,
                              ),
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 50, 0, 0),
                            child: Container(
                              width: 400,
                              height: MediaQuery.of(context).size.height * 0.5,
                              decoration: BoxDecoration(
                                color: Color(0x00F1F4F8),
                                shape: BoxShape.rectangle,
                              ),
                              alignment:
                                  AlignmentDirectional(0.050000000000000044, 0),
                              child: ListView(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 10, 40, 10),
                                    child: InkWell(
                                      onTap: () async {
                                        FFAppState().update(() {
                                          FFAppState().Q1A = '0';
                                          FFAppState().questionIndex = 1;
                                        });
                                      },
                                      child: ListTile(
                                        title: Text(
                                          FFLocalizations.of(context).getText(
                                            '57owniba' /* Choice 1 */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .title3
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        dense: false,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 5, 0, 5),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 10, 40, 10),
                                    child: InkWell(
                                      onTap: () async {
                                        FFAppState().update(() {
                                          FFAppState().Q1A = '1';
                                          FFAppState().questionIndex = 1;
                                        });
                                      },
                                      child: ListTile(
                                        title: Text(
                                          FFLocalizations.of(context).getText(
                                            'z7hcx3wo' /* Choice 2 */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .title3
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        dense: false,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 5, 0, 5),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 10, 40, 10),
                                    child: InkWell(
                                      onTap: () async {
                                        FFAppState().update(() {
                                          FFAppState().Q1A = '2';
                                          FFAppState().questionIndex = 1;
                                        });
                                      },
                                      child: ListTile(
                                        title: Text(
                                          FFLocalizations.of(context).getText(
                                            'uuioqnsl' /* Choice 3 */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .title3
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        dense: false,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 5, 0, 5),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 32),
                          child: FFButtonWidget(
                            onPressed: () async {
                              FFAppState().update(() {
                                FFAppState().questionIndex = 1;
                              });
                            },
                            text: FFLocalizations.of(context).getText(
                              'wjmiujwr' /* Next Question */,
                            ),
                            options: FFButtonOptions(
                              width: 300,
                              height: 50,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              elevation: 3,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              if (FFAppState().questionIndex == 1)
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '80j4bsov' /* Question 1/3 */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText2,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(8, 12, 8, 0),
                            child: LinearPercentIndicator(
                              percent: 0.6,
                              width: MediaQuery.of(context).size.width * 0.96,
                              lineHeight: 12,
                              animation: false,
                              progressColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              backgroundColor:
                                  FlutterFlowTheme.of(context).lineColor,
                              barRadius: Radius.circular(24),
                              padding: EdgeInsets.zero,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 20, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'uzt14lfy' /* How is your mood? */,
                              ),
                              style: FlutterFlowTheme.of(context).title1,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 8, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '8yz3q2yy' /* On a scale of 1 - 3 how are yo... */,
                              ),
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 50, 0, 0),
                            child: Container(
                              width: 400,
                              height: MediaQuery.of(context).size.height * 0.5,
                              decoration: BoxDecoration(
                                color: Color(0x00F1F4F8),
                                shape: BoxShape.rectangle,
                              ),
                              alignment:
                                  AlignmentDirectional(0.050000000000000044, 0),
                              child: ListView(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 10, 40, 10),
                                    child: InkWell(
                                      onTap: () async {
                                        FFAppState().update(() {
                                          FFAppState().Q1A = '0';
                                          FFAppState().questionIndex = 2;
                                        });
                                      },
                                      child: ListTile(
                                        title: Text(
                                          FFLocalizations.of(context).getText(
                                            'xovb2uua' /* Choice 1 */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .title3
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        dense: false,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 5, 0, 5),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 10, 40, 10),
                                    child: InkWell(
                                      onTap: () async {
                                        FFAppState().update(() {
                                          FFAppState().Q1A = '1';
                                          FFAppState().questionIndex = 2;
                                        });
                                      },
                                      child: ListTile(
                                        title: Text(
                                          FFLocalizations.of(context).getText(
                                            '2ruaka8y' /* Choice 2 */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .title3
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        dense: false,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 5, 0, 5),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 10, 40, 10),
                                    child: InkWell(
                                      onTap: () async {
                                        FFAppState().update(() {
                                          FFAppState().Q1A = '2';
                                          FFAppState().questionIndex = 2;
                                        });
                                      },
                                      child: ListTile(
                                        title: Text(
                                          FFLocalizations.of(context).getText(
                                            'nzzxkkjx' /* Choice 3 */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .title3
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        dense: false,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 5, 0, 5),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 32),
                          child: FFButtonWidget(
                            onPressed: () async {
                              FFAppState().update(() {
                                FFAppState().questionIndex = 2;
                              });
                            },
                            text: FFLocalizations.of(context).getText(
                              'm65tya49' /* Next Question */,
                            ),
                            options: FFButtonOptions(
                              width: 300,
                              height: 50,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              elevation: 3,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              if (FFAppState().questionIndex == 2)
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ikdh32gz' /* Question 1/3 */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText2,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: LinearPercentIndicator(
                              percent: 1,
                              width: MediaQuery.of(context).size.width * 0.9,
                              lineHeight: 12,
                              animation: false,
                              progressColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              backgroundColor:
                                  FlutterFlowTheme.of(context).lineColor,
                              barRadius: Radius.circular(24),
                              padding: EdgeInsets.zero,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 20, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'lbsbnryw' /* How is your mood? */,
                              ),
                              style: FlutterFlowTheme.of(context).title1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'rpzx5301' /* On a scale of 1 - 3 how are yo... */,
                              ),
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                            child: Container(
                              width: 400,
                              height: MediaQuery.of(context).size.height * 0.5,
                              decoration: BoxDecoration(
                                color: Color(0x00F1F4F8),
                                shape: BoxShape.rectangle,
                              ),
                              alignment:
                                  AlignmentDirectional(0.10000000000000009, 0),
                              child: ListView(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 10, 40, 10),
                                    child: InkWell(
                                      onTap: () async {
                                        FFAppState().update(() {
                                          FFAppState().Q1A = '0';
                                        });

                                        context.pushNamed('HomePage');
                                      },
                                      child: ListTile(
                                        title: Text(
                                          FFLocalizations.of(context).getText(
                                            'pmvlbeyb' /* Choice 1 */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .title3
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        dense: false,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 5, 0, 5),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 10, 40, 10),
                                    child: InkWell(
                                      onTap: () async {
                                        FFAppState().update(() {
                                          FFAppState().Q1A = '1';
                                        });

                                        context.pushNamed('HomePage');
                                      },
                                      child: ListTile(
                                        title: Text(
                                          FFLocalizations.of(context).getText(
                                            'nceya57c' /* Choice 2 */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .title3
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        dense: false,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 5, 0, 5),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 10, 40, 10),
                                    child: InkWell(
                                      onTap: () async {
                                        FFAppState().update(() {
                                          FFAppState().Q1A = '2';
                                        });

                                        context.pushNamed('HomePage');
                                      },
                                      child: ListTile(
                                        title: Text(
                                          FFLocalizations.of(context).getText(
                                            'the7t9u7' /* Choice 3 */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .title3
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        dense: false,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 5, 0, 5),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 32),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('SuggestedMeetings');
                            },
                            text: FFLocalizations.of(context).getText(
                              'hmt60jwr' /* See Matched Sessions */,
                            ),
                            options: FFButtonOptions(
                              width: 300,
                              height: 50,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              elevation: 3,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
