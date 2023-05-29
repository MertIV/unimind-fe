import 'package:flutter/material.dart';
import '/pages/onboarding/onboarding_widget.dart';
import '/theme/main_theme.dart';
import '/common/utils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/index.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({Key? key, this.initialPage, this.page}) : super(key: key);

  final String? initialPage;
  final Widget? page;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'HomePage';
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
      'HomePage': const OnboardingWidget(),
      'meetings': const OnboardingWidget(),
      'Chat': const OnboardingWidget(),
      'Profile': const OnboardingWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);

    return Scaffold(
      body: _currentPage ?? tabs[_currentPageName],
      bottomNavigationBar: Visibility(
        visible: responsiveVisibility(
          context: context,
          desktop: false,
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (i) => setState(() {
            _currentPage = null;
            _currentPageName = tabs.keys.toList()[i];
          }),
          backgroundColor: Colors.white,
          selectedItemColor: UnimindMainTheme.of(context).primary,
          unselectedItemColor: const Color(0x8A000000),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.home,
                size: 22.0,
              ),
              label: 'Ana Sayfa',
              tooltip: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
                size: 22.0,
              ),
              label: 'Takvim',
              tooltip: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble,
                size: 22.0,
              ),
              label: 'Chat',
              tooltip: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 28.0,
              ),
              label: 'Profil',
              tooltip: '',
            )
          ],
        ),
      ),
    );
  }
}
