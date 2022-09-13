import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyScreenWidget extends StatefulWidget {
  const VerifyScreenWidget({
    Key? key,
    this.emailAddress,
  }) : super(key: key);

  final String? emailAddress;

  @override
  _VerifyScreenWidgetState createState() => _VerifyScreenWidgetState();
}

class _VerifyScreenWidgetState extends State<VerifyScreenWidget> {
  TextEditingController? pinCodeController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    pinCodeController = TextEditingController();
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
            '9r0kyl2k' /* Verify your email */,
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 39, 0, 0),
                  child: Image.asset(
                    'assets/images/Group_3437@3x.png',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'g65y2hg6' /* Please enter 4 digit code send... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFFAAAAAA),
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Text(
                  widget.emailAddress!,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFFAAAAAA),
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 40, 50, 0),
                child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).secondaryColor,
                      ),
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  enableActiveFill: false,
                  autoFocus: true,
                  showCursor: true,
                  cursorColor: FlutterFlowTheme.of(context).primaryColor,
                  obscureText: false,
                  hintCharacter: '-',
                  pinTheme: PinTheme(
                    fieldHeight: 60,
                    fieldWidth: 60,
                    borderWidth: 2,
                    borderRadius: BorderRadius.circular(12),
                    shape: PinCodeFieldShape.box,
                    activeColor: FlutterFlowTheme.of(context).primaryText,
                    inactiveColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    selectedColor: FlutterFlowTheme.of(context).secondaryText,
                    activeFillColor: FlutterFlowTheme.of(context).primaryText,
                    inactiveFillColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    selectedFillColor:
                        FlutterFlowTheme.of(context).secondaryText,
                  ),
                  controller: pinCodeController,
                  onChanged: (_) => {},
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 48, 16, 0),
                child: Container(
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
                        if (Navigator.of(context).canPop()) {
                          context.pop();
                        }
                        context.pushNamed('LoginScreen');
                      },
                      text: FFLocalizations.of(context).getText(
                        'jo3tebtz' /* Send */,
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '33ehefl3' /* Resend Code */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).customColor3,
                      ),
                ),
              ),
              Container(
                width: 100,
                height: 1,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).customColor3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
