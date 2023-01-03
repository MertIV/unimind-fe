import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BlogCardWidget extends StatefulWidget {
  const BlogCardWidget({Key? key}) : super(key: key);

  @override
  _BlogCardWidgetState createState() => _BlogCardWidgetState();
}

class _BlogCardWidgetState extends State<BlogCardWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1607962837359-5e7e89f86776?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
                    width: double.infinity,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                    child: Icon(
                      Icons.fitness_center,
                      color: Color(0xFF57636C),
                      size: 24,
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'cz09vjbr' /* Fitness */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF57636C),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '4l58o2sj' /* The Running Ragamuffins */,
                  ),
                  style: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF101213),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '5nwc5a55' /* 216 Members */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText2.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF57636C),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
