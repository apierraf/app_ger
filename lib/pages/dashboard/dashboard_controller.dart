import 'package:get/get_state_manager/get_state_manager.dart';

class DashBoardController extends GetxController {
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
