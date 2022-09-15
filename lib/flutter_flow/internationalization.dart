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
    'onmin3l2': {
      'en': 'All leads',
      'ar': '',
    },
    'f5gav5t7': {
      'en': 'Converted',
      'ar': '',
    },
    'iprl558d': {
      'en': 'Peanding',
      'ar': '',
    },
    'gtxuti0q': {
      'en': 'Rejected',
      'ar': '',
    },
    'ixn0kg6m': {
      'en': 'AllUnits',
      'ar': '',
    },
    't7xhju0n': {
      'en': 'Reserved',
      'ar': '',
    },
    'bx36zckp': {
      'en': 'Availble',
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
  // ActivityDetails
  {
    '8mygmwfr': {
      'en': ' Activity Details',
      'ar': 'تفاصيل النشاط',
    },
    'zhb6s965': {
      'en': 'change',
      'ar': 'يتغيرون',
    },
    'xwkxhrc4': {
      'en': 'Comments ',
      'ar': 'تعليقات',
    },
    'payz4gjk': {
      'en': '(3)',
      'ar': '(3)',
    },
    'zoy1mlf0': {
      'en': 'Add Comment',
      'ar': 'أضف تعليق',
    },
    'xlr8wyhr': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'd27l7sm7': {
      'en': '9-5-2021 5:30 PM',
      'ar': '9-5-2021 5:30 مساءً',
    },
    'azgjwx8l': {
      'en':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
      'ar': 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد',
    },
    '2s479f0p': {
      'en': 'Name 2',
      'ar': 'الاسم 2',
    },
    'q0rczkoi': {
      'en': '9-5-2021 5:30 PM',
      'ar': '9-5-2021 5:30 مساءً',
    },
    'f29v7bhl': {
      'en':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
      'ar': 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد',
    },
    'b6o3ste6': {
      'en': 'Name 3',
      'ar': 'الاسم 3',
    },
    '0qjwsjz1': {
      'en': '9-5-2021 5:30 PM',
      'ar': '9-5-2021 5:30 مساءً',
    },
    '6ab8kc6y': {
      'en':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
      'ar': 'لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد',
    },
    'r9vb0syt': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // AddActivity
  {
    'ifysoqeu': {
      'en': 'Type',
      'ar': 'يكتب',
    },
    'wgs4e89x': {
      'en': 'Type Here',
      'ar': 'أكتب هنا',
    },
    'ge2g2f9h': {
      'en': 'Assign To',
      'ar': 'يسند إلى',
    },
    'z0w8h7ak': {
      'en': 'Name of contact',
      'ar': 'اسم جهة الاتصال',
    },
    'ebgs0p1n': {
      'en': 'Date',
      'ar': 'تاريخ',
    },
    'af0ilssx': {
      'en': 'Date',
      'ar': 'تاريخ',
    },
    'fdzu8scv': {
      'en': 'Activity Status',
      'ar': 'حالة النشاط',
    },
    'olu0vq5o': {
      'en': 'Status',
      'ar': 'حالة',
    },
    '7rs15d4s': {
      'en': 'Pick To',
      'ar': 'اختر',
    },
    'ylbcyuoj': {
      'en': '[pickTo 0]',
      'ar': '[اختيار 0]',
    },
    's7xg3yev': {
      'en': 'Unit',
      'ar': 'وحدة',
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
    'sueo80sq': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    '5n70z95a': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'الرجاء تحديد خيار من القائمة المنسدلة',
    },
    '8ihdtadm': {
      'en': 'Field is required',
      'ar': 'الحقل مطلوب',
    },
    'dobo1ur1': {
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
    'f4knb014': {
      'en': 'Date',
      'ar': 'تاريخ',
    },
    'p5hdaw1r': {
      'en': 'Date Here',
      'ar': 'التاريخ هنا',
    },
    't1xwmc1z': {
      'en': 'Activity Status',
      'ar': 'حالة النشاط',
    },
    'v25ntzij': {
      'en': 'Status',
      'ar': 'حالة',
    },
    'xj0czjum': {
      'en': 'Reletd To',
      'ar': 'إعادة إلى',
    },
    'k3yltokx': {
      'en': 'All',
      'ar': 'الجميع',
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
  // AddCommentBottomSheet
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
].reduce((a, b) => a..addAll(b));
