import '../components/session_card2_widget.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MeetingsWidget extends StatefulWidget {
  const MeetingsWidget({Key? key}) : super(key: key);

  @override
  _MeetingsWidgetState createState() => _MeetingsWidgetState();
}

class _MeetingsWidgetState extends State<MeetingsWidget> {
  DateTimeRange? calendarSelectedDay;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
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
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
          child: Text(
            FFLocalizations.of(context).getText(
              'hheoqsxl' /* Seanslarım */,
            ),
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).primaryColor,
                  fontSize: 22,
                ),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0x230E151B),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: FlutterFlowCalendar(
                          color: FlutterFlowTheme.of(context).primaryColor,
                          iconColor: FlutterFlowTheme.of(context).primaryColor,
                          weekFormat: false,
                          weekStartsMonday: false,
                          rowHeight: 43,
                          onChange: (DateTimeRange? newSelectedDate) {
                            setState(
                                () => calendarSelectedDay = newSelectedDate);
                          },
                          titleStyle: FlutterFlowTheme.of(context).bodyText1,
                          dayOfWeekStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          dateStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          selectedDateStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          inactiveDateStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 5),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'nf6bg8ki' /* Gelecek Seanslar */,
                        ),
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                    ListView(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        SessionCard2Widget(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
