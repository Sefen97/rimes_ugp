import '../components/city_bottom_sheet_widget.dart';
import '../components/community_mobile_bottom_sheet_widget.dart';
import '../components/sub_community_bottom_sheet_widget.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AddLeadScreenWidget extends StatefulWidget {
  const AddLeadScreenWidget({Key? key}) : super(key: key);

  @override
  _AddLeadScreenWidgetState createState() => _AddLeadScreenWidgetState();
}

class _AddLeadScreenWidgetState extends State<AddLeadScreenWidget> {
  String? radioButtonValue;
  TextEditingController? contactTextFieldController1;
  TextEditingController? leadStatusTextFieldController;
  TextEditingController? unitTextFieldController;
  TextEditingController? cityTextFieldController;
  TextEditingController? communityTextFieldController;
  TextEditingController? subCommunityTextFieldController;
  TextEditingController? rateCommunityTextFieldController;
  TextEditingController? piriortyTextFieldController;
  TextEditingController? leadSourceTextFieldController;
  TextEditingController? assigmentTextFieldController;
  TextEditingController? contactTextFieldController2;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    assigmentTextFieldController = TextEditingController();
    cityTextFieldController = TextEditingController();
    contactTextFieldController1 = TextEditingController();
    leadStatusTextFieldController = TextEditingController();
    unitTextFieldController = TextEditingController();
    communityTextFieldController = TextEditingController();
    subCommunityTextFieldController = TextEditingController();
    rateCommunityTextFieldController = TextEditingController();
    piriortyTextFieldController = TextEditingController();
    leadSourceTextFieldController = TextEditingController();
    contactTextFieldController2 = TextEditingController();
  }

  @override
  void dispose() {
    assigmentTextFieldController?.dispose();
    cityTextFieldController?.dispose();
    contactTextFieldController1?.dispose();
    leadStatusTextFieldController?.dispose();
    unitTextFieldController?.dispose();
    communityTextFieldController?.dispose();
    subCommunityTextFieldController?.dispose();
    rateCommunityTextFieldController?.dispose();
    piriortyTextFieldController?.dispose();
    leadSourceTextFieldController?.dispose();
    contactTextFieldController2?.dispose();
    super.dispose();
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
            '25lqyfwu' /* Add a new lead */,
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
                      child: FlutterFlowRadioButton(
                        options: [
                          FFLocalizations.of(context).getText(
                            'duidywgl' /* Rent */,
                          ),
                          FFLocalizations.of(context).getText(
                            'jr5fvejb' /* Sale */,
                          )
                        ].toList(),
                        initialValue: FFLocalizations.of(context).getText(
                          'dxxoi6eo' /* Rent */,
                        ),
                        onChanged: (value) {
                          setState(() => radioButtonValue = value);
                        },
                        optionHeight: 30,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF5B5B5B),
                                  fontSize: 14,
                                ),
                        selectedTextStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                        textPadding:
                            EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.horizontal,
                        radioButtonColor:
                            FlutterFlowTheme.of(context).alternate,
                        inactiveRadioButtonColor:
                            FlutterFlowTheme.of(context).lineColor,
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 24),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'SalesLeadSearchScreen',
                            queryParams: {
                              'appBarTitle':
                                  serializeParam('Contact', ParamType.String),
                              'subscribId': serializeParam(2, ParamType.int),
                              'userId': serializeParam(10, ParamType.int),
                              'pageSize': serializeParam(500, ParamType.int),
                            }.withoutNulls,
                          );
                        },
                        child: Stack(
                          children: [
                            TextFormField(
                              controller: contactTextFieldController1,
                              onChanged: (_) => EasyDebounce.debounce(
                                'contactTextFieldController1',
                                Duration(milliseconds: 200),
                                () => setState(() {}),
                              ),
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'k53j0ga9' /* Contact */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  'tm0if34f' /* Contact */,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return FFLocalizations.of(context).getText(
                                    'mkfkc62q' /* Field is required */,
                                  );
                                }

                                return null;
                              },
                            ),
                            Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0x00000001),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'LoockupCommonSearchScreen',
                            queryParams: {
                              'appBarTitle': serializeParam(
                                  'Lead Status', ParamType.String),
                              'subscribId': serializeParam(2, ParamType.int),
                              'loockupId': serializeParam(25, ParamType.int),
                              'languageId': serializeParam(2, ParamType.int),
                            }.withoutNulls,
                          );
                        },
                        child: Stack(
                          children: [
                            TextFormField(
                              controller: leadStatusTextFieldController,
                              onChanged: (_) => EasyDebounce.debounce(
                                'leadStatusTextFieldController',
                                Duration(milliseconds: 200),
                                () => setState(() {}),
                              ),
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'osl3vnxd' /* Lead Status */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  '75n5kgml' /* Lead Status */,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return FFLocalizations.of(context).getText(
                                    'led6rzpn' /* Field is required */,
                                  );
                                }

                                return null;
                              },
                            ),
                            Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0x00000001),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'PropertySearchScreen',
                            queryParams: {
                              'appBarTitle':
                                  serializeParam('Unit', ParamType.String),
                              'id': serializeParam(0, ParamType.int),
                            }.withoutNulls,
                          );
                        },
                        child: Stack(
                          children: [
                            TextFormField(
                              controller: unitTextFieldController,
                              onChanged: (_) => EasyDebounce.debounce(
                                'unitTextFieldController',
                                Duration(milliseconds: 200),
                                () => setState(() {}),
                              ),
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'q9aj966x' /* Unit */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  'v9x0u3dd' /* Unit */,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return FFLocalizations.of(context).getText(
                                    'qx7z2p5q' /* Field is required */,
                                  );
                                }

                                return null;
                              },
                            ),
                            Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0x00000001),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
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
                        child: Stack(
                          children: [
                            TextFormField(
                              controller: cityTextFieldController,
                              onChanged: (_) => EasyDebounce.debounce(
                                'cityTextFieldController',
                                Duration(milliseconds: 200),
                                () => setState(() {}),
                              ),
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  '4rjqxdal' /* City */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  'aymrjtvt' /* City */,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return FFLocalizations.of(context).getText(
                                    'az8qdgtb' /* Field is required */,
                                  );
                                }

                                return null;
                              },
                            ),
                            Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0x00000001),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: InkWell(
                        onTap: () async {
                          if (/* NOT RECOMMENDED */ cityTextFieldController!
                                  .text ==
                              'true') {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: CommunityMobileBottomSheetWidget(
                                    subscriberId: 2,
                                    parentId: -1,
                                    languageId: 1,
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          } else {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  content: Text('Please Select City First !'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                        child: Stack(
                          children: [
                            TextFormField(
                              controller: communityTextFieldController,
                              onChanged: (_) => EasyDebounce.debounce(
                                'communityTextFieldController',
                                Duration(milliseconds: 200),
                                () => setState(() {}),
                              ),
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'jz7kmvm6' /* Community */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  '35x2pb87' /* Community */,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return FFLocalizations.of(context).getText(
                                    'yhcmcmh6' /* Field is required */,
                                  );
                                }

                                return null;
                              },
                            ),
                            Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0x00000001),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: InkWell(
                        onTap: () async {
                          if (/* NOT RECOMMENDED */ communityTextFieldController!
                                  .text ==
                              'true') {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: SubCommunityBottomSheetWidget(
                                    subscriberId: 2,
                                    parentId: -1,
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          } else {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  content:
                                      Text('Please Select Community First !'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                        child: Stack(
                          children: [
                            TextFormField(
                              controller: subCommunityTextFieldController,
                              onChanged: (_) => EasyDebounce.debounce(
                                'subCommunityTextFieldController',
                                Duration(milliseconds: 200),
                                () => setState(() {}),
                              ),
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'ejkmdhqt' /* Sub Community */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  '30hv7tl2' /* Sub Community */,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return FFLocalizations.of(context).getText(
                                    '6o21jtbo' /* Field is required */,
                                  );
                                }

                                return null;
                              },
                            ),
                            Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0x00000001),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'LoockupCommonSearchScreen',
                            queryParams: {
                              'appBarTitle':
                                  serializeParam('Rate', ParamType.String),
                              'loockupId': serializeParam(25, ParamType.int),
                              'subscribId': serializeParam(2, ParamType.int),
                              'languageId': serializeParam(2, ParamType.int),
                            }.withoutNulls,
                          );
                        },
                        child: Stack(
                          children: [
                            TextFormField(
                              controller: rateCommunityTextFieldController,
                              onChanged: (_) => EasyDebounce.debounce(
                                'rateCommunityTextFieldController',
                                Duration(milliseconds: 200),
                                () => setState(() {}),
                              ),
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  '1v9pbm80' /* Rate */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  'lguaaibh' /* Rate */,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return FFLocalizations.of(context).getText(
                                    'q1h9dr4g' /* Field is required */,
                                  );
                                }

                                return null;
                              },
                            ),
                            Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0x00000001),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'LoockupCommonSearchScreen',
                            queryParams: {
                              'appBarTitle':
                                  serializeParam('Pirority', ParamType.String),
                              'loockupId': serializeParam(23, ParamType.int),
                              'subscribId': serializeParam(2, ParamType.int),
                              'languageId': serializeParam(2, ParamType.int),
                            }.withoutNulls,
                          );
                        },
                        child: Stack(
                          children: [
                            TextFormField(
                              controller: piriortyTextFieldController,
                              onChanged: (_) => EasyDebounce.debounce(
                                'piriortyTextFieldController',
                                Duration(milliseconds: 200),
                                () => setState(() {}),
                              ),
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'hb95sd6y' /* Piriorty */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  '3s00l1n2' /* Piriorty */,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return FFLocalizations.of(context).getText(
                                    'ct0a75ld' /* Field is required */,
                                  );
                                }

                                return null;
                              },
                            ),
                            Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0x00000001),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'LoockupCommonSearchScreen',
                            queryParams: {
                              'appBarTitle': serializeParam(
                                  'Lead Source', ParamType.String),
                              'loockupId': serializeParam(24, ParamType.int),
                              'subscribId': serializeParam(2, ParamType.int),
                              'languageId': serializeParam(2, ParamType.int),
                            }.withoutNulls,
                          );
                        },
                        child: Stack(
                          children: [
                            TextFormField(
                              controller: leadSourceTextFieldController,
                              onChanged: (_) => EasyDebounce.debounce(
                                'leadSourceTextFieldController',
                                Duration(milliseconds: 200),
                                () => setState(() {}),
                              ),
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'uvmpimkd' /* Lead Source */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  'dw1psfli' /* Lead Source */,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return FFLocalizations.of(context).getText(
                                    'y7plyo0e' /* Field is required */,
                                  );
                                }

                                return null;
                              },
                            ),
                            Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0x00000001),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'LookuopAllEmployeesSearchScreen',
                            queryParams: {
                              'appBarTitle': serializeParam(
                                  'Assigment To', ParamType.String),
                              'userId': serializeParam(10, ParamType.int),
                            }.withoutNulls,
                          );
                        },
                        child: Stack(
                          children: [
                            TextFormField(
                              controller: assigmentTextFieldController,
                              onChanged: (_) => EasyDebounce.debounce(
                                'assigmentTextFieldController',
                                Duration(milliseconds: 200),
                                () => setState(() {}),
                              ),
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'prdwmitv' /* Assigment */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  'btv3wgdj' /* Assigment */,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return FFLocalizations.of(context).getText(
                                    '8ulyt8cy' /* Field is required */,
                                  );
                                }

                                return null;
                              },
                            ),
                            Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0x00000001),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: Stack(
                        children: [
                          TextFormField(
                            controller: contactTextFieldController2,
                            onChanged: (_) => EasyDebounce.debounce(
                              'contactTextFieldController2',
                              Duration(milliseconds: 200),
                              () => setState(() {}),
                            ),
                            readOnly: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'jnc8ytl6' /* Contact */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                'o92lq1pd' /* Contact */,
                              ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
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
                                  color:
                                      FlutterFlowTheme.of(context).customColor3,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).customColor3,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return FFLocalizations.of(context).getText(
                                  'fc4x5mg4' /* Field is required */,
                                );
                              }

                              return null;
                            },
                          ),
                          InkWell(
                            onTap: () async {
                              context.pushNamed(
                                'LoockupCommonSearchScreen',
                                queryParams: {
                                  'appBarTitle': serializeParam(
                                      'Contact Type', ParamType.String),
                                  'loockupId':
                                      serializeParam(10, ParamType.int),
                                  'subscribId':
                                      serializeParam(2, ParamType.int),
                                  'languageId':
                                      serializeParam(2, ParamType.int),
                                }.withoutNulls,
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0x00000001),
                              ),
                            ),
                          ),
                        ],
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

                            context.pop();
                          },
                          text: FFLocalizations.of(context).getText(
                            'zfgc9m8s' /* Add */,
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
      ),
    );
  }
}
