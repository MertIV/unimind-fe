import '../components/enrolled_session_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EnrolledSessionsWidget extends StatefulWidget {
  const EnrolledSessionsWidget({Key? key}) : super(key: key);

  @override
  _EnrolledSessionsWidgetState createState() => _EnrolledSessionsWidgetState();
}

class _EnrolledSessionsWidgetState extends State<EnrolledSessionsWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return EnrolledSessionWidget();
  }
}
