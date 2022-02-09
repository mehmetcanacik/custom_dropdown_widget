import '../library.dart';

class CustomDropDownWidget extends StatelessWidget {
  const CustomDropDownWidget(
      {Key? key,
      required this.initialValue,
      required this.list,
      required this.onPressed,
      this.iconPressed,
      this.title = "Bir seçim yapınız: "})
      : super(key: key);

  final String initialValue;
  final List<String> list;
  final ValueChanged<String> onPressed;
  final VoidCallback? iconPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        Expanded(
          child: DropdownButton<String>(
            underline: SizedBox.shrink(),
            iconSize: 36.0,
            focusColor: Colors.yellow,
            value: initialValue,
            items: list
                .asMap()
                .map(
                  (key, value) => MapEntry(
                      key, DropdownMenuItem(child: Text(value), value: value)),
                )
                .values
                .toList(),
            onChanged: (value) {
              onPressed(value!);
            },
          ),
        ),
        IconButton(onPressed: iconPressed, icon: Icon(Icons.refresh))
      ],
    );
  }
}
