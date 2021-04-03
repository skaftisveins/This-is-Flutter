import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class MenuController extends GetxController {
  RxInt _selectedIndex = 0.obs;

  int get selectedIndex => _selectedIndex.value;
  List<String> get menuItems => ["Home", "About", "Projects", "Resume"];

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}
