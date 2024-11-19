import 'package:fit_app_dashboard/const/constant.dart';
import 'package:fit_app_dashboard/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: ListView.builder(
        itemCount: data.menu.length,
        itemBuilder: (context, index) =>
            buildMenuEntry(data, index, selectedIndex, (newIndex) {
          setState(() {
            selectedIndex = newIndex;
          });
        }),
      ),
    );
  }
}

Widget buildMenuEntry(
  SideMenuData data,
  int index,
  int selectedIndex,
  ValueChanged<int> onItemSelected,
) {
  final isSelected = selectedIndex == index;
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(
        Radius.circular(6),
      ),
      color: isSelected ? selectionColor : Colors.transparent,
    ),
    child: InkWell(
      onTap: () => onItemSelected(index),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
            child: Icon(
              data.menu[index].icon,
              color: isSelected ? Colors.black : Colors.grey,
            ),
          ),
          Text(
            data.menu[index].title,
            style: TextStyle(
              fontSize: 14,
              color: isSelected ? Colors.black : Colors.grey,
              fontWeight: isSelected ? FontWeight.w700 : FontWeight.normal,
            ),
          ),
        ],
      ),
    ),
  );
}
