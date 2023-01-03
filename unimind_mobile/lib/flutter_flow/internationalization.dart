import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['tr', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? trText = '',
    String? enText = '',
  }) =>
      [trText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

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
  // HomePage
  {
    '7qcuphms': {
      'tr': 'unimind',
      'en': 'unimind',
    },
    'vndatdjz': {
      'tr': 'Önerilen Seanslar',
      'en': 'Suggested Sessions',
    },
    'ci03lrlt': {
      'tr': 'Kayıtlı Seanslarım',
      'en': 'Enrolled Sessions',
    },
    'tqnn188x': {
      'tr': 'Blog',
      'en': 'Blog',
    },
    'rnfn207q': {
      'tr': 'Ana Sayfa',
      'en': 'Main Page',
    },
  },
  // meetings
  {
    'hheoqsxl': {
      'tr': 'Seanslarım',
      'en': 'Sessions',
    },
    'nf6bg8ki': {
      'tr': 'Gelecek Seanslar',
      'en': 'Incoming Seasons',
    },
    'sjezk0vo': {
      'tr': 'Takvim',
      'en': 'Calendar',
    },
  },
  // Profile
  {
    'w3zxc0zo': {
      'tr': 'Mert Kurt',
      'en': 'Joy Augustin',
    },
    '6ub4zs8q': {
      'tr': 'mert@kurt.com',
      'en': 'joy@augustin.com',
    },
    'x91n4rsz': {
      'tr': 'Hesap',
      'en': 'Account',
    },
    'y9078l28': {
      'tr': 'Ödeme Seçenekleri',
      'en': 'Payment Options',
    },
    '1f574rrd': {
      'tr': 'Bildirim Tercihleri',
      'en': 'Notification Settings',
    },
    '3iwga5gm': {
      'tr': 'Profili Düzenle',
      'en': 'Edit Profile',
    },
    'llssnmnj': {
      'tr': 'Genel',
      'en': 'General',
    },
    'e4bb87rg': {
      'tr': 'Destek',
      'en': 'Support',
    },
    '7jg42lxa': {
      'tr': 'Kullanım Koşulları',
      'en': 'Terms of Service',
    },
    'wqlc8v1p': {
      'tr': 'Arkadaşlarını Davet Et',
      'en': 'Invite Friends',
    },
    '7qnlk0fm': {
      'tr': 'Profil',
      'en': 'Profile',
    },
    'beltosaf': {
      'tr': 'Profil',
      'en': 'Profile',
    },
  },
  // VerificationPin
  {
    'kmyom1px': {
      'tr': 'Kodunuzu Doğrulayın',
      'en': 'Confirm your Code',
    },
    'kh7y3rzb': {
      'tr': 'Bu kod hesabınızı güvenli tutmaya yarar.',
      'en': 'This code helps keep your account safe and secure.',
    },
    'jrfu90a8': {
      'tr': 'Doğrula & Devam et',
      'en': 'Confirm & Continue',
    },
    '00rs8s7g': {
      'tr': 'Pin Kodu Girin',
      'en': 'Enter Pin Code Below',
    },
    'ab6mu0ee': {
      'tr': 'Ana Sayfa',
      'en': 'Home',
    },
  },
  // Chat
  {
    'nfyhke7b': {
      'tr': 'Chat',
      'en': 'Chat',
    },
    'cz55x4nu': {
      'tr': 'Grup 2',
      'en': 'Grup 2',
    },
    '4fpg4yxz': {
      'tr': '14:12',
      'en': '14:12',
    },
    'r3uqgpzu': {
      'tr':
          'Client Acquisition for ddfgdfgdf dfgdfg dfgdfgdfg dfggfgdf dfgfgfg dfgdf dfgdfgdfg. fggdfg dfgdfg',
      'en':
          'Client Acquisition for ddfgdfgdf dfgdfg dfgdfgdfg dfggfgdf dfgfgfg dfgdf dfgdfgdfg. fggdfg dfgdfg',
    },
    '3j5smu9z': {
      'tr': 'Grup 3',
      'en': 'Grup 3',
    },
    'ph7ijsdt': {
      'tr': '11:03',
      'en': '11:03',
    },
    'wsikuaby': {
      'tr':
          'Client Acquisition for ddfgdfgdf dfgdfg dfgdfgdfg dfggfgdf dfgfgfg dfgdf dfgdfgdfg. fggdfg dfgdfg',
      'en':
          'Client Acquisition for ddfgdfgdf dfgdfg dfgdfgdfg dfggfgdf dfgfgfg dfgdf dfgdfgdfg. fggdfg dfgdfg',
    },
    '01dxamek': {
      'tr': 'Chat',
      'en': 'Chat',
    },
  },
  // Onboarding
  {
    'dy92636z': {
      'tr': 'Header One',
      'en': 'Header One',
    },
    '3dc6iw9n': {
      'tr':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    },
    '5tyjjc2g': {
      'tr': 'Header Two',
      'en': 'Header Two',
    },
    'ykw7pq4f': {
      'tr':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    },
    '563u7suu': {
      'tr': 'Header Three',
      'en': 'Header Three',
    },
    '5861qeh8': {
      'tr':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    },
    '46lxdwjg': {
      'tr': 'Login',
      'en': 'Login',
    },
    'zql3ossy': {
      'tr': 'Register',
      'en': 'Register',
    },
    '5uy65jm9': {
      'tr': 'Welcome',
      'en': 'Welcome',
    },
    '5u5cdh9b': {
      'tr': 'Home',
      'en': 'Home',
    },
  },
  // Questionarre
  {
    'swdxwdsi': {
      'tr': 'Question 1/3',
      'en': 'Question 1/3',
    },
    'a7fm89js': {
      'tr': 'How is your mood?',
      'en': 'How is your mood?',
    },
    'sq6rckt8': {
      'tr': 'On a scale of 1 - 3 how are you feeling today?',
      'en': 'On a scale of 1 - 3 how are you feeling today?',
    },
    '57owniba': {
      'tr': 'Choice 1',
      'en': 'Choice 1',
    },
    'z7hcx3wo': {
      'tr': 'Choice 2',
      'en': 'Choice 2',
    },
    'uuioqnsl': {
      'tr': 'Choice 3',
      'en': 'Choice 3',
    },
    'wjmiujwr': {
      'tr': 'Next Question',
      'en': 'Next Question',
    },
    '80j4bsov': {
      'tr': 'Question 1/3',
      'en': 'Question 1/3',
    },
    'uzt14lfy': {
      'tr': 'How is your mood?',
      'en': 'How is your mood?',
    },
    '8yz3q2yy': {
      'tr': 'On a scale of 1 - 3 how are you feeling today?',
      'en': 'On a scale of 1 - 3 how are you feeling today?',
    },
    'xovb2uua': {
      'tr': 'Choice 1',
      'en': 'Choice 1',
    },
    '2ruaka8y': {
      'tr': 'Choice 2',
      'en': 'Choice 2',
    },
    'nzzxkkjx': {
      'tr': 'Choice 3',
      'en': 'Choice 3',
    },
    'm65tya49': {
      'tr': 'Next Question',
      'en': 'Next Question',
    },
    'ikdh32gz': {
      'tr': 'Question 1/3',
      'en': 'Question 1/3',
    },
    'lbsbnryw': {
      'tr': 'How is your mood?',
      'en': 'How is your mood?',
    },
    'rpzx5301': {
      'tr': 'On a scale of 1 - 3 how are you feeling today?',
      'en': 'On a scale of 1 - 3 how are you feeling today?',
    },
    'pmvlbeyb': {
      'tr': 'Choice 1',
      'en': 'Choice 1',
    },
    'nceya57c': {
      'tr': 'Choice 2',
      'en': 'Choice 2',
    },
    'the7t9u7': {
      'tr': 'Choice 3',
      'en': 'Choice 3',
    },
    'hmt60jwr': {
      'tr': 'See Matched Sessions',
      'en': 'Next Question',
    },
    'gyrjoup7': {
      'tr': 'Grubunu Bul',
      'en': 'Find Your Group',
    },
    'pl76sk7q': {
      'tr': 'Home',
      'en': 'Home',
    },
  },
  // PaymentMethodList
  {
    'gibvhrmt': {
      'tr': 'Ödeme Seçenekleri',
      'en': 'Payment Options',
    },
    'acb1s3zd': {
      'tr': 'Kart Ekle',
      'en': 'Add Cart',
    },
    '1of4xjef': {
      'tr': 'Ödeme Yap',
      'en': 'Pay Now',
    },
    'f6f0jyec': {
      'tr': 'Ana Sayfa',
      'en': 'Home',
    },
  },
  // SignIn
  {
    'tbmktfz6': {
      'tr': 'unimind',
      'en': 'unimind',
    },
    'r5cmoeuu': {
      'tr': 'Giriş Yap',
      'en': 'Sign In',
    },
    '03d42a5b': {
      'tr': 'Kayıt Ol',
      'en': 'Sign Up',
    },
    'q7rz4jd3': {
      'tr': 'Home',
      'en': 'Home',
    },
  },
  // EditProfile
  {
    'vmlqruf3': {
      'tr': 'Fotoğrafı Değiştir',
      'en': 'Change Photo',
    },
    'rjbwajyx': {
      'tr': 'İsim Soyisim',
      'en': 'Full Name',
    },
    'nplmbddz': {
      'tr': 'Telefon Numarası',
      'en': 'Phone Number',
    },
    'f1nu2zj6': {
      'tr': 'Doğum Tarihi',
      'en': 'Birth Date',
    },
    '2j0u5ex4': {
      'tr': 'Değişiklikleri Kaydet',
      'en': 'Save Changes',
    },
    'oihghkim': {
      'tr': 'Profili Güncelle',
      'en': 'Edit Profile',
    },
  },
  // MeetingDetails
  {
    't7htr4gq': {
      'tr': 'Seans Başlığı',
      'en': 'Session Title',
    },
    'x139xkve': {
      'tr': '40 Dakika',
      'en': '40 Minutes',
    },
    'n1gb9ews': {
      'tr': 'İçerik',
      'en': 'İçerik',
    },
    'zkrdjd97': {
      'tr':
          'Seansın içerği lorem ipsum  lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum',
      'en':
          'Seansın içerği lorem ipsum  lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum',
    },
    '6sk9f0x2': {
      'tr': 'Danışman',
      'en': 'Consultant',
    },
    'vo4g9cne': {
      'tr': 'Danışman İsmi',
      'en': 'Consultant Name',
    },
    '9sfovswp': {
      'tr':
          'Hello World Hello World Hello World Hello World Hello World Hello World Hello WorldHello World H',
      'en':
          'Hello World Hello World Hello World Hello World Hello World Hello World Hello WorldHello World H',
    },
    'bn6ntue8': {
      'tr': 'Gelecek Seanslar',
      'en': 'Upcoming Lessons',
    },
    't4stb6k2': {
      'tr': 'Begin Lessons',
      'en': 'Begin Lessons',
    },
    '2u2il0zu': {
      'tr': 'Home',
      'en': 'Home',
    },
  },
  // SuggestedMeetings
  {
    'uo97vyrm': {
      'tr': 'Suggested Meetings',
      'en': 'Suggested Meetings',
    },
    '4l4wkdm6': {
      'tr': 'Meeting Title 1',
      'en': 'Meeting Title 1',
    },
    'juz82oe4': {
      'tr': '40 Minutes',
      'en': '40 Minutes',
    },
    'u8yv9t4j': {
      'tr': 'Consultant Name ',
      'en': 'Consultant Name',
    },
    '5xlzaawm': {
      'tr':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    },
    'uj7hyu5i': {
      'tr': 'Meeting Title 2',
      'en': 'Meeting Title 2',
    },
    'k3uvo1uz': {
      'tr': '40 Minutes',
      'en': '40 Minutes',
    },
    '73raui0y': {
      'tr': 'Consultant Name ',
      'en': 'Consultant Name ',
    },
    'p38le2wi': {
      'tr':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    },
    'y30837jc': {
      'tr': 'Meeting Title 3',
      'en': 'Meeting Title 3',
    },
    'hqggt33a': {
      'tr': '40 Minutes',
      'en': '40 Minutes',
    },
    'eba4k9ww': {
      'tr': 'Consultant Name ',
      'en': 'Consultant Name ',
    },
    '1prmzq7p': {
      'tr':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    },
    'stosmtgu': {
      'tr': 'Continue',
      'en': 'Next Question',
    },
  },
  // CreditCardForm
  {
    'uwvv7oer': {
      'tr': 'Kart Adı Girin',
      'en': 'Enter Card Name',
    },
    'jk56txxg': {
      'tr': 'Adınız',
      'en': 'Your Name',
    },
  },
  // ChatCard
  {
    '00087ugp': {
      'tr': 'Grup 1',
      'en': 'Grup 1',
    },
    'y7apor0v': {
      'tr': 'Dün',
      'en': 'Yesterday',
    },
    'd5t1uyyw': {
      'tr':
          'Client Acquisition for ddfgdfgdf dfgdfg dfgdfgdfg dfggfgdf dfgfgfg dfgdf dfgdfgdfg. fggdfg dfgdfg',
      'en':
          'Client Acquisition for ddfgdfgdf dfgdfg dfgdfgdfg dfggfgdf dfgfgfg dfgdf dfgdfgdfg. fggdfg dfgdfg',
    },
  },
  // SessionCard
  {
    'jjdxqbq7': {
      'tr': '[Appointment Type]',
      'en': '[Appointment Type]',
    },
    '04twg4ue': {
      'tr': '[Appointment Type]',
      'en': '[Appointment Type]',
    },
    '5zifoa8c': {
      'tr': '[date_time]',
      'en': '[date_time]',
    },
    'tl2auzom': {
      'tr': '[jm]',
      'en': '[jm]',
    },
  },
  // EnrolledSession
  {
    'fhjko45g': {
      'tr': 'Lesson Name',
      'en': 'Lesson Name',
    },
    'v4kyhi0e': {
      'tr': 'A description of your lesson goes here...',
      'en': 'A description of your lesson goes here...',
    },
  },
  // BlogCard
  {
    'cz09vjbr': {
      'tr': 'Fitness',
      'en': 'Fitness',
    },
    '4l58o2sj': {
      'tr': 'The Running Ragamuffins',
      'en': 'The Running Ragamuffins',
    },
    '5nwc5a55': {
      'tr': '216 Members',
      'en': '216 Members',
    },
  },
  // sessionCard2
  {
    '3ehwrn9z': {
      'tr': '[Appointment Type]',
      'en': '[Appointment Type]',
    },
    '5ir7b9sp': {
      'tr': '[display_name]',
      'en': '[display_name]',
    },
    '7yzfyzsb': {
      'tr': '[date_time]',
      'en': '[date_time]',
    },
    'dj0ocbfx': {
      'tr': 'Hello World',
      'en': 'Hello World',
    },
  },
  // upcomingSession
  {
    'jtizxc7n': {
      'tr': 'Seans Adı',
      'en': 'Lesson Name',
    },
    '3g6ehvnc': {
      'tr': 'A description of your lesson goes here...',
      'en': 'A description of your lesson goes here...',
    },
  },
  // loginTabPage
  {
    'uzourdy0': {
      'tr': 'E-mail',
      'en': 'E-mail',
    },
    'nz9qu32j': {
      'tr': 'Veya',
      'en': 'Or',
    },
    'joei5njm': {
      'tr': 'Telefon Numarası',
      'en': 'Phone number',
    },
    '4nro2jjz': {
      'tr': 'Giriş Yap',
      'en': 'Sign In',
    },
    'eqmz8724': {
      'tr': 'Şifremi unuttum?',
      'en': 'Forgot Password?',
    },
    'l3rxqecx': {
      'tr': 'Giriş yapmak için hesaplarınızı kullanın',
      'en': 'Or use a social account to login',
    },
  },
  // signupTabPage
  {
    'hhg5865k': {
      'tr': 'E-mail',
      'en': 'E-mail',
    },
    'idmp7i68': {
      'tr': 'Telefon numarası',
      'en': 'Phone number',
    },
    'xombkwwb': {
      'tr': 'Ad Soyad',
      'en': 'Full Name',
    },
    '8e0w74ak': {
      'tr': 'Doğum Tarihi (GG/AA/YYYY)',
      'en': 'Birthdate (DD/MM/YYYY)',
    },
    '6qiw1gyw': {
      'tr': 'Hesap Oluştur',
      'en': 'Create Account',
    },
    '9dqlqd0g': {
      'tr': 'Kayıt olmak için hesaplarınızı kullanın',
      'en': 'Or use a social account to sign-up',
    },
  },
  // Miscellaneous
  {
    '3ffcrbp4': {
      'tr': '',
      'en': '',
    },
    'zjdr95sf': {
      'tr': '',
      'en': '',
    },
    '0vayum3j': {
      'tr': '',
      'en': '',
    },
    'ofahxq8b': {
      'tr': '',
      'en': '',
    },
    'z8zobu81': {
      'tr': '',
      'en': '',
    },
    'r5dj3f07': {
      'tr': '',
      'en': '',
    },
    'ngu0z4ve': {
      'tr': '',
      'en': '',
    },
    'uvym5ugy': {
      'tr': '',
      'en': '',
    },
    'uawv5gnv': {
      'tr': '',
      'en': '',
    },
    '4g1905k8': {
      'tr': '',
      'en': '',
    },
    '4lgj4c6e': {
      'tr': '',
      'en': '',
    },
    'blzai109': {
      'tr': '',
      'en': '',
    },
    '0egni4zx': {
      'tr': '',
      'en': '',
    },
    'pcyijqul': {
      'tr': '',
      'en': '',
    },
    '9ux59k1f': {
      'tr': '',
      'en': '',
    },
    'w3eilpqv': {
      'tr': '',
      'en': '',
    },
    'bvihjtfp': {
      'tr': '',
      'en': '',
    },
    'ogmhi6z3': {
      'tr': '',
      'en': '',
    },
    'heh73pww': {
      'tr': '',
      'en': '',
    },
    '8imvi0vw': {
      'tr': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
