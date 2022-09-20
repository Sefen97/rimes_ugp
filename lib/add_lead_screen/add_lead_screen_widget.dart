import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
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
  TextEditingController? contactTextFieldController;

  String? radioButtonValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    contactTextFieldController = TextEditingController();
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
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
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF5B5B5B),
                          fontSize: 14,
                        ),
                    selectedTextStyle:
                        FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                    textPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                    buttonPosition: RadioButtonPosition.left,
                    direction: Axis.horizontal,
                    radioButtonColor: FlutterFlowTheme.of(context).alternate,
                    inactiveRadioButtonColor:
                        FlutterFlowTheme.of(context).lineColor,
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.start,
                    verticalAlignment: WrapCrossAlignment.start,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 24),
                  child: Stack(
                    children: [
                      TextFormField(
                        controller: contactTextFieldController,
                        onChanged: (_) => EasyDebounce.debounce(
                          'contactTextFieldController',
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
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                          hintText: FFLocalizations.of(context).getText(
                            'tm0if34f' /* Contact */,
                          ),
                          hintStyle: FlutterFlowTheme.of(context)
                              .bodyText2
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
                          suffixIcon: Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF757575),
                            size: 22,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
