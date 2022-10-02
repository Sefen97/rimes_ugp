import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rimes_ugp/bloc/all_activity_bloc/activity_bloc.dart';
import 'package:rimes_ugp/ui/side_menu_widget/side_menu_widget.dart';

import '../../api/modle/activity_response/Result.dart';
import '../../app_state.dart';
import '../activity_details_screen/activity_details_screen_widget.dart';
import '../components/activity_filter_bottom_sheet_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ActivityScreenWidget extends StatefulWidget {
  const ActivityScreenWidget({Key? key}) : super(key: key);

  @override
  _ActivityScreenWidgetState createState() => _ActivityScreenWidgetState();
}

class _ActivityScreenWidgetState extends State<ActivityScreenWidget> {
  ActivityBloc _activityBloc = ActivityBloc();
  TextEditingController textController = TextEditingController();
  List<AllActivityResult> responseList = [];
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _activityBloc.add(GetAllActivityEvent(userId: FFAppState().userId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
          automaticallyImplyLeading: true,
          leading: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
            child: InkWell(
              onTap: () async {
                scaffoldKey.currentState!.openDrawer();
              },
              child: Image.asset(
                'assets/images/group_3426.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  '1u0v4et1' /* All Activites */,
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF5B5B5B),
                      fontSize: 17,
                    ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  'co9amx78' /*  (10) */,
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFFE11B33),
                      fontSize: 17,
                    ),
              ),
            ],
          ),
          actions: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: InkWell(
                onTap: () async {
                  context.pushNamed('AddActivityScreen');
                },
                child: Image.asset(
                  'assets/images/group_3445.png',
                  width: 90,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        drawer: SideMenuWidget(),
        body: BlocProvider(
          create: (context) => _activityBloc,
          child: BlocConsumer<ActivityBloc, ActivityState>(
            listener: (context, state) {
              print(state);
              if (state is ActivitySuccessState) {
                responseList = state.activityResponse;
              }
            },
            builder: (context, state) {
              return SafeArea(
                child: GestureDetector(
                  onTap: () => FocusScope.of(context).unfocus(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: TextFormField(
                                controller: textController,
                                onChanged: (value) => _activityBloc.add(
                                    GetAllActivityFilterEvent(
                                        text: textController.text)),
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: FFLocalizations.of(context).getText(
                                    'k576y7ps' /* search */,
                                  ),
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFFF3F3F3),
                                  prefixIcon: Icon(
                                    Icons.search,
                                  ),
                                  suffixIcon: textController.text.isNotEmpty
                                      ? InkWell(
                                          onTap: () async {
                                            textController.clear();
                                            _activityBloc.add(
                                                GetAllActivityFilterEvent(
                                                    text: ''));
                                          },
                                          child: Icon(
                                            Icons.clear,
                                            color: Color(0xFF757575),
                                            size: 22,
                                          ),
                                        )
                                      : null,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: InkWell(
                              onTap: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: ActivityFilterBottomSheetWidget(),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              child: Container(
                                width: 75,
                                height: 46,
                                decoration: BoxDecoration(
                                  color: Color(0xFF140D4D),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'xymjxh97' /* Filter */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: Icon(
                                        Icons.filter_alt_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        size: 24,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(18, 24, 18, 10),
                          child: state is ActivitySuccessState
                              ? ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: responseList.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return InkWell(
                                      onTap: () async {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    ActivityDetailsScreenWidget(
                                                        id: responseList[index]
                                                            .activityId)));
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 10),
                                                      child: Text(
                                                        responseList[index]
                                                            .typeName
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFF5B5B5B),
                                                                  fontSize: 15,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 10),
                                                      child: Text(
                                                        responseList[index]
                                                            .activitySource
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFFAAAAAA),
                                                                  fontSize: 13,
                                                                ),
                                                      ),
                                                    ),
                                                    Text(
                                                      responseList[index]
                                                          .activitySubject
                                                          .toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFFAAAAAA),
                                                                fontSize: 13,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 10),
                                                      child: Text(
                                                        responseList[index]
                                                            .activityStatusName
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFFE11B33),
                                                                  fontSize: 13,
                                                                ),
                                                      ),
                                                    ),
                                                    Text(
                                                      responseList[index]
                                                          .agent
                                                          .toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 13,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 14, 0, 14),
                                            child: Container(
                                              width: double.infinity,
                                              height: 1,
                                              decoration: BoxDecoration(
                                                color: Color(0x70635656),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                )
                              : loader(),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }

  Widget loader() => SpinKitFadingCircle(
        color: Color(0xFFDB1B1B),
        size: 60,
      );
}
