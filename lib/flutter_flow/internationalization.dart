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
      'ar': 'نسيت كلمة المرور؟',
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
      'ar': 'كل الخيوط',
    },
    'z2vp5o59': {
      'en': 'Converted',
      'ar': '',
    },
    'zgnwdlh4': {
      'en': 'Pending',
      'ar': '',
    },
    'lcougat9': {
      'en': 'Reject',
      'ar': '',
    },
    'd8gdtjla': {
      'en': 'AllUnits',
      'ar': 'جميع الوحدات',
    },
    'kor0f3du': {
      'en': 'Reserved',
      'ar': '',
    },
    'pft6wxm2': {
      'en': 'Avalible',
      'ar': '',
    },
    'wfzzlp7y': {
      'en': 'Unit In Rent',
      'ar': 'وحدة للإيجار',
    },
    'jg0ch1jg': {
      'en': 'Unit In Reant',
      'ar': 'الوحدة في ريانت',
    },
    'mw8wkehh': {
      'en': 'All Leads',
      'ar': 'كل العملاء المتوقعين',
    },
    '36er3v3o': {
      'en': 'Unit In Reant',
      'ar': 'الوحدة في ريانت',
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
      'ar': 'الجميع',
    },
    'fu9329vu': {
      'en': 'All',
      'ar': 'الجميع',
    },
    'gx44hgks': {
      'en': 'Rent',
      'ar': 'تأجير',
    },
    'mpof57ii': {
      'en': 'Sale',
      'ar': 'تخفيض السعر',
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
      'ar': 'اسم المستخدم',
    },
    'n6tb3vxb': {
      'en': 'username @gmail.com',
      'ar': 'اسم المستخدم @ gmail.com',
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
    'icm11ddj': {
      'en': 'Contact',
      'ar': 'اتصال',
    },
    'h90dm300': {
      'en': 'Properites',
      'ar': 'الصحيحين',
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
  // AddPropertyScreen
  {
    'fthkde3e': {
      'en': 'Add New Property',
      'ar': 'إضافة خاصية جديدة',
    },
    'ul6fls6s': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '7f40wqus': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'zhlwhrdv': {
      'en': 'Propert Type',
      'ar': 'نوع الملكية',
    },
    'wnphqs7k': {
      'en': 'Propert Type',
      'ar': 'نوع الملكية',
    },
    'azrhvvv0': {
      'en': 'City',
      'ar': 'مدينة',
    },
    'mrv9rf12': {
      'en': 'City',
      'ar': 'مدينة',
    },
    'g30p9hg6': {
      'en': 'Commuinty',
      'ar': 'كوموينتي',
    },
    '4q0stxv2': {
      'en': 'Commuinty',
      'ar': 'كوموينتي',
    },
    'nheyebh9': {
      'en': 'Sub Community',
      'ar': 'المجتمع الفرعي',
    },
    'wrf7nsww': {
      'en': 'Sub Community',
      'ar': 'المجتمع الفرعي',
    },
    'sdqoy0os': {
      'en': 'Ploat Number',
      'ar': 'رقم بلوات',
    },
    '8n9rzbe7': {
      'en': 'Ploat Number',
      'ar': 'رقم بلوات',
    },
    'jse1jlyx': {
      'en': 'Note',
      'ar': 'ملحوظة',
    },
    'q2wcyot0': {
      'en': 'Note',
      'ar': 'ملحوظة',
    },
    'h1urvb31': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    'n484wszl': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'hawehiyt': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'cbt7n7ki': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'r0prsxdo': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'pxt5tsp2': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '17j0cnyx': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    't6hmuahj': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '7kqa9c9n': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'stn6xkgz': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '8wr0g4a7': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'hq3xr7wi': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'xagwww80': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'w5nnqijy': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'wbbau1bx': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    '7lmy6wut': {
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
      'ar': 'متعلق ب',
    },
    'ib91xmq5': {
      'en': 'Releted To',
      'ar': 'يعيد إلى',
    },
    'ge2g2f9h': {
      'en': 'Assign To',
      'ar': 'يسند إلى',
    },
    'z0w8h7ak': {
      'en': 'Assign To',
      'ar': 'يسند إلى',
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
      'ar': 'الحقل مطلوب',
    },
    'kn45luil': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
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
      'ar': 'الحقل مطلوب',
    },
    'ajwu3045': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
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
      'ar': 'مسكن',
    },
  },
  // LeadDetailsScreen
  {
    'nzbl7tbt': {
      'en': 'Lead Details',
      'ar': 'تفاصيل الرصاص',
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
      'ar': 'مسكن',
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
      'ar': 'مسكن',
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
      'ar': 'مسكن',
    },
  },
  // AddLeadScreen
  {
    '25lqyfwu': {
      'en': 'Add a new lead',
      'ar': 'أضف عميلاً محتملاً جديدًا',
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
      'ar': 'اتصال',
    },
    'tm0if34f': {
      'en': 'Contact',
      'ar': 'اتصال',
    },
    'osl3vnxd': {
      'en': 'Lead Status',
      'ar': 'حالة الرصاص',
    },
    '75n5kgml': {
      'en': 'Lead Status',
      'ar': 'حالة الرصاص',
    },
    'q9aj966x': {
      'en': 'Unit',
      'ar': 'وحدة',
    },
    'v9x0u3dd': {
      'en': 'Unit',
      'ar': 'وحدة',
    },
    '4rjqxdal': {
      'en': 'City',
      'ar': 'مدينة',
    },
    'aymrjtvt': {
      'en': 'City',
      'ar': 'مدينة',
    },
    'jz7kmvm6': {
      'en': 'Community',
      'ar': 'تواصل اجتماعي',
    },
    '35x2pb87': {
      'en': 'Community',
      'ar': 'تواصل اجتماعي',
    },
    'ejkmdhqt': {
      'en': 'Sub Community',
      'ar': 'المجتمع الفرعي',
    },
    '30hv7tl2': {
      'en': 'Sub Community',
      'ar': 'المجتمع الفرعي',
    },
    '1v9pbm80': {
      'en': 'Rate',
      'ar': 'معدل',
    },
    'lguaaibh': {
      'en': 'Rate',
      'ar': 'معدل',
    },
    'hb95sd6y': {
      'en': 'Piriorty',
      'ar': 'بيريورتي',
    },
    '3s00l1n2': {
      'en': 'Piriorty',
      'ar': 'بيريورتي',
    },
    'uvmpimkd': {
      'en': 'Lead Source',
      'ar': 'مصدر الدليل',
    },
    'dw1psfli': {
      'en': 'Lead Source',
      'ar': 'مصدر الدليل',
    },
    'prdwmitv': {
      'en': 'Assigment',
      'ar': 'التعيين',
    },
    'btv3wgdj': {
      'en': 'Assigment',
      'ar': 'التعيين',
    },
    'jnc8ytl6': {
      'en': 'Contact',
      'ar': 'اتصال',
    },
    'o92lq1pd': {
      'en': 'Contact',
      'ar': 'اتصال',
    },
    'zfgc9m8s': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    'mkfkc62q': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'cyhyhazx': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'led6rzpn': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '4ocfppy1': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'qx7z2p5q': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'x0j0n810': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'az8qdgtb': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '8d82w17t': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'yhcmcmh6': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'utfslz94': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    '6o21jtbo': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '7ra1wvl6': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'q1h9dr4g': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'o2eodtxj': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'ct0a75ld': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'unmip5ar': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'y7plyo0e': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'ghhzg9kg': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    '8ulyt8cy': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'l4me8jhl': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'fc4x5mg4': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'df9v3ikz': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'imwdwyck': {
      'en': 'Home',
      'ar': 'مسكن',
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
      'ar': 'مسكن',
    },
  },
  // PropertyMasterSearchScreen
  {
    '9sas7zey': {
      'en': 'search',
      'ar': 'بحث',
    },
    'oueee1lb': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // UnitDetailsScreen
  {
    'vsemrqmi': {
      'en': 'Total Leads ',
      'ar': 'إجمالي العملاء المتوقعين',
    },
    'mg0k936a': {
      'en': '0',
      'ar': '0',
    },
    'cqxc1lx6': {
      'en': 'Total Activity',
      'ar': 'إجمالي النشاط',
    },
    'uiwdt346': {
      'en': '0',
      'ar': '0',
    },
    '1i4qzxol': {
      'en': 'Attach File',
      'ar': 'أرفق ملف',
    },
    'sbxgd2xz': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // AddUnitScreen
  {
    'w8z6cfba': {
      'en': 'Sale',
      'ar': 'تخفيض السعر',
    },
    'wcnofidv': {
      'en': 'Sale',
      'ar': 'تخفيض السعر',
    },
    '6wqfm5kx': {
      'en': 'Rent',
      'ar': 'تأجير',
    },
    '6okik1g1': {
      'en': 'Property',
      'ar': 'ملكية',
    },
    '7mr0fbwm': {
      'en': 'Property',
      'ar': 'ملكية',
    },
    'tfdute34': {
      'en': 'Owner',
      'ar': 'صاحب',
    },
    '06g2e5sv': {
      'en': 'Owner',
      'ar': 'صاحب',
    },
    'kw0dxt4y': {
      'en': 'Category',
      'ar': 'فئة',
    },
    'au56w32s': {
      'en': 'Category',
      'ar': 'فئة',
    },
    'st8ucruu': {
      'en': 'Total Area',
      'ar': 'المساحة الكلية',
    },
    'y2jennjg': {
      'en': 'Total Area',
      'ar': 'المساحة الكلية',
    },
    'x6ynxds9': {
      'en': 'Price',
      'ar': 'سعر',
    },
    'v036mqk4': {
      'en': 'Price',
      'ar': 'سعر',
    },
    'ezz391xn': {
      'en': 'City',
      'ar': 'مدينة',
    },
    'r4wnag30': {
      'en': 'City',
      'ar': 'مدينة',
    },
    'ilm9ghuq': {
      'en': 'Community',
      'ar': 'تواصل اجتماعي',
    },
    'bl69s7nd': {
      'en': 'Community',
      'ar': 'تواصل اجتماعي',
    },
    'u37yawp1': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    '70njs4jp': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'suma2sf1': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'o2bclex8': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '9zeugxal': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'zbgqqg21': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '4nwxqah4': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    '8jtj50ce': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'm6io4mua': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    '7qhdn0o8': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    't5q1awvc': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'x4gzwctp': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'jkw3f3hh': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'ji981fto': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '1lq69oap': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'a36ixavv': {
      'en': 'Add New Unit',
      'ar': 'أضف وحدة جديدة',
    },
    'pu60nk1h': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // AllContactScreen
  {
    '9wd8bm8n': {
      'en': 'search',
      'ar': 'بحث',
    },
    'd2qzkmgi': {
      'en': 'Filter',
      'ar': 'منقي',
    },
    '59stgch3': {
      'en': 'All Contact',
      'ar': 'جميع جهات الاتصال',
    },
    'mmta81iv': {
      'en': ' (10)',
      'ar': '(10)',
    },
    'uucay5v6': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // AllContactSearchScreen
  {
    'f8ft43pm': {
      'en': 'search',
      'ar': 'بحث',
    },
    'm7z91huf': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // AddContactScreen
  {
    'i9balv33': {
      'en': 'Mr',
      'ar': 'السيد',
    },
    'ii1wns4u': {
      'en': 'Mr',
      'ar': 'السيد',
    },
    'j7k7o56u': {
      'en': 'Miss',
      'ar': 'يغيب',
    },
    '49onx43c': {
      'en': 'Ms',
      'ar': 'آنسة',
    },
    'woqofylq': {
      'en': 'Mrs',
      'ar': 'السّيدة',
    },
    'lnp0nlum': {
      'en': 'Contact Name',
      'ar': 'اسم جهة الاتصال',
    },
    'vzabmj9g': {
      'en': 'Contact Name',
      'ar': 'اسم جهة الاتصال',
    },
    '8xaekzcw': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الالكترونى',
    },
    '3d583mgj': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الالكترونى',
    },
    'ipccgs3y': {
      'en': 'Nationalty',
      'ar': 'الجنسية',
    },
    'ww4g0fsi': {
      'en': 'Nationalty',
      'ar': 'الجنسية',
    },
    'gflgazhp': {
      'en': 'Contact Type',
      'ar': 'نوع الاتصال',
    },
    'ldipr9k7': {
      'en': 'Contact Type',
      'ar': 'نوع الاتصال',
    },
    '5q2spzne': {
      'en': 'Add',
      'ar': 'يضيف',
    },
    'kfb1nela': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '6hmjamwg': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'an98tau0': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '1m3fpvmj': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    'i8dil49t': {
      'en': 'Add a new Contact',
      'ar': 'أضف جهة اتصال جديدة',
    },
    'c6jzb7uc': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // ContactDetailScreen
  {
    'r9p520f3': {
      'en': '---------------',
      'ar': '---------------',
    },
    'qw9cuimb': {
      'en': 'Total Leads ',
      'ar': 'إجمالي العملاء المتوقعين',
    },
    'bz3dxbvo': {
      'en': 'Total Activity',
      'ar': 'إجمالي النشاط',
    },
    't37s55pl': {
      'en': 'Total Units',
      'ar': 'إجمالي الوحدات',
    },
    'pvidh9jz': {
      'en': 'Attach File',
      'ar': 'أرفق ملف',
    },
    'p7sl2ahp': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // AllPropertiesScreen
  {
    '63bjt3mt': {
      'en': 'search',
      'ar': 'بحث',
    },
    'psv1qfak': {
      'en': 'Filter',
      'ar': 'منقي',
    },
    'z83q02fu': {
      'en': 'All Properties',
      'ar': 'جميع الخصائص',
    },
    'epeo7bhh': {
      'en': ' (10)',
      'ar': '(10)',
    },
    'wsw5hh0y': {
      'en': 'Home',
      'ar': 'مسكن',
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
  // CityBottomSheet
  {
    '4h94h22z': {
      'en': 'search',
      'ar': 'بحث',
    },
    'ovhvs5wv': {
      'en': 'Cities',
      'ar': 'مدن',
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
      'ar': 'تواصل اجتماعي',
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
      'ar': 'المجتمع الفرعي',
    },
  },
  // ContactFilterBottomSheet
  {
    'muvscv56': {
      'en': 'Contact Type',
      'ar': 'نوع الاتصال',
    },
    'mv8773fb': {
      'en': 'Contact Type',
      'ar': 'نوع الاتصال',
    },
    'jg2teard': {
      'en': 'industry',
      'ar': 'صناعة',
    },
    'szfzijp1': {
      'en': 'industry',
      'ar': 'صناعة',
    },
    'g825trnz': {
      'en': 'industry Type',
      'ar': 'نوع الصناعة',
    },
    '39bfp7o0': {
      'en': 'industry Type',
      'ar': 'نوع الصناعة',
    },
    'hx9ueoaj': {
      'en': 'Reset',
      'ar': 'إعادة ضبط',
    },
    'r6pygq4m': {
      'en': 'Apply',
      'ar': 'يتقدم',
    },
  },
  // PropirtyFilterBottomSheet
  {
    'ik7xslba': {
      'en': 'Community',
      'ar': 'تواصل اجتماعي',
    },
    '2e513kir': {
      'en': 'Community',
      'ar': 'تواصل اجتماعي',
    },
    't4zj0ou6': {
      'en': 'Property Type ',
      'ar': 'نوع الملكية',
    },
    'a44p3qpa': {
      'en': 'Property Type',
      'ar': 'نوع الملكية',
    },
    'o0s75800': {
      'en': 'Reset',
      'ar': 'إعادة ضبط',
    },
    'mhfdu9px': {
      'en': 'Apply',
      'ar': 'يتقدم',
    },
  },
  // UnitFilterBottomSheet
  {
    'cwyr24n0': {
      'en': 'Availibalty',
      'ar': 'متوفر',
    },
    '23vm3jex': {
      'en': 'Availibalty',
      'ar': 'متوفر',
    },
    'hk6mj4jy': {
      'en': 'Property Master',
      'ar': 'سيد الملكية',
    },
    'c1xgtzh0': {
      'en': 'Property Master',
      'ar': 'سيد الملكية',
    },
    'jy5w1tln': {
      'en': 'Type',
      'ar': 'يكتب',
    },
    'ciiaak6c': {
      'en': 'Type',
      'ar': 'يكتب',
    },
    'd0t9aiu9': {
      'en': 'City',
      'ar': 'مدينة',
    },
    '1grdr3cb': {
      'en': 'City',
      'ar': 'مدينة',
    },
    'yas6ug0g': {
      'en': 'Category',
      'ar': 'فئة',
    },
    'watyywn1': {
      'en': 'Category',
      'ar': 'فئة',
    },
    'jkfgtvw2': {
      'en': 'Status',
      'ar': 'حالة',
    },
    'x7t4w2kb': {
      'en': 'Status',
      'ar': 'حالة',
    },
    'se94cu5z': {
      'en': 'Option 1',
      'ar': 'الخيار 1',
    },
    'it77x5za': {
      'en': 'Beadroom',
      'ar': 'مطرز بالخرز',
    },
    'p0wr95v3': {
      'en': 'Reset',
      'ar': 'إعادة ضبط',
    },
    '19dgimzn': {
      'en': 'Apply',
      'ar': 'يتقدم',
    },
  },
  // LeadFilterBottomSheet
  {
    'y3jxbwxs': {
      'en': 'Contact Type',
      'ar': 'نوع الاتصال',
    },
    '21xvq7d6': {
      'en': 'Type of contact',
      'ar': 'نوع الاتصال',
    },
    'r3sqhij0': {
      'en': 'Rating',
      'ar': 'تقييم',
    },
    '1cai98h2': {
      'en': 'Select',
      'ar': 'يختار',
    },
    'lmy4gm2i': {
      'en': 'Lead Source',
      'ar': 'مصدر الدليل',
    },
    'wr8u8qcz': {
      'en': 'Select',
      'ar': 'يختار',
    },
    're6m1f6j': {
      'en': 'Assign To',
      'ar': 'يسند إلى',
    },
    'hzyo6n6f': {
      'en': 'Select',
      'ar': 'يختار',
    },
    'ej056fx5': {
      'en': 'Lead Type',
      'ar': 'نوع الرصاص',
    },
    'gi09g6cv': {
      'en': 'Select',
      'ar': 'يختار',
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
  // Miscellaneous
  {
    '3ck2z7kc': {
      'en': 'Please turn on your location',
      'ar': 'يرجى تشغيل موقعك',
    },
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
