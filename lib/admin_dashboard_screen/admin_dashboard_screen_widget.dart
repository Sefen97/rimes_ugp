import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_charts.dart';
import '../flutter_flow/flutter_flow_language_selector.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminDashboardScreenWidget extends StatefulWidget {
  const AdminDashboardScreenWidget({Key? key}) : super(key: key);

  @override
  _AdminDashboardScreenWidgetState createState() =>
      _AdminDashboardScreenWidgetState();
}

class _AdminDashboardScreenWidgetState
    extends State<AdminDashboardScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final pieChartColorsList = [
      Color(0xFFD354E3),
      Color(0xFF9418A8),
      Color(0xFF00335A)
    ];
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
          child: InkWell(
            onTap: () async {
              scaffoldKey.currentState!.openDrawer();
            },
            child: Image.asset(
              'assets/images/group_3426.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'dax1mh3h' /* Dashboard */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Color(0xFF5B5B5B),
                fontSize: 22,
              ),
        ),
        actions: [
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
              child: Image.asset(
                'assets/images/fi_rr_bell.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      drawer: Container(
        width: 317,
        child: Drawer(
          elevation: 12,
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Stack(
              alignment: AlignmentDirectional(0, 0),
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      'assets/images/group_3456.png',
                                      width: double.infinity,
                                      height: 202,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                          child: Image.asset(
                                            'assets/images/no_path_copy_40.png',
                                            width: 64,
                                            height: 64,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Text(
                                          FFAppState().userName,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                              ),
                                        ),
                                        Text(
                                          FFAppState().email,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFDFDFDF),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 10, 5, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          if (scaffoldKey
                                                  .currentState!.isDrawerOpen ||
                                              scaffoldKey.currentState!
                                                  .isEndDrawerOpen) {
                                            Navigator.pop(context);
                                          }
                                        },
                                        child: Image.asset(
                                          'assets/images/group_3405.png',
                                          width: 30,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 33, 10, 10),
                                child: InkWell(
                                  onTap: () async {
                                    context.pushNamed('MyAccountScreen');
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Image.asset(
                                          'assets/images/iconly_bulk_profile.png',
                                          height: 30,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            21, 0, 0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'pl4c7vli' /* My Account */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF5B5B5B),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 10, 10, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Image.asset(
                                        'assets/images/iconly_bold_notification.png',
                                        height: 30,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          21, 0, 0, 0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '1ucjdhip' /* Notifications */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF5B5B5B),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 10, 10, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Image.asset(
                                        'assets/images/group_3403.png',
                                        height: 30,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 0, 0, 0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'z4bj7c2z' /* Language */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF5B5B5B),
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: FlutterFlowLanguageSelector(
                                            width: 180,
                                            height: 30,
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBtnText,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBtnText,
                                            dropdownColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBtnText,
                                            dropdownIconColor:
                                                Color(0xFF170C0C),
                                            borderRadius: 0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .title3
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                            hideFlags: true,
                                            currentLanguage:
                                                FFLocalizations.of(context)
                                                    .languageCode,
                                            languages:
                                                FFLocalizations.languages(),
                                            onChanged: (lang) =>
                                                setAppLanguage(context, lang),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 10, 10, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Image.asset(
                                        'assets/images/iconly_bold_lock.png',
                                        height: 30,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 0, 0, 0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'qw17xtfb' /* Change password */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF5B5B5B),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    1, 10, 10, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Image.asset(
                                        'assets/images/iconly_bold_info_square.png',
                                        height: 30,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 0, 0, 0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'rs5sru5q' /* How it work */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF5B5B5B),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 10, 10, 10),
                                child: InkWell(
                                  onTap: () async {
                                    var confirmDialogResponse =
                                        await showDialog<bool>(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  content:
                                                      Text('Are you sure ?'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              false),
                                                      child: Text('No'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              true),
                                                      child: Text('Yes'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ) ??
                                            false;
                                    if (confirmDialogResponse) {
                                      context.goNamed('LoginScreen');

                                      return;
                                    } else {
                                      return;
                                    }
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Image.asset(
                                          'assets/images/iconly_bold_logout.png',
                                          height: 30,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 0, 0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            't6mdbdq2' /* Logout */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF5B5B5B),
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
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 600, 50, 0),
                    child: Image.asset(
                      'assets/images/saly_1.png',
                      width: 211,
                      height: 223,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 16),
            child: FutureBuilder<ApiCallResponse>(
              future: RimesApiGroup.admainDashboardRequestCall.call(
                userId: FFAppState().userId,
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: SpinKitFadingCircle(
                        color: Color(0xFFDB1B1B),
                        size: 60,
                      ),
                    ),
                  );
                }
                final columnAdmainDashboardRequestResponse = snapshot.data!;
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Material(
                            color: Colors.transparent,
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              width: 103,
                              height: 103,
                              decoration: BoxDecoration(
                                color: Color(0xFF232D51),
                                borderRadius: BorderRadius.circular(10),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    7, 12, 7, 12),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 2, 0),
                                          child: Image.asset(
                                            'assets/images/leads.png',
                                            width: 30,
                                            height: 35,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Text(
                                          getJsonField(
                                            columnAdmainDashboardRequestResponse
                                                .jsonBody,
                                            r'''$.result.employeeAnalysis.totalLeads''',
                                          ).toString(),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                fontSize: 20,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'la420qy2' /* Total Leads */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontSize: 12,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              width: 103,
                              height: 103,
                              decoration: BoxDecoration(
                                color: Color(0xFFE11B33),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    7, 12, 7, 12),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 2, 0),
                                          child: Image.asset(
                                            'assets/images/group_3587.png',
                                            width: 30,
                                            height: 35,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Text(
                                          getJsonField(
                                            columnAdmainDashboardRequestResponse
                                                .jsonBody,
                                            r'''$.result.employeeAnalysis.totalUnits''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                fontSize: 20,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '3nmogoek' /* Total Units */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontSize: 12,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              width: 103,
                              height: 103,
                              decoration: BoxDecoration(
                                color: Color(0xFF232D51),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      7, 12, 7, 12),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 2, 0),
                                            child: Image.asset(
                                              'assets/images/fi_rr_users.png',
                                              width: 30,
                                              height: 30,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Text(
                                            getJsonField(
                                              columnAdmainDashboardRequestResponse
                                                  .jsonBody,
                                              r'''$.result.employeeAnalysis.totalPendingLeads''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                  fontSize: 20,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'iqbb5o0m' /* Total Pending */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontSize: 12,
                                            ),
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
                        padding: EdgeInsetsDirectional.fromSTEB(0, 17, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 215,
                          decoration: BoxDecoration(
                            color: Color(0x00000001),
                            border: Border.all(
                              color: Color(0x00000001),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 7, 0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 100,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Color(0xFFF8F8F8),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 11, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 0, 16, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'zo9dwsvf' /* All leads */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        getJsonField(
                                                          columnAdmainDashboardRequestResponse
                                                              .jsonBody,
                                                          r'''$.result.employeeAnalysis.totalLeads''',
                                                        ).toString(),
                                                        textAlign:
                                                            TextAlign.end,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 1,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 175,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    -1, -1),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 60, 70),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: double.infinity,
                                                    child: Stack(
                                                      children: [
                                                        FlutterFlowPieChart(
                                                          data: FFPieChartData(
                                                            values: FFAppState()
                                                                .pieChartLeadValue,
                                                            colors:
                                                                pieChartColorsList,
                                                            radius: [10],
                                                          ),
                                                          donutHoleRadius: 30,
                                                          donutHoleColor:
                                                              Colors.white,
                                                          sectionLabelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .title3,
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1, 1),
                                                          child:
                                                              FlutterFlowChartLegendWidget(
                                                            entries: FFAppState()
                                                                .pieChartLeadName
                                                                .asMap()
                                                                .entries
                                                                .map(
                                                                  (label) =>
                                                                      LegendEntry(
                                                                    pieChartColorsList[label
                                                                            .key %
                                                                        pieChartColorsList
                                                                            .length],
                                                                    label.value,
                                                                  ),
                                                                )
                                                                .toList(),
                                                            width:
                                                                double.infinity,
                                                            height: 5,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                            textPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        5,
                                                                        0),
                                                            borderWidth: 0,
                                                            borderColor: Color(
                                                                0x00000001),
                                                            indicatorSize: 10,
                                                            indicatorBorderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
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
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      7, 0, 0, 0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 100,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Color(0xFFF8F8F8),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 11, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 0, 16, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'd8gdtjla' /* AllUnits */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        getJsonField(
                                                          columnAdmainDashboardRequestResponse
                                                              .jsonBody,
                                                          r'''$.result.employeeAnalysis.totalUnits''',
                                                        ).toString(),
                                                        textAlign:
                                                            TextAlign.end,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 1,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 175,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    -1, -1),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 60, 70),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: double.infinity,
                                                    child: Stack(
                                                      children: [
                                                        FlutterFlowPieChart(
                                                          data: FFPieChartData(
                                                            values: FFAppState()
                                                                .pieChartUnitValue,
                                                            colors:
                                                                pieChartColorsList,
                                                            radius: [40],
                                                          ),
                                                          donutHoleRadius: 0,
                                                          donutHoleColor:
                                                              Colors.white,
                                                          sectionLabelType:
                                                              PieChartSectionLabelType
                                                                  .value,
                                                          sectionLabelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .title3
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBtnText,
                                                                    fontSize:
                                                                        13,
                                                                  ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1, 1),
                                                          child:
                                                              FlutterFlowChartLegendWidget(
                                                            entries: FFAppState()
                                                                .pieChartUnitName
                                                                .asMap()
                                                                .entries
                                                                .map(
                                                                  (label) =>
                                                                      LegendEntry(
                                                                    pieChartColorsList[label
                                                                            .key %
                                                                        pieChartColorsList
                                                                            .length],
                                                                    label.value,
                                                                  ),
                                                                )
                                                                .toList(),
                                                            width:
                                                                double.infinity,
                                                            height: 5,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                            textPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        5,
                                                                        0),
                                                            borderWidth: 0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0),
                                                            borderColor: Color(
                                                                0x00000001),
                                                            indicatorSize: 10,
                                                            indicatorBorderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
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
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 250,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color(0xFFF3F3F3),
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 24),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'wfzzlp7y' /* Unit In Rent */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: FlutterFlowBarChart(
                                        barData: [
                                          FFBarChartData(
                                            yData:
                                                FFAppState().unitParChartValue,
                                            color: Color(0xFF00335A),
                                            borderColor: Color(0x00000001),
                                          )
                                        ],
                                        xLabels: FFAppState().unitParChartName,
                                        barWidth: 8,
                                        barBorderRadius:
                                            BorderRadius.circular(0),
                                        groupSpace: 66,
                                        chartStylingInfo: ChartStylingInfo(
                                          backgroundColor: Colors.white,
                                          showBorder: false,
                                        ),
                                        axisBounds: AxisBounds(),
                                        xAxisLabelInfo: AxisLabelInfo(
                                          showLabels: true,
                                          labelTextStyle: TextStyle(
                                            color: Color(0xFF00335A),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          labelInterval: 10,
                                        ),
                                        yAxisLabelInfo: AxisLabelInfo(
                                          showLabels: true,
                                          labelTextStyle: TextStyle(
                                            color: Color(0xFF00335A),
                                          ),
                                          labelInterval: 10,
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 250,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color(0xFFF3F3F3),
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 24),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'mw8wkehh' /* All Leads */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: FlutterFlowBarChart(
                                        barData: [
                                          FFBarChartData(
                                            yData:
                                                FFAppState().unitParChartValue,
                                            color: Color(0xFFDB1B1B),
                                            borderColor: Color(0x210A0A0A),
                                          )
                                        ],
                                        xLabels: FFAppState().unitParChartName,
                                        barWidth: 20,
                                        barBorderRadius:
                                            BorderRadius.circular(0),
                                        groupSpace: 50,
                                        chartStylingInfo: ChartStylingInfo(
                                          backgroundColor: Colors.white,
                                          showBorder: false,
                                        ),
                                        axisBounds: AxisBounds(),
                                        xAxisLabelInfo: AxisLabelInfo(
                                          showLabels: true,
                                          labelTextStyle: TextStyle(
                                            color: Color(0xFF00335A),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          labelInterval: 10,
                                        ),
                                        yAxisLabelInfo: AxisLabelInfo(
                                          showLabels: true,
                                          labelTextStyle: TextStyle(
                                            color: Color(0xFF00335A),
                                          ),
                                          labelInterval: 10,
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
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
