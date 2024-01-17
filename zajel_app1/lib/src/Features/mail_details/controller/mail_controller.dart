import 'package:get/get.dart';

class MailController extends GetxController {
  final RxList<String> selectedItems = <String>[].obs;
  RxBool isItemSelected = RxBool(false);


void toggleSelection(String item) {
  if (selectedItems.contains(item)) {
    selectedItems.remove(item);
    isItemSelected.value = false;
    update();
    print("Item is not selected: $isItemSelected");
  } else {
    selectedItems.add(item);
    isItemSelected.value = true;
    update();
    print("Item is selected: $isItemSelected");
  }
}
}
