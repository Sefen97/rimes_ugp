import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class LeadFilterWidget extends StatefulWidget {
  const LeadFilterWidget({Key? key}) : super(key: key);

  @override
  _LeadFilterWidgetState createState() => _LeadFilterWidgetState();
}

class _LeadFilterWidgetState extends State<LeadFilterWidget> {
  DateTime? datePicked1;
  TextEditingController? dateFromTextFieldController;
  DateTime? datePicked2;
  TextEditingController? dateToTextFieldController;
  TextEditingController? assignToTextFieldController;
  TextEditingController? contactTypeTextFieldController;
  TextEditingController? ratingTextFieldController;
  TextEditingController? leadSourceTextFieldController;
  TextEditingController? leadTypeTextFieldController;

  @override
  void initState() {
    super.initState();
    assignToTextFieldController = TextEditingController();
    contactTypeTextFieldController = TextEditingController();
    ratingTextFieldController = TextEditingController();
    leadSourceTextFieldController = TextEditingController();
    leadTypeTextFieldController = TextEditingController();
    dateFromTextFieldController =
        TextEditingController(text: dateTimeFormat('d/M/y', datePicked1));
    dateToTextFieldController =
        TextEditingController(text: dateTimeFormat('d/M/y', datePicked2));
  }

  @override
  void dispose() {
    assignToTextFieldController?.dispose();
    contactTypeTextFieldController?.dispose();
    ratingTextFieldController?.dispose();
    leadSourceTextFieldController?.dispose();
    leadTypeTextFieldController?.dispose();
    dateFromTextFieldController?.dispose();
    dateToTextFieldController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 650,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Padding(
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
            InkWell(
              onTap: () async {
                context.pushNamed(
                  'LoockupCommonSearchScreen',
                  queryParams: {
                    'appBarTitle':
                        serializeParam('Contact type', ParamType.String),
                    'loockupId': serializeParam(10, ParamType.int),
                    'subscribId': serializeParam(2, ParamType.int),
                    'languageId': serializeParam(2, ParamType.int),
                  }.withoutNulls,
                );
              },
              child: Container(
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
                            'y3jxbwxs' /* Contact Type */,
                          ),
                          hintText: FFLocalizations.of(context).getText(
                            '21xvq7d6' /* Type of contact */,
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
            ),
            InkWell(
              onTap: () async {
                context.pushNamed(
                  'LoockupCommonSearchScreen',
                  queryParams: {
                    'appBarTitle': serializeParam('Rating', ParamType.String),
                    'loockupId': serializeParam(65, ParamType.int),
                    'subscribId': serializeParam(2, ParamType.int),
                    'languageId': serializeParam(2, ParamType.int),
                  }.withoutNulls,
                );
              },
              child: Container(
                height: 80,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                      child: TextFormField(
                        controller: ratingTextFieldController,
                        readOnly: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            'r3sqhij0' /* Rating */,
                          ),
                          hintText: FFLocalizations.of(context).getText(
                            '1cai98h2' /* Select */,
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
            ),
            InkWell(
              onTap: () async {
                context.pushNamed(
                  'LoockupCommonSearchScreen',
                  queryParams: {
                    'appBarTitle':
                        serializeParam('Lead Source', ParamType.String),
                    'loockupId': serializeParam(24, ParamType.int),
                    'subscribId': serializeParam(2, ParamType.int),
                    'languageId': serializeParam(2, ParamType.int),
                  }.withoutNulls,
                );
              },
              child: Container(
                height: 80,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                      child: TextFormField(
                        controller: leadSourceTextFieldController,
                        readOnly: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            'lmy4gm2i' /* Lead Source */,
                          ),
                          hintText: FFLocalizations.of(context).getText(
                            'wr8u8qcz' /* Select */,
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
            ),
            InkWell(
              onTap: () async {
                context.pushNamed(
                  'LookuopAllEmployeesSearchScreen',
                  queryParams: {
                    'appBarTitle':
                        serializeParam('Assigned To', ParamType.String),
                    'userId': serializeParam(10, ParamType.int),
                  }.withoutNulls,
                );
              },
              child: Container(
                height: 80,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                      child: TextFormField(
                        controller: assignToTextFieldController,
                        readOnly: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            're6m1f6j' /* Assign To */,
                          ),
                          hintText: FFLocalizations.of(context).getText(
                            'hzyo6n6f' /* Select */,
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
            ),
            InkWell(
              onTap: () async {
                context.pushNamed(
                  'LoockupCommonSearchScreen',
                  queryParams: {
                    'appBarTitle':
                        serializeParam('Lead Type', ParamType.String),
                    'loockupId': serializeParam(28, ParamType.int),
                    'subscribId': serializeParam(2, ParamType.int),
                    'languageId': serializeParam(2, ParamType.int),
                  }.withoutNulls,
                );
              },
              child: Container(
                height: 80,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                      child: TextFormField(
                        controller: leadTypeTextFieldController,
                        readOnly: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            'ej056fx5' /* Lead Type */,
                          ),
                          hintText: FFLocalizations.of(context).getText(
                            'gi09g6cv' /* Select */,
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
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                      child: Container(
                        height: 50,
                        child: Stack(
                          children: [
                            TextFormField(
                              controller: dateFromTextFieldController,
                              onChanged: (_) => EasyDebounce.debounce(
                                'dateFromTextFieldController',
                                Duration(milliseconds: 200),
                                () => setState(() {}),
                              ),
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: valueOrDefault<String>(
                                  dateTimeFormat('d/M/y', datePicked1),
                                  'Date From',
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                hintText: valueOrDefault<String>(
                                  dateTimeFormat('d/M/y', datePicked1),
                                  'Date From',
                                ),
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodyText2,
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
                                    color: FlutterFlowTheme.of(context)
                                        .customColor3,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .customColor3,
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
                              keyboardType: TextInputType.datetime,
                            ),
                            InkWell(
                              onTap: () async {
                                // DateFromTimePiker
                                await DatePicker.showDatePicker(
                                  context,
                                  showTitleActions: true,
                                  onConfirm: (date) {
                                    setState(() => datePicked1 = date);
                                  },
                                  currentTime: getCurrentTimestamp,
                                  minTime: DateTime(0, 0, 0),
                                  locale: LocaleType.values.firstWhere(
                                    (l) =>
                                        l.name ==
                                        FFLocalizations.of(context)
                                            .languageCode,
                                    orElse: () => LocaleType.en,
                                  ),
                                );
                              },
                              child: Container(
                                width: 200,
                                decoration: BoxDecoration(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
                      child: Container(
                        height: 50,
                        child: Stack(
                          children: [
                            TextFormField(
                              controller: dateToTextFieldController,
                              onChanged: (_) => EasyDebounce.debounce(
                                'dateToTextFieldController',
                                Duration(milliseconds: 200),
                                () => setState(() {}),
                              ),
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: valueOrDefault<String>(
                                  dateTimeFormat('d/M/y', datePicked2),
                                  'Date To',
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                hintText: valueOrDefault<String>(
                                  dateTimeFormat('d/M/y', datePicked2),
                                  'Date To',
                                ),
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodyText2,
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
                                    color: FlutterFlowTheme.of(context)
                                        .customColor3,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .customColor3,
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
                              keyboardType: TextInputType.datetime,
                            ),
                            InkWell(
                              onTap: () async {
                                // DateToTimePiker
                                await DatePicker.showDatePicker(
                                  context,
                                  showTitleActions: true,
                                  onConfirm: (date) {
                                    setState(() => datePicked2 = date);
                                  },
                                  currentTime: getCurrentTimestamp,
                                  minTime: DateTime(0, 0, 0),
                                  locale: LocaleType.values.firstWhere(
                                    (l) =>
                                        l.name ==
                                        FFLocalizations.of(context)
                                            .languageCode,
                                    orElse: () => LocaleType.en,
                                  ),
                                );
                              },
                              child: Container(
                                width: 200,
                                decoration: BoxDecoration(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 30, 16, 10),
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
                                ratingTextFieldController?.clear();
                                contactTypeTextFieldController?.clear();
                              });
                              Navigator.pop(context);
                            },
                            text: FFLocalizations.of(context).getText(
                              'z8ozwg5n' /* Reset */,
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: double.infinity,
                              color: Color(0x00000001),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
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
                              '3dbmdyvc' /* Apply */,
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: double.infinity,
                              color: Color(0x00000001),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
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
      ),
    );
  }
}
