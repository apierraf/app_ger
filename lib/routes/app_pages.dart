import 'package:app_ger/pages/dashboard/dashboard_binding.dart';
import 'package:app_ger/pages/dashboard/dashboard_page.dart';
import 'package:app_ger/routes/app_routes.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => const DashBoardPage(),
      binding: DashboardBinding(),
    ),
  ];
}
