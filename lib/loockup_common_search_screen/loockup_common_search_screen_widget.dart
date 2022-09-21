import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class LoockupCommonSearchScreenWidget extends StatefulWidget {
  const LoockupCommonSearchScreenWidget({
    Key? key,
    this.appBarTitle,
    this.loockupId,
    this.subscribId,
    this.languageId,
  }) : super(key: key);

  final String? appBarTitle;
  final int? loockupId;
  final int? subscribId;
  final int? languageId;

  @override
  _LoockupCommonSearchScreenWidgetState createState() =>
      _LoockupCommonSearchScreenWidgetState();
}

class _LoockupCommonSearchScreenWidgetState
    extends State<LoockupCommonSearchScreenWidget> {
  TextEditingController? textController;

  Completer<ApiCallResponse>? _apiRequestCompleter;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
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
          widget.appBarTitle!,
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: TextFormField(
                  controller: textController,
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: FFLocalizations.of(context).getText(
                      'uu1567j9' /* search */,
                    ),
                    hintStyle: FlutterFlowTheme.of(context).bodyText2,
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
                    suffixIcon: textController!.text.isNotEmpty
                        ? InkWell(
                            onTap: () async {
                              textController?.clear();
                              setState(() {});
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
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                    child: FutureBuilder<ApiCallResponse>(
                      future:
                          (_apiRequestCompleter ??= Completer<ApiCallResponse>()
                                ..complete(RimesApiGroup.lookuopCommonCall.call(
                                  lookupId: widget.loockupId,
                                  languageId: widget.languageId,
                                  subscriberId: widget.subscribId,
                                )))
                              .future,
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
                        final listViewLookuopCommonResponse = snapshot.data!;
                        return Builder(
                          builder: (context) {
                            final loockupResponse = getJsonField(
                              listViewLookuopCommonResponse.jsonBody,
                              r'''$.result''',
                            ).toList().take(200).toList();
                            if (loockupResponse.isEmpty) {
                              return Image.asset(
                                'assets/images/noData.png',
                              );
                            }
                            return RefreshIndicator(
                              onRefresh: () async {
                                setState(() => _apiRequestCompleter = null);
                                await waitForApiRequestCompleter(
                                    minWait: 5, maxWait: 15);
                              },
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                itemCount: loockupResponse.length,
                                itemBuilder: (context, loockupResponseIndex) {
                                  final loockupResponseItem =
                                      loockupResponse[loockupResponseIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 5),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pop();
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 10),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 20,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                      color: Color(0xFF3B3E51),
                                                      width: 2,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 0, 0),
                                                  child: Text(
                                                    getJsonField(
                                                      loockupResponseItem,
                                                      r'''$.name''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF3B3E51),
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 2,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFF3F3F3),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future waitForApiRequestCompleter({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = _apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
