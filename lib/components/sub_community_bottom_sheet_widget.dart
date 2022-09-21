import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SubCommunityBottomSheetWidget extends StatefulWidget {
  const SubCommunityBottomSheetWidget({
    Key? key,
    this.subscriberId,
    this.parentId,
  }) : super(key: key);

  final int? subscriberId;
  final int? parentId;

  @override
  _SubCommunityBottomSheetWidgetState createState() =>
      _SubCommunityBottomSheetWidgetState();
}

class _SubCommunityBottomSheetWidgetState
    extends State<SubCommunityBottomSheetWidget> {
  TextEditingController? textController;

  Completer<ApiCallResponse>? _apiRequestCompleter;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Container(
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
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
                            'o96m3yn8' /* search */,
                          ),
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15),
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
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '0bbb8dfw' /* Sub Community */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 16),
                child: FutureBuilder<ApiCallResponse>(
                  future: (_apiRequestCompleter ??= Completer<ApiCallResponse>()
                        ..complete(RimesApiGroup.allSubCommunityCall.call(
                          id: widget.parentId,
                          subscriberId: widget.subscriberId,
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
                    final columnAllSubCommunityResponse = snapshot.data!;
                    return Builder(
                      builder: (context) {
                        final allSubCommunityResponseItem = getJsonField(
                          columnAllSubCommunityResponse.jsonBody,
                          r'''$.result''',
                        ).toList().take(500).toList();
                        return RefreshIndicator(
                          onRefresh: () async {
                            setState(() => _apiRequestCompleter = null);
                            await waitForApiRequestCompleter();
                          },
                          child: SingleChildScrollView(
                            physics: const AlwaysScrollableScrollPhysics(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  allSubCommunityResponseItem.length,
                                  (allSubCommunityResponseItemIndex) {
                                final allSubCommunityResponseItemItem =
                                    allSubCommunityResponseItem[
                                        allSubCommunityResponseItemIndex];
                                return InkWell(
                                  onTap: () async {
                                    Navigator.pop(context);
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.of(context).viewInsets,
                                          child: SubCommunityBottomSheetWidget(
                                            subscriberId: 2,
                                            parentId: getJsonField(
                                              allSubCommunityResponseItemItem,
                                              r'''$.id''',
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 15),
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .btnText,
                                            border: Border.all(
                                              color: Color(0x70635656),
                                              width: 1,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Text(
                                          getJsonField(
                                            allSubCommunityResponseItemItem,
                                            r'''$.name''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
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
