import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rimes_ugp/ui/activity_screen/activity_screen_widget.dart';
import 'package:rimes_ugp/ui/admin_dashboard_screen/admin_dashboard_screen_widget.dart';
import 'package:rimes_ugp/ui/flutter_flow/flutter_flow_theme.dart';
import 'package:rimes_ugp/ui/flutter_flow/internationalization.dart';
import 'package:rimes_ugp/ui/flutter_flow/nav/nav.dart';
import 'package:rimes_ugp/ui/leads_screen/leads_screen_widget.dart';
import 'package:rimes_ugp/ui/more_screen/more_screen_widget.dart';
import 'package:rimes_ugp/ui/units_screen/units_screen_widget.dart';

import 'app_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FFAppState(); // Initialize FFAppState

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = ThemeMode.system;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  bool displaySplashImage = true;

  @override
  void initState() {
    super.initState();
    _appStateNotifier = AppStateNotifier();
    _router = createRouter(_appStateNotifier);

    Future.delayed(Duration(seconds: 1),
        () => setState(() => _appStateNotifier.stopShowingSplashImage()));
  }

  void setLocale(String language) =>
      setState(() => _locale = createLocale(language));

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'RimesUgp',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      theme: ThemeData(brightness: Brightness.light),
      themeMode: _themeMode,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key? key, this.initialPage, this.page}) : super(key: key);

  final String? initialPage;
  final Widget? page;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'AdminDashboardScreen';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'AdminDashboardScreen': AdminDashboardScreenWidget(),
      'ActivityScreen': ActivityScreenWidget(),
      'LeadsScreen': LeadsScreenWidget(),
      'UnitsScreen': UnitsScreenWidget(),
      'MoreScreen': MoreScreenWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);
    return Scaffold(
      body: _currentPage ?? tabs[_currentPageName],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() {
          _currentPage = null;
          _currentPageName = tabs.keys.toList()[i];
        }),
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        selectedItemColor: FlutterFlowTheme.of(context).customColor3,
        unselectedItemColor: Color(0xFF959595),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 24,
            ),
            label: FFLocalizations.of(context).getText(
              'qeu2on7a' /* Home */,
            ),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_copy,
              size: 24,
            ),
            label: FFLocalizations.of(context).getText(
              'jdgas38r' /* Activity */,
            ),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.article_outlined,
              size: 24,
            ),
            label: FFLocalizations.of(context).getText(
              '0yt64aay' /* Leads */,
            ),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.content_paste_sharp,
              size: 24,
            ),
            label: FFLocalizations.of(context).getText(
              '87mrtb5i' /* Units */,
            ),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.keyboard_control,
              size: 24,
            ),
            label: FFLocalizations.of(context).getText(
              'h25m206f' /* More */,
            ),
            tooltip: '',
          )
        ],
      ),
    );
  }
}
