import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AddActivityWidget extends StatefulWidget {
  const AddActivityWidget({Key? key}) : super(key: key);

  @override
  _AddActivityWidgetState createState() => _AddActivityWidgetState();
}

class _AddActivityWidgetState extends State<AddActivityWidget> {
  TextEditingController? assignToTextFieldController;

  TextEditingController? typeTextFieldController1;

  TextEditingController? dateTextFieldController;

  TextEditingController? typeTextFieldController2;

  String? radioButtonValue;

  TextEditingController? remarkTextFieldController;

  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    assignToTextFieldController = TextEditingController();
    typeTextFieldController1 = TextEditingController();
    dateTextFieldController = TextEditingController();
    typeTextFieldController2 = TextEditingController();
    remarkTextFieldController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        automaticallyImplyLeading: false,
        leading: Align(
          alignment: AlignmentDirectional(0, 0),
          child: InkWell(
            onTap: () async {
              context.pop();
            },
            child: Image.asset(
              'assets/images/group_3436.png',
              width: 32,
              height: 32,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'okaiupwc' /* Add New Activity */,
          ),
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Poppins',
                color: Color(0xFF5B5B5B),
                fontSize: 17,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                    child: TextFormField(
                      controller: typeTextFieldController1,
                      onChanged: (_) => EasyDebounce.debounce(
                        'typeTextFieldController1',
                        Duration(milliseconds: 200),
                        () => setState(() {}),
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: FFLocalizations.of(context).getText(
                          'ifysoqeu' /* Type */,
                        ),
                        labelStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                        hintText: FFLocalizations.of(context).getText(
                          'wgs4e89x' /* Type Here */,
                        ),
                        hintStyle: FlutterFlowTheme.of(context)
                            .bodyText2
                            .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x210A0A0A),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x210A0A0A),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).customColor3,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).customColor3,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return FFLocalizations.of(context).getText(
                            'rwjms85v' /* Field is required */,
                          );
                        }

                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                    child: TextFormField(
                      controller: assignToTextFieldController,
                      onChanged: (_) => EasyDebounce.debounce(
                        'assignToTextFieldController',
                        Duration(milliseconds: 200),
                        () => setState(() {}),
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: FFLocalizations.of(context).getText(
                          'ge2g2f9h' /* Assign To */,
                        ),
                        labelStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                        hintText: FFLocalizations.of(context).getText(
                          'z0w8h7ak' /* Name of contact */,
                        ),
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x210A0A0A),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x210A0A0A),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).customColor3,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).customColor3,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return FFLocalizations.of(context).getText(
                            'sueo80sq' /* Field is required */,
                          );
                        }

                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                    child: TextFormField(
                      controller: dateTextFieldController,
                      onChanged: (_) => EasyDebounce.debounce(
                        'dateTextFieldController',
                        Duration(milliseconds: 200),
                        () => setState(() {}),
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: FFLocalizations.of(context).getText(
                          'ebgs0p1n' /* Date */,
                        ),
                        labelStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                        hintText: FFLocalizations.of(context).getText(
                          'af0ilssx' /* Date */,
                        ),
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x210A0A0A),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x210A0A0A),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).customColor3,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).customColor3,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        suffixIcon: Icon(
                          Icons.date_range_outlined,
                          color: Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return FFLocalizations.of(context).getText(
                            '8ihdtadm' /* Field is required */,
                          );
                        }

                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                    child: TextFormField(
                      controller: typeTextFieldController2,
                      onChanged: (_) => EasyDebounce.debounce(
                        'typeTextFieldController2',
                        Duration(milliseconds: 200),
                        () => setState(() {}),
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: FFLocalizations.of(context).getText(
                          'fdzu8scv' /* Activity Status */,
                        ),
                        labelStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                        hintText: FFLocalizations.of(context).getText(
                          'olu0vq5o' /* Status */,
                        ),
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x210A0A0A),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x210A0A0A),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).customColor3,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).customColor3,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return FFLocalizations.of(context).getText(
                            '8km4dde6' /* Field is required */,
                          );
                        }

                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                    child: Text(
                      'Pick To',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF635656),
                            fontSize: 16,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 31),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0x00000001),
                      ),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        children: [
                          FlutterFlowRadioButton(
                            options: FFAppState().pickTo.toList(),
                            initialValue: '[pickTo 0]',
                            onChanged: (value) {
                              setState(() => radioButtonValue = value);
                            },
                            optionHeight: 40,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                            selectedTextStyle: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).customColor3,
                                  fontSize: 16,
                                ),
                            textPadding:
                                EdgeInsetsDirectional.fromSTEB(0, 7, 15, 7),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor:
                                FlutterFlowTheme.of(context).customColor3,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 48),
                    child: TextFormField(
                      controller: remarkTextFieldController,
                      onChanged: (_) => EasyDebounce.debounce(
                        'remarkTextFieldController',
                        Duration(milliseconds: 200),
                        () => setState(() {}),
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: FFLocalizations.of(context).getText(
                          '0rlk6ga0' /* Remark */,
                        ),
                        labelStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                        hintText: FFLocalizations.of(context).getText(
                          'wpf8ygfc' /* Remark here */,
                        ),
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x210A0A0A),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x210A0A0A),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).customColor3,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).customColor3,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'Field is required';
                        }

                        return null;
                      },
                    ),
                  ),
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFE11B33), Color(0xFFFDA48E)],
                        stops: [0, 1],
                        begin: AlignmentDirectional(1, -0.94),
                        end: AlignmentDirectional(-1, 0.94),
                      ),
                      borderRadius: BorderRadius.circular(5),
                      shape: BoxShape.rectangle,
                    ),
                    alignment: AlignmentDirectional(0, 0),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (formKey.currentState == null ||
                              !formKey.currentState!.validate()) {
                            return;
                          }
                          if (radioButtonValue == null) {
                            return;
                          }
                        },
                        text: FFLocalizations.of(context).getText(
                          'ejly387d' /* Add */,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
