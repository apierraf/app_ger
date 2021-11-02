import 'package:app_ger/pages/dashboard/dashboard_controller.dart';
import 'package:get/instance_manager.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardController>(() => DashBoardController());
    // Get.lazyPut<HomeController>(() => HomeController());
    // Get.lazyPut<AccountController>(() => AccountController());
  }
}
