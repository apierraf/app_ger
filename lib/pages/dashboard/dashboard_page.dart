import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:app_ger/pages/dashboard/dashboard_controller.dart';
import 'package:app_ger/utils/nav_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashBoardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [
                Center(
                  child: Text('cosa'),
                ),
                Center(
                  child: Text('cosa2'),
                ),
                Center(
                  child: Text('cosa3'),
                ),
                Center(
                  child: Text('cosa4'),
                ),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            elevation: 6,
            child: const FaIcon(
              FontAwesomeIcons.calculator,
              color: Colors.white,
            ),
          ),
          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            itemCount: iconList.length,
            activeIndex: controller.tabIndex,
            onTap: (index) => controller.changeTabIndex(index),
            backgroundColor: Colors.white,
            notchSmoothness: NotchSmoothness.defaultEdge,
            gapLocation: GapLocation.center,
            rightCornerRadius: 20,
            leftCornerRadius: 20,
            tabBuilder: (int index, bool isActive) {
              final color = isActive ? Colors.blueAccent.shade400 : Colors.grey;
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconList[index],
                    size: 26,
                    color: color,
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
