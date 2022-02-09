import '../library.dart';

class CustomProvider extends ChangeNotifier {
  CustomProvider({required this.myList}) {
    initialValue = myList.first;
  }

  List<String> myList;
  late String initialValue;

  bool listState = true;

  void setList(String value) {
    if (listState) {
      myList = getNewList(value);
      initialValue = myList.first;
      listState = false;
    } else {
      initialValue = value;
    }
    notifyListeners();
  }

  void refreshList() {
    myList = AppStrings.itemList.keys.toList();
    initialValue = myList.first;
    listState = true;
    notifyListeners();
  }

  List<String> getNewList(String value) {
    return AppStrings.itemList[value]!;
  }
}
