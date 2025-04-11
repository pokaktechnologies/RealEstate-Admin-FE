import 'package:flutter/material.dart';
import 'package:real_estate_admin_fe/src/core/themes/app_assets.dart';
import 'package:real_estate_admin_fe/src/core/themes/app_colors.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    // const Homepage(),
    // const DealsScreen(),
    // const MessageScreen(),
    // const SavedScreen(),
    // const UserProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_selectedIndex != 0) {
          setState(() {
            _selectedIndex = 0;
          });
          return false;
        }
        return true;
      },
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 7,
              child: Center(
                child: _widgetOptions.elementAt(_selectedIndex),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: BottomNavigationBar(
                  unselectedItemColor: Colors.grey,
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          (_selectedIndex == 0)
                              ? AppColors.tealBlue
                              : AppColors.grey,
                          BlendMode.srcIn,
                        ),
                        child: Image.asset(
                          AppAssets.dashboardIcon,
                          height: 30,
                        ),
                      ),
                      label: 'Dashboard',
                    ),
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          (_selectedIndex == 1)
                              ? AppColors.tealBlue
                              : AppColors.grey,
                          BlendMode.srcIn,
                        ),
                        child: Image.asset(
                          AppAssets.propertiesIcon,
                          height: 30,
                        ),
                      ),
                      label: 'Properties',
                    ),
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          (_selectedIndex == 2)
                              ? AppColors.tealBlue
                              : AppColors.grey,
                          BlendMode.srcIn,
                        ),
                        child: Image.asset(
                          AppAssets.messageIcon,
                          height: 30,
                        ),
                      ),
                      label: 'Messages',
                    ),
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          (_selectedIndex == 3)
                              ? AppColors.tealBlue
                              : AppColors.grey,
                          BlendMode.srcIn,
                        ),
                        child: Image.asset(
                          AppAssets.paymentIcon,
                          height: 30,
                        ),
                      ),
                      label: 'Payments',
                    ),
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          (_selectedIndex == 4)
                              ? AppColors.tealBlue
                              : AppColors.grey,
                          BlendMode.srcIn,
                        ),
                        child: Image.asset(
                          AppAssets.profileIcon,
                          height: 30,
                        ),
                      ),
                      label: 'Profile',
                    ),
                  ],
                  selectedLabelStyle: const TextStyle(
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold),
                  type: BottomNavigationBarType.fixed,
                  currentIndex: _selectedIndex,
                  selectedItemColor: AppColors.tealBlue,
                  iconSize: 30,
                  backgroundColor: AppColors.white,
                  onTap: (int index) {
                    if (index == 3) {
                      // Load ProfileController when profile tab is selected
                    }
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  elevation: 5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
