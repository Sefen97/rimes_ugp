import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class LeadFilterWidget extends StatefulWidget {
  const LeadFilterWidget({Key? key}) : super(key: key);

  @override
  _LeadFilterWidgetState createState() => _LeadFilterWidgetState();
}

class _LeadFilterWidgetState extends State<LeadFilterWidget> {
  TextEditingController? contactTypeTextFieldController;

  TextEditingController? ratingTextFieldController;

  @override
  void initState() {
    super.initState();
    contactTypeTextFieldController = TextEditingController();
    ratingTextFieldController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(1, 1, 1, 1),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            child: Container(
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).lineColor,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          Container(
            height: 80,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                  child: TextFormField(
                    controller: contactTypeTextFieldController,
                    readOnly: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: FFLocalizations.of(context).getText(
                        'h8yuc05n' /* Contact Type */,
                      ),
                      hintText: FFLocalizations.of(context).getText(
                        'pmmkx20e' /* Type of contact */,
                      ),
                      hintStyle: FlutterFlowTheme.of(context).bodyText2,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x210A0A0A),
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x210A0A0A),
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).customColor3,
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).customColor3,
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                      suffixIcon: Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xFF757575),
                        size: 22,
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0x00000001),
                    border: Border.all(
                      color: Color(0x00000001),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                  child: TextFormField(
                    controller: ratingTextFieldController,
                    autofocus: true,
                    readOnly: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: FFLocalizations.of(context).getText(
                        '3akcat62' /* Rating */,
                      ),
                      hintText: FFLocalizations.of(context).getText(
                        'dvratuf9' /* Select */,
                      ),
                      hintStyle: FlutterFlowTheme.of(context).bodyText2,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x210A0A0A),
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x210A0A0A),
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).customColor3,
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).customColor3,
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                      suffixIcon: Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xFF757575),
                        size: 22,
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0x00000001),
                    border: Border.all(
                      color: Color(0x00000001),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 30, 16, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                    child: Container(
                      width: 100,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFF3F3F3),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            setState(() {
                              contactTypeTextFieldController?.clear();
                              ratingTextFieldController?.clear();
                            });
                            Navigator.pop(context);
                          },
                          text: FFLocalizations.of(context).getText(
                            '5g7kre6x' /* Reset */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: double.infinity,
                            color: Color(0x00000001),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0x70635656),
                                    ),
                            borderSide: BorderSide(
                              color: Color(0x00000001),
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          showLoadingIndicator: false,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                    child: Container(
                      width: 100,
                      height: 48,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFFE11B33), Color(0xFFFDA48E)],
                          stops: [0, 1],
                          begin: AlignmentDirectional(1, -0.94),
                          end: AlignmentDirectional(-1, 0.94),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                          text: FFLocalizations.of(context).getText(
                            'xilv7q7x' /* Apply */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: double.infinity,
                            color: Color(0x00000001),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFDFFFFFF),
                                    ),
                            borderSide: BorderSide(
                              color: Color(0x00000001),
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
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
