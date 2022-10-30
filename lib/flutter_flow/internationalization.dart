import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['tr', 'en'];

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
    'arsy35hh': {
      'tr': '[Appointment Type]',
      'en': '[Appointment Type]',
    },
    '3lw18687': {
      'tr': '[Appointment Type]',
      'en': '[Appointment Type]',
    },
    'el42tdhx': {
      'tr': '[date_time]',
      'en': '[date_time]',
    },
    'w0mvm4su': {
      'tr': '[jm]',
      'en': '[jm]',
    },
    'r1lk0e8d': {
      'tr': '[Appointment Type]',
      'en': '[Appointment Type]',
    },
    'vis7g33t': {
      'tr': '[Appointment Type]',
      'en': '[Appointment Type]',
    },
    'j7w6lpxy': {
      'tr': '[date_time]',
      'en': '[date_time]',
    },
    '6qzzjk3r': {
      'tr': '[jm]',
      'en': '[jm]',
    },
    'ci03lrlt': {
      'tr': 'Kayıtlı Seanslarım',
      'en': 'Enrolled Sessions',
    },
    'elhebbns': {
      'tr': 'Lesson Name',
      'en': 'Lesson Name',
    },
    '1p8eusk2': {
      'tr': 'A description of your lesson goes here...',
      'en': 'A description of your lesson goes here...',
    },
    'dv6pbam8': {
      'tr': 'Lesson Name',
      'en': 'Lesson Name',
    },
    'yrfjwfmm': {
      'tr': 'A description of your lesson goes here...',
      'en': 'A description of your lesson goes here...',
    },
    'tqnn188x': {
      'tr': 'Blog',
      'en': 'Blog',
    },
    '5px7flat': {
      'tr': 'Fitness',
      'en': 'Fitness',
    },
    'hyk15iul': {
      'tr': 'The Running Ragamuffins',
      'en': 'The Running Ragamuffins',
    },
    '81vrzocp': {
      'tr': '216 Members',
      'en': '216 Members',
    },
    's3nl1897': {
      'tr': 'Health',
      'en': 'Health',
    },
    '5kqsx9io': {
      'tr': 'Dads for Gas-free Groceries',
      'en': 'Dads for Gas-free Groceries',
    },
    'mfsy8kby': {
      'tr': '352 Members',
      'en': '352 Members',
    },
    'ttf4y6gq': {
      'tr': 'Fitness',
      'en': 'Fitness',
    },
    '6c6gk1l4': {
      'tr': 'The Running Ragamuffins',
      'en': 'The Running Ragamuffins',
    },
    '63mzef3d': {
      'tr': '216 Members',
      'en': '216 Members',
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
    '90x12bg8': {
      'tr': '[Appointment Type]',
      'en': '[Appointment Type]',
    },
    'egaueuh7': {
      'tr': '[display_name]',
      'en': '[display_name]',
    },
    'ipv2r8w1': {
      'tr': '[date_time]',
      'en': '[date_time]',
    },
    'q5qabyt5': {
      'tr': 'Hello World',
      'en': 'Hello World',
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
    'u8lj7i7c': {
      'tr': 'Question 1/3',
      'en': 'Question 1/3',
    },
    'a9ashxwq': {
      'tr': 'How is your mood?',
      'en': 'How is your mood?',
    },
    'wrbn27f8': {
      'tr': 'On a scale of 1 - 3 how are you feeling today?',
      'en': 'On a scale of 1 - 3 how are you feeling today?',
    },
    'kp6v77iq': {
      'tr': 'Next Question',
      'en': 'Next Question',
    },
    '7rkaus0d': {
      'tr': 'Daily Quiz',
      'en': 'Daily Quiz',
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
    '8sie394b': {
      'tr': 'E-mail',
      'en': 'E-mail',
    },
    '4atgyycr': {
      'tr': 'Giriş Yap',
      'en': 'Sign In',
    },
    'k75y81ji': {
      'tr': 'Şifremi unuttum?',
      'en': 'Forgot Password?',
    },
    '7417yz0t': {
      'tr': 'Giriş yapmak için hesaplarınızı kullanın',
      'en': 'Or use a social account to login',
    },
    '03d42a5b': {
      'tr': 'Kayıt Ol',
      'en': 'Sign Up',
    },
    'k0hvjvvw': {
      'tr': 'E-mail',
      'en': 'E-mail',
    },
    'dk6cd156': {
      'tr': 'Telefon numarası',
      'en': 'Phone number',
    },
    'qssyomas': {
      'tr': 'Ad Soyad',
      'en': 'Full Name',
    },
    'j3lo4tob': {
      'tr': 'Doğum Tarihi (GG/AA/YYYY)',
      'en': 'Birthdate (DD/MM/YYYY)',
    },
    'i2ifjsod': {
      'tr': 'Hesap Oluştur',
      'en': 'Create Account',
    },
    '86kuk8ql': {
      'tr': 'Kayıt olmak için hesaplarınızı kullanın',
      'en': 'Or use a social account to sign-up',
    },
    'q7rz4jd3': {
      'tr': 'Home',
      'en': 'Home',
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
