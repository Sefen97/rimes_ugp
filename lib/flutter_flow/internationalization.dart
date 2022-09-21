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
  // ForgetPasswordScreen
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
    '2dl5db5z': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'nwdcxntd': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    '5zzhsopk': {
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
  // AdminDashboardScreen
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
    'zo9dwsvf': {
      'en': 'All leads',
      'ar': '',
    },
    'd8gdtjla': {
      'en': 'AllUnits',
      'ar': '',
    },
    'wfzzlp7y': {
      'en': 'Unit In Rent',
      'ar': '',
    },
    'jg0ch1jg': {
      'en': 'Unit In Reant',
      'ar': '',
    },
    'mw8wkehh': {
      'en': 'All Leads',
      'ar': '',
    },
    '36er3v3o': {
      'en': 'Unit In Reant',
      'ar': '',
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
  // ActivityScreen
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
  // UnitsScreen
  {
    'zs175pxp': {
      'en': 'All Units',
      'ar': 'جميع الوحدات',
    },
    'bphk5jnw': {
      'en': ' (10)',
      'ar': '(10)',
    },
    '09j9uje7': {
      'en': 'All',
      'ar': 'تأجير',
    },
    'fu9329vu': {
      'en': 'All',
      'ar': 'تأجير',
    },
    'gx44hgks': {
      'en': 'Rent',
      'ar': 'تخفيض السعر',
    },
    'c97u2czd': {
      'en': 'Sale',
      'ar': '',
    },
    'fsysjefq': {
      'en': 'search',
      'ar': 'بحث',
    },
    'rixyta66': {
      'en': 'Filter',
      'ar': 'منقي',
    },
    'q9g69gow': {
      'en': 'Username',
      'ar': '',
    },
    'n6tb3vxb': {
      'en': 'username @gmail.com',
      'ar': '',
    },
    'my6ka01k': {
      'en': 'My Account',
      'ar': 'حسابي',
    },
    'rewnpmyn': {
      'en': 'Notifications',
      'ar': 'إشعارات',
    },
    'up350dfd': {
      'en': 'Language',
      'ar': 'لغة',
    },
    'p7vvb21f': {
      'en': 'Change password',
      'ar': 'غير كلمة السر',
    },
    'qk6xoos3': {
      'en': 'How it work',
      'ar': 'كيف تعمل',
    },
    'gflrxg6t': {
      'en': 'Logout',
      'ar': 'تسجيل خروج',
    },
    '87mrtb5i': {
      'en': 'Units',
      'ar': 'الوحدات',
    },
  },
  // LeadsScreen
  {
    'xg7pspv6': {
      'en': 'All Leads',
      'ar': 'كل العملاء المتوقعين',
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
  // MoreScreen
  {
    'ckyux0ln': {
      'en': 'Contact',
      'ar': '',
    },
    '8pefa3yc': {
      'en': 'Properites',
      'ar': '',
    },
    'h25m206f': {
      'en': 'More',
      'ar': 'أكثر',
    },
  },
  // ActivityDetailsScreen
  {
    '8mygmwfr': {
      'en': ' Activity Details',
      'ar': 'تفاصيل النشاط',
    },
    'r9vb0syt': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // MyAccountScreen
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
  // AddActivityScreen
  {
    'ifysoqeu': {
      'en': 'Type',
      'ar': 'يكتب',
    },
    'wgs4e89x': {
      'en': 'Type Here',
      'ar': 'أكتب هنا',
    },
    '7rs15d4s': {
      'en': 'Pick To',
      'ar': 'اختر',
    },
    '2jth2lhu': {
      'en': '[pickTo 0]',
      'ar': '[اختيار 0]',
    },
    'h108y2y1': {
      'en': 'Unit',
      'ar': 'وحدة',
    },
    'drhls8ul': {
      'en': 'Related',
      'ar': 'يكتب',
    },
    'ib91xmq5': {
      'en': 'Releted To',
      'ar': 'أكتب هنا',
    },
    'ge2g2f9h': {
      'en': 'Assign To',
      'ar': 'يسند إلى',
    },
    'z0w8h7ak': {
      'en': 'Assign To',
      'ar': 'اسم جهة الاتصال',
    },
    'fdzu8scv': {
      'en': 'Activity Status',
      'ar': 'حالة النشاط',
    },
    'olu0vq5o': {
      'en': 'Status',
      'ar': 'حالة',
    },
    '0rlk6ga0': {
      'en': 'Remark',
      'ar': 'ملاحظة',
    },
    'wpf8ygfc': {
      'en': 'Remark here',
      'ar': 'لاحظ هنا',
    },
    'ejly387d': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    'rwjms85v': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'vtn4vhil': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'u7ttxbjh': {
      'en': 'Field is required',
      'ar': '',
    },
    'kn45luil': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'sueo80sq': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '5n70z95a': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'obfzc1lh': {
      'en': 'Field is required',
      'ar': '',
    },
    'ajwu3045': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '8km4dde6': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '6didpa89': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'uzwdcqku': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'iu7vsvpt': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
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
  // VerifyScreen
  {
    'g65y2hg6': {
      'en': 'Please enter 4 digit code send to',
      'ar': 'الرجاء إدخال رمز مكون من 4 أرقام أرسل إلى',
    },
    'jo3tebtz': {
      'en': 'Send',
      'ar': 'إرسال',
    },
    '33ehefl3': {
      'en': 'Resend Code',
      'ar': 'أعد إرسال الرمز',
    },
    '9r0kyl2k': {
      'en': 'Verify your email',
      'ar': 'قم بتأكيد بريدك الألكتروني',
    },
    '1ft6trdw': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // LoockupCommonSearchScreen
  {
    'uu1567j9': {
      'en': 'search',
      'ar': 'بحث',
    },
    'xzp0mkpx': {
      'en': 'Home',
      'ar': '',
    },
  },
  // LeadDetailsScreen
  {
    'nzbl7tbt': {
      'en': 'Lead Details',
      'ar': 'تفاصيل النشاط',
    },
    'kdgongdg': {
      'en': 'Comments ',
      'ar': 'تعليقات',
    },
    'j72pgy9r': {
      'en': '(3)',
      'ar': '(3)',
    },
    'v6banz4y': {
      'en': 'Add Comment',
      'ar': 'أضف تعليق',
    },
    'oltdodfv': {
      'en': 'Home',
      'ar': '',
    },
  },
  // PropertySearchScreen
  {
    'ro200so0': {
      'en': 'search',
      'ar': 'بحث',
    },
    'rwz0d5ix': {
      'en': 'Home',
      'ar': '',
    },
  },
  // LookuopAllEmployeesSearchScreen
  {
    'cs8qpuyy': {
      'en': 'search',
      'ar': 'بحث',
    },
    'aq86uunt': {
      'en': 'Home',
      'ar': '',
    },
  },
  // SalesLeadSearchScreen
  {
    'x7foek7v': {
      'en': 'search',
      'ar': 'بحث',
    },
    'wiz0kpmk': {
      'en': 'Home',
      'ar': '',
    },
  },
  // AddLeadScreen
  {
    '25lqyfwu': {
      'en': 'Add a new lead',
      'ar': 'أضف نشاطًا جديدًا',
    },
    'dxxoi6eo': {
      'en': 'Rent',
      'ar': 'تأجير',
    },
    'duidywgl': {
      'en': 'Rent',
      'ar': 'تأجير',
    },
    'jr5fvejb': {
      'en': 'Sale',
      'ar': 'تخفيض السعر',
    },
    'k53j0ga9': {
      'en': 'Contact',
      'ar': 'يكتب',
    },
    'tm0if34f': {
      'en': 'Contact',
      'ar': 'أكتب هنا',
    },
    'osl3vnxd': {
      'en': 'Lead Status',
      'ar': 'يكتب',
    },
    '75n5kgml': {
      'en': 'Lead Status',
      'ar': 'أكتب هنا',
    },
    'q9aj966x': {
      'en': 'Unit',
      'ar': 'يكتب',
    },
    'v9x0u3dd': {
      'en': 'Unit',
      'ar': 'أكتب هنا',
    },
    '4rjqxdal': {
      'en': 'City',
      'ar': 'يكتب',
    },
    'aymrjtvt': {
      'en': 'City',
      'ar': 'أكتب هنا',
    },
    'jz7kmvm6': {
      'en': 'Community',
      'ar': 'يكتب',
    },
    '35x2pb87': {
      'en': 'Community',
      'ar': 'أكتب هنا',
    },
    'ejkmdhqt': {
      'en': 'Sub Community',
      'ar': 'يكتب',
    },
    '30hv7tl2': {
      'en': 'Sub Community',
      'ar': 'أكتب هنا',
    },
    '1v9pbm80': {
      'en': 'Rate',
      'ar': 'يكتب',
    },
    'lguaaibh': {
      'en': 'Rate',
      'ar': 'أكتب هنا',
    },
    'hb95sd6y': {
      'en': 'Piriorty',
      'ar': 'يكتب',
    },
    '3s00l1n2': {
      'en': 'Piriorty',
      'ar': 'أكتب هنا',
    },
    'uvmpimkd': {
      'en': 'Lead Source',
      'ar': 'يكتب',
    },
    'dw1psfli': {
      'en': 'Lead Source',
      'ar': 'أكتب هنا',
    },
    'prdwmitv': {
      'en': 'Assigment',
      'ar': 'يكتب',
    },
    'btv3wgdj': {
      'en': 'Assigment',
      'ar': 'أكتب هنا',
    },
    'jnc8ytl6': {
      'en': 'Contact',
      'ar': 'يكتب',
    },
    'o92lq1pd': {
      'en': 'Contact',
      'ar': 'أكتب هنا',
    },
    'zfgc9m8s': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    'mkfkc62q': {
      'en': 'Field is required',
      'ar': '',
    },
    'cyhyhazx': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'led6rzpn': {
      'en': 'Field is required',
      'ar': '',
    },
    '4ocfppy1': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'qx7z2p5q': {
      'en': 'Field is required',
      'ar': '',
    },
    'x0j0n810': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'az8qdgtb': {
      'en': 'Field is required',
      'ar': '',
    },
    '8d82w17t': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'yhcmcmh6': {
      'en': 'Field is required',
      'ar': '',
    },
    'utfslz94': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '6o21jtbo': {
      'en': 'Field is required',
      'ar': '',
    },
    '7ra1wvl6': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'q1h9dr4g': {
      'en': 'Field is required',
      'ar': '',
    },
    'o2eodtxj': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'ct0a75ld': {
      'en': 'Field is required',
      'ar': '',
    },
    'unmip5ar': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'y7plyo0e': {
      'en': 'Field is required',
      'ar': '',
    },
    'ghhzg9kg': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    '8ulyt8cy': {
      'en': 'Field is required',
      'ar': '',
    },
    'l4me8jhl': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'fc4x5mg4': {
      'en': 'Field is required',
      'ar': '',
    },
    'df9v3ikz': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
    'imwdwyck': {
      'en': 'Home',
      'ar': '',
    },
  },
  // CustomBottomSheet
  {
    'jaaxdoyw': {
      'en': 'Close',
      'ar': 'قريب',
    },
  },
  // ActivityFilterBottomSheet
  {
    'x1y4xxt3': {
      'en': 'Type',
      'ar': 'يكتب',
    },
    'ufukrab5': {
      'en': 'Type Here',
      'ar': 'أكتب هنا',
    },
    't1xwmc1z': {
      'en': 'Activity Status',
      'ar': 'حالة النشاط',
    },
    'v25ntzij': {
      'en': 'Status',
      'ar': 'حالة',
    },
    '4e8j1n63': {
      'en': 'Reset',
      'ar': 'إعادة ضبط',
    },
    'vez3x67e': {
      'en': 'Apply',
      'ar': 'يتقدم',
    },
  },
  // AddLeadCommentBottomSheet
  {
    'w5e46ize': {
      'en': 'Add comment',
      'ar': 'أضف تعليق',
    },
    'vs25j2wv': {
      'en': 'Enter your comment here...',
      'ar': 'أدخل تعليقك هنا...',
    },
    'nkg8hh9g': {
      'en': 'Add',
      'ar': 'يضيف',
    },
  },
  // LeadFilter
  {
    'y3jxbwxs': {
      'en': 'Contact Type',
      'ar': 'يكتب',
    },
    '21xvq7d6': {
      'en': 'Type of contact',
      'ar': 'أكتب هنا',
    },
    'r3sqhij0': {
      'en': 'Rating',
      'ar': 'حالة النشاط',
    },
    '1cai98h2': {
      'en': 'Select',
      'ar': 'حالة',
    },
    'lmy4gm2i': {
      'en': 'Lead Source',
      'ar': 'يكتب',
    },
    'wr8u8qcz': {
      'en': 'Select',
      'ar': 'أكتب هنا',
    },
    're6m1f6j': {
      'en': 'Assign To',
      'ar': 'يكتب',
    },
    'hzyo6n6f': {
      'en': 'Select',
      'ar': 'أكتب هنا',
    },
    'ej056fx5': {
      'en': 'Lead Type',
      'ar': 'يكتب',
    },
    'gi09g6cv': {
      'en': 'Select',
      'ar': 'أكتب هنا',
    },
    'z8ozwg5n': {
      'en': 'Reset',
      'ar': 'إعادة ضبط',
    },
    '3dbmdyvc': {
      'en': 'Apply',
      'ar': 'يتقدم',
    },
  },
  // CityBottomSheet
  {
    '4h94h22z': {
      'en': 'search',
      'ar': 'بحث',
    },
    'ovhvs5wv': {
      'en': 'Cities',
      'ar': '',
    },
  },
  // CommunityMobileBottomSheet
  {
    'o5hvtdj5': {
      'en': 'search',
      'ar': 'بحث',
    },
    '818k13ud': {
      'en': 'Community',
      'ar': '',
    },
  },
  // SubCommunityBottomSheet
  {
    'o96m3yn8': {
      'en': 'search',
      'ar': 'بحث',
    },
    '0bbb8dfw': {
      'en': 'Sub Community',
      'ar': '',
    },
  },
  // Miscellaneous
  {
    'kyuwqwvy': {
      'en': '',
      'ar': '',
    },
    'tn4tom3r': {
      'en': '',
      'ar': '',
    },
    '134ckl43': {
      'en': '',
      'ar': '',
    },
    '5yz6xadn': {
      'en': '',
      'ar': '',
    },
    'lyakwqqz': {
      'en': '',
      'ar': '',
    },
    'vicli6b2': {
      'en': '',
      'ar': '',
    },
    't0obbik6': {
      'en': '',
      'ar': '',
    },
    'h248u9o8': {
      'en': '',
      'ar': '',
    },
    'z0iqeq5e': {
      'en': '',
      'ar': '',
    },
    'kpz1evdu': {
      'en': '',
      'ar': '',
    },
    '9yphrkh4': {
      'en': '',
      'ar': '',
    },
    'x74mn6n4': {
      'en': '',
      'ar': '',
    },
    '16n269e6': {
      'en': '',
      'ar': '',
    },
    'oaq9yl6r': {
      'en': '',
      'ar': '',
    },
    'yp3kbpe8': {
      'en': '',
      'ar': '',
    },
    'rb6tfcbb': {
      'en': '',
      'ar': '',
    },
    'laxkcxdi': {
      'en': '',
      'ar': '',
    },
    'xuhnkxtx': {
      'en': '',
      'ar': '',
    },
    'ub4q9eoq': {
      'en': '',
      'ar': '',
    },
    'mof55fhu': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
