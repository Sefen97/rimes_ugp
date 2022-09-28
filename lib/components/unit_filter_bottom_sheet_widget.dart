import '../components/city_bottom_sheet_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class UnitFilterBottomSheetWidget extends StatefulWidget {
  const UnitFilterBottomSheetWidget({Key? key}) : super(key: key);

  @override
  _UnitFilterBottomSheetWidgetState createState() =>
      _UnitFilterBottomSheetWidgetState();
}

class _UnitFilterBottomSheetWidgetState
    extends State<UnitFilterBottomSheetWidget> {
  DateTime? datePicked1;
  TextEditingController? dateFromTextFieldController1;
  DateTime? datePicked2;
  TextEditingController? dateToTextFieldController;
  TextEditingController? availibaltyTypeTextFieldController;
  TextEditingController? propertyMasterTextFieldController;
  TextEditingController? typeTextFieldController;
  TextEditingController? categoryTextFieldController;
  TextEditingController? cityFromTextFieldController;
  TextEditingController? statusTypeTextFieldController;
  DateTime? datePicked3;
  TextEditingController? dateFromTextFieldController2;
  String? dropDownValue;

  @override
  void initState() {
    super.initState();
    availibaltyTypeTextFieldController = TextEditingController();
    propertyMasterTextFieldController = TextEditingController();
    typeTextFieldController = TextEditingController();
    categoryTextFieldController = TextEditingController();
    cityFromTextFieldController = TextEditingController();
    statusTypeTextFieldController = TextEditingController();
    dateFromTextFieldController1 =
        TextEditingController(text: dateTimeFormat('d/M/y', datePicked1));
    dateToTextFieldController =
        TextEditingController(text: dateTimeFormat('d/M/y', datePicked2));
    dateFromTextFieldController2 =
        TextEditingController(text: dateTimeFormat('d/M/y', datePicked3));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    availibaltyTypeTextFieldController?.dispose();
    propertyMasterTextFieldController?.dispose();
    typeTextFieldController?.dispose();
    categoryTextFieldController?.dispose();
    cityFromTextFieldController?.dispose();
    statusTypeTextFieldController?.dispose();
    dateFromTextFieldController1?.dispose();
    dateToTextFieldController?.dispose();
    dateFromTextFieldController2?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 700,
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
        padding: EdgeInsetsDirectional.fromSTEB(10, 1, 10, 1),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Container(
                  width: 80,
                  height: 10,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'LoockupCommonSearchScreen',
                      queryParams: {
                        'appBarTitle':
                            serializeParam('Availbilty', ParamType.String),
                        'loockupId': serializeParam(39, ParamType.int),
                        'subscribId': serializeParam(2, ParamType.int),
                        'languageId': serializeParam(2, ParamType.int),
                      }.withoutNulls,
                    );
                  },
                  child: Container(
                    height: 60,
                    child: Stack(
                      children: [
                        TextFormField(
                          controller: availibaltyTypeTextFieldController,
                          readOnly: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'cwyr24n0' /* Availibalty */,
                            ),
                            hintText: FFLocalizations.of(context).getText(
                              '23vm3jex' /* Availibalty */,
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
                                color:
                                    FlutterFlowTheme.of(context).customColor3,
                                width: 2,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).customColor3,
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
                        Container(
                          width: double.infinity,
                          height: 60,
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
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'PropertyMasterSearchScreen',
                      queryParams: {
                        'appBarTitle':
                            serializeParam('Property', ParamType.String),
                      }.withoutNulls,
                    );
                  },
                  child: Container(
                    height: 60,
                    child: Stack(
                      children: [
                        TextFormField(
                          controller: propertyMasterTextFieldController,
                          readOnly: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'hk6mj4jy' /* Property Master */,
                            ),
                            hintText: FFLocalizations.of(context).getText(
                              'c1xgtzh0' /* Property Master */,
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
                                color:
                                    FlutterFlowTheme.of(context).customColor3,
                                width: 2,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).customColor3,
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
                        Container(
                          width: double.infinity,
                          height: 60,
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
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'LoockupCommonSearchScreen',
                      queryParams: {
                        'appBarTitle': serializeParam('Type', ParamType.String),
                        'loockupId': serializeParam(2077, ParamType.int),
                        'subscribId': serializeParam(2, ParamType.int),
                        'languageId': serializeParam(2, ParamType.int),
                      }.withoutNulls,
                    );
                  },
                  child: Container(
                    height: 60,
                    child: Stack(
                      children: [
                        TextFormField(
                          controller: typeTextFieldController,
                          readOnly: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'jy5w1tln' /* Type */,
                            ),
                            hintText: FFLocalizations.of(context).getText(
                              'ciiaak6c' /* Type */,
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
                                color:
                                    FlutterFlowTheme.of(context).customColor3,
                                width: 2,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).customColor3,
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
                        Container(
                          width: double.infinity,
                          height: 60,
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
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                      child: InkWell(
                        onTap: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.of(context).viewInsets,
                                child: CityBottomSheetWidget(
                                  subscriberId: 2,
                                  countryId: -1,
                                  parentId: -1,
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        },
                        child: Container(
                          height: 50,
                          child: Stack(
                            children: [
                              TextFormField(
                                controller: cityFromTextFieldController,
                                onChanged: (_) => EasyDebounce.debounce(
                                  'cityFromTextFieldController',
                                  Duration(milliseconds: 200),
                                  () => setState(() {}),
                                ),
                                readOnly: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'd0t9aiu9' /* City */,
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    '1grdr3cb' /* City */,
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
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                                keyboardType: TextInputType.datetime,
                              ),
                              Container(
                                width: 200,
                                decoration: BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'LoockupCommonSearchScreen',
                            queryParams: {
                              'appBarTitle':
                                  serializeParam('Category', ParamType.String),
                              'loockupId': serializeParam(37, ParamType.int),
                              'subscribId': serializeParam(2, ParamType.int),
                              'languageId': serializeParam(2, ParamType.int),
                            }.withoutNulls,
                          );
                        },
                        child: Container(
                          height: 50,
                          child: Stack(
                            children: [
                              TextFormField(
                                controller: categoryTextFieldController,
                                onChanged: (_) => EasyDebounce.debounce(
                                  'categoryTextFieldController',
                                  Duration(milliseconds: 200),
                                  () => setState(() {}),
                                ),
                                readOnly: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'yas6ug0g' /* Category */,
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'watyywn1' /* Category */,
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
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                                keyboardType: TextInputType.datetime,
                              ),
                              Container(
                                width: 200,
                                decoration: BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'LoockupCommonSearchScreen',
                      queryParams: {
                        'appBarTitle':
                            serializeParam('Status', ParamType.String),
                        'loockupId': serializeParam(39, ParamType.int),
                        'subscribId': serializeParam(2, ParamType.int),
                        'languageId': serializeParam(2, ParamType.int),
                      }.withoutNulls,
                    );
                  },
                  child: Container(
                    height: 60,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: TextFormField(
                            controller: statusTypeTextFieldController,
                            readOnly: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'jkfgtvw2' /* Status */,
                              ),
                              hintText: FFLocalizations.of(context).getText(
                                'x7t4w2kb' /* Status */,
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
                                  color:
                                      FlutterFlowTheme.of(context).customColor3,
                                  width: 2,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).customColor3,
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
                          height: 60,
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
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                        child: Container(
                          height: 60,
                          child: Stack(
                            children: [
                              TextFormField(
                                controller: dateFromTextFieldController1,
                                onChanged: (_) => EasyDebounce.debounce(
                                  'dateFromTextFieldController1',
                                  Duration(milliseconds: 200),
                                  () => setState(() {}),
                                ),
                                readOnly: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: valueOrDefault<String>(
                                    dateTimeFormat('d/M/y', datePicked1),
                                    'Avilable From',
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
                                    'Avilable From',
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
                                  if (kIsWeb) {
                                    final _datePicked1Date =
                                        await showDatePicker(
                                      context: context,
                                      initialDate: getCurrentTimestamp,
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2050),
                                    );

                                    if (_datePicked1Date != null) {
                                      setState(
                                        () => datePicked1 = DateTime(
                                          _datePicked1Date.year,
                                          _datePicked1Date.month,
                                          _datePicked1Date.day,
                                        ),
                                      );
                                    }
                                  } else {
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
                                  }
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
                          height: 60,
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
                                    'Avilable To',
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
                                    'Avilable To',
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
                                  if (kIsWeb) {
                                    final _datePicked2Date =
                                        await showDatePicker(
                                      context: context,
                                      initialDate: getCurrentTimestamp,
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2050),
                                    );

                                    if (_datePicked2Date != null) {
                                      setState(
                                        () => datePicked2 = DateTime(
                                          _datePicked2Date.year,
                                          _datePicked2Date.month,
                                          _datePicked2Date.day,
                                        ),
                                      );
                                    }
                                  } else {
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
                                  }
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                        child: Container(
                          height: 60,
                          child: Stack(
                            children: [
                              TextFormField(
                                controller: dateFromTextFieldController2,
                                onChanged: (_) => EasyDebounce.debounce(
                                  'dateFromTextFieldController2',
                                  Duration(milliseconds: 200),
                                  () => setState(() {}),
                                ),
                                readOnly: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: valueOrDefault<String>(
                                    dateTimeFormat('d/M/y', datePicked3),
                                    'Listen To',
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                  hintText: valueOrDefault<String>(
                                    dateTimeFormat('d/M/y', datePicked3),
                                    'Listen To',
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
                                  if (kIsWeb) {
                                    final _datePicked3Date =
                                        await showDatePicker(
                                      context: context,
                                      initialDate: getCurrentTimestamp,
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2050),
                                    );

                                    if (_datePicked3Date != null) {
                                      setState(
                                        () => datePicked3 = DateTime(
                                          _datePicked3Date.year,
                                          _datePicked3Date.month,
                                          _datePicked3Date.day,
                                        ),
                                      );
                                    }
                                  } else {
                                    await DatePicker.showDatePicker(
                                      context,
                                      showTitleActions: true,
                                      onConfirm: (date) {
                                        setState(() => datePicked3 = date);
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
                                  }
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 60,
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
                          width: double.infinity,
                          height: 60,
                          child: Stack(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: FlutterFlowDropDown(
                                  options: FFAppState().beadroom.toList(),
                                  onChanged: (val) =>
                                      setState(() => dropDownValue = val),
                                  width: double.infinity,
                                  height: double.infinity,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'it77x5za' /* Beadroom */,
                                  ),
                                  fillColor: Colors.white,
                                  elevation: 0,
                                  borderColor: Color(0x210A0A0A),
                                  borderWidth: 2,
                                  borderRadius: 5,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 12, 4),
                                  hidesUnderline: true,
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
                                  availibaltyTypeTextFieldController?.clear();
                                  propertyMasterTextFieldController?.clear();
                                  typeTextFieldController?.clear();
                                  cityFromTextFieldController?.clear();
                                  categoryTextFieldController?.clear();
                                  statusTypeTextFieldController?.clear();
                                  dateFromTextFieldController2?.clear();
                                  dateToTextFieldController?.clear();
                                });
                                Navigator.pop(context);
                              },
                              text: FFLocalizations.of(context).getText(
                                'p0wr95v3' /* Reset */,
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
                                '19dgimzn' /* Apply */,
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
      ),
    );
  }
}
