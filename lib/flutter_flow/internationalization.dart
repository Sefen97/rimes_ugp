import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.toString());

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // ForgetPassword
  {
    'pd1p6aja': {
      'en': 'Forgot your password?',
      'ar': 'نسيت رقمك السري؟',
    },
    'r3d8zynj': {
      'en': 'Please enter your email address to ',
      'ar': 'الرجاء إدخال عنوان بريدك الإلكتروني إلى',
    },
    '0bg79id7': {
      'en': 'receive a verification code',
      'ar': 'تلقي رمز التحقق',
    },
    'fih0k0aq': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الالكترونى',
    },
    '524qdmoo': {
      'en': 'Send',
      'ar': 'إرسال',
    },
    '5zzhsopk': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // Dashboard
  {
    'dax1mh3h': {
      'en': 'Dashboard',
      'ar': 'لوحة القيادة',
    },
    'la420qy2': {
      'en': 'Total Leads',
      'ar': 'إجمالي العملاء المتوقعين',
    },
    '3nmogoek': {
      'en': 'Total Units',
      'ar': 'إجمالي الوحدات',
    },
    'iqbb5o0m': {
      'en': 'Total Pending',
      'ar': 'إجمالي معلق',
    },
    'pl4c7vli': {
      'en': 'My Account',
      'ar': 'حسابي',
    },
    '1ucjdhip': {
      'en': 'Notifications',
      'ar': 'إشعارات',
    },
    'z4bj7c2z': {
      'en': 'Language',
      'ar': 'لغة',
    },
    'qw17xtfb': {
      'en': 'Change password',
      'ar': 'غير كلمة السر',
    },
    'rs5sru5q': {
      'en': 'How it work',
      'ar': 'كيف تعمل',
    },
    't6mdbdq2': {
      'en': 'Logout',
      'ar': 'تسجيل خروج',
    },
    'qeu2on7a': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // LoginScreen
  {
    '0fjvw330': {
      'en': 'Welcome,',
      'ar': 'أهلا وسهلا،',
    },
    '90pzzvfi': {
      'en': 'Sing in to continue',
      'ar': 'الغناء للمتابعة',
    },
    'ggitvmra': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الالكترونى',
    },
    'u82uik4h': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    '4ra5qus4': {
      'en': 'Remember Me',
      'ar': 'تذكرنى',
    },
    'br3lwu9r': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
    },
    'wr2052ai': {
      'en': 'Forget password ?',
      'ar': 'نسيت كلمة السر؟',
    },
    'f6lfsfvo': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'k5zk081z': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '68dlbt9s': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // Activity
  {
    '1u0v4et1': {
      'en': 'All Activites',
      'ar': 'جميع الأنشطة',
    },
    'co9amx78': {
      'en': ' (10)',
      'ar': '(10)',
    },
    'k576y7ps': {
      'en': 'search',
      'ar': 'بحث',
    },
    'xymjxh97': {
      'en': 'Filter',
      'ar': 'منقي',
    },
    'hjhci0rr': {
      'en': 'My Account',
      'ar': 'حسابي',
    },
    'iyskagcc': {
      'en': 'Notifications',
      'ar': 'إشعارات',
    },
    'ihgock6k': {
      'en': 'Language',
      'ar': 'لغة',
    },
    'swpyzkn1': {
      'en': 'Change password',
      'ar': 'غير كلمة السر',
    },
    'w2opjwek': {
      'en': 'How it work',
      'ar': 'كيف تعمل',
    },
    'l0bniklc': {
      'en': 'Logout',
      'ar': 'تسجيل خروج',
    },
    'jdgas38r': {
      'en': 'Activity',
      'ar': 'نشاط',
    },
  },
  // Units
  {
    'zs175pxp': {
      'en': 'All Units',
      'ar': 'جميع الوحدات',
    },
    'bphk5jnw': {
      'en': ' (10)',
      'ar': '(10)',
    },
    '87mrtb5i': {
      'en': 'Units',
      'ar': 'الوحدات',
    },
  },
  // Leads
  {
    'xg7pspv6': {
      'en': 'All Leads',
      'ar': 'كل العملاء المتوقعين',
    },
    'y9vul0et': {
      'en': 'Rent',
      'ar': 'تأجير',
    },
    'hlq749i9': {
      'en': 'Rent',
      'ar': 'تأجير',
    },
    'tmg1lmed': {
      'en': 'Sale',
      'ar': 'تخفيض السعر',
    },
    'fslpxl8x': {
      'en': 'search',
      'ar': 'بحث',
    },
    'yb30f34e': {
      'en': 'Filter',
      'ar': 'منقي',
    },
    'iucgyh33': {
      'en': 'unit type',
      'ar': 'نوع الوحدة',
    },
    '2ceeyl6i': {
      'en': 'Status ',
      'ar': 'حالة',
    },
    'gc5qsfn6': {
      'en': 'My Account',
      'ar': 'حسابي',
    },
    'ewzgdnrt': {
      'en': 'Notifications',
      'ar': 'إشعارات',
    },
    'gppitf4h': {
      'en': 'Language',
      'ar': 'لغة',
    },
    'zvs6frwl': {
      'en': 'Change password',
      'ar': 'غير كلمة السر',
    },
    'm11075be': {
      'en': 'How it work',
      'ar': 'كيف تعمل',
    },
    'fcevwame': {
      'en': 'Logout',
      'ar': 'تسجيل خروج',
    },
    '0yt64aay': {
      'en': 'Leads',
      'ar': 'يؤدي',
    },
  },
  // More
  {
    'h25m206f': {
      'en': 'More',
      'ar': 'أكثر',
    },
  },
  // MyAccount
  {
    'lh58zepi': {
      'en': 'My Account',
      'ar': 'حسابي',
    },
    'db3vx4hg': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'v0rlr5xn': {
      'en': 'Username is here',
      'ar': 'اسم المستخدم هنا',
    },
    '56irthb0': {
      'en': 'Email Addre',
      'ar': 'عنوان البريد الإلكتروني',
    },
    'nbof8uii': {
      'en': 'Username@gmail.com',
      'ar': 'Username@gmail.com',
    },
    '8n1os0b6': {
      'en': 'Save',
      'ar': 'يحفظ',
    },
    'u1bpqbhq': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // AddActivity
  {
    'ifysoqeu': {
      'en': 'Type',
      'ar': '',
    },
    'wgs4e89x': {
      'en': 'Type Here',
      'ar': '',
    },
    'ge2g2f9h': {
      'en': 'Assign To',
      'ar': '',
    },
    'z0w8h7ak': {
      'en': 'Name of contact',
      'ar': '',
    },
    'ebgs0p1n': {
      'en': 'Date',
      'ar': '',
    },
    'af0ilssx': {
      'en': 'Date',
      'ar': '',
    },
    'fdzu8scv': {
      'en': 'Activity Status',
      'ar': '',
    },
    'olu0vq5o': {
      'en': 'Status',
      'ar': '',
    },
    'galst8vf': {
      'en': 'Pick To',
      'ar': '',
    },
    'supvcfe6': {
      'en': '[pickTo 0]',
      'ar': '',
    },
    '11kv8rw3': {
      'en': 'Unit',
      'ar': '',
    },
    '0rlk6ga0': {
      'en': 'Remark',
      'ar': '',
    },
    'wpf8ygfc': {
      'en': 'Remark here',
      'ar': '',
    },
    'ejly387d': {
      'en': 'Add',
      'ar': 'تسجيل الدخول',
    },
    'rwjms85v': {
      'en': 'Field is required',
      'ar': '',
    },
    'vtn4vhil': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'sueo80sq': {
      'en': 'Field is required',
      'ar': '',
    },
    '5n70z95a': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '8ihdtadm': {
      'en': 'Field is required',
      'ar': '',
    },
    'dobo1ur1': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '8km4dde6': {
      'en': 'Field is required',
      'ar': '',
    },
    '6didpa89': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '36ayfbun': {
      'en': 'Field is required',
      'ar': '',
    },
    'asif13ma': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'okaiupwc': {
      'en': 'Add New Activity',
      'ar': 'أضف نشاطًا جديدًا',
    },
    'pkgj3rc1': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // CustomBottomSheet
  {
    'jaaxdoyw': {
      'en': 'Close',
      'ar': 'قريب',
    },
  },
  // ActivityFilter
  {
    'x1y4xxt3': {
      'en': 'Type',
      'ar': 'يكتب',
    },
    'ufukrab5': {
      'en': 'Type Here',
      'ar': 'أكتب هنا',
    },
    'f4knb014': {
      'en': 'Date',
      'ar': 'يكتب',
    },
    'p5hdaw1r': {
      'en': 'Date Here',
      'ar': 'أكتب هنا',
    },
    't1xwmc1z': {
      'en': 'Activity Status',
      'ar': 'يكتب',
    },
    'v25ntzij': {
      'en': 'Status',
      'ar': 'أكتب هنا',
    },
    'xj0czjum': {
      'en': 'Reletd To',
      'ar': 'يكتب',
    },
    'k3yltokx': {
      'en': 'All',
      'ar': 'أكتب هنا',
    },
    '4e8j1n63': {
      'en': 'Reset',
      'ar': 'تسجيل الدخول',
    },
    'vez3x67e': {
      'en': 'Apply',
      'ar': 'تسجيل الدخول',
    },
  },
].reduce((a, b) => a..addAll(b));
