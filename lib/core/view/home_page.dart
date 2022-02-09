import '../library.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CustomProvider>(
      create: (context) =>
          CustomProvider(myList: AppStrings.itemList.keys.toList()),
      child: Scaffold(
          appBar: AppBar(title: Text("DropDown App v 1.0")),
          body: ListView(
            children: [
              const SizedBox(height: 100.0),
              Row(
                children: [
                  Expanded(
                    child: Consumer<CustomProvider>(
                      builder: (context, notifier, child) =>
                          CustomDropDownWidget(
                        title: "Seçiminiz : ",
                        iconPressed: () {
                          notifier.refreshList();
                        },
                        initialValue: notifier.initialValue,
                        list: notifier.myList,
                        onPressed: (String? value) {
                          notifier.setList(value!);
                          print(value);
                        },
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
