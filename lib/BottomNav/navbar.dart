import 'package:flutter/material.dart';

bool visibling = true;
ValueNotifier<int> values = ValueNotifier(0);
const number = 0;

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: values,
      builder: (context, value, child) {
        return ClipRRect(
          child: Visibility(
            visible: visibling,
            child: BottomNavigationBar(
              backgroundColor:const Color.fromARGB(255,254,194,71),
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.black38,
              elevation: 0,
              onTap: (value) {
                values.value = value;
              },
              currentIndex: value,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.local_activity),
                  label: "Location",
                ),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "Settings"),
                     BottomNavigationBarItem(
                    icon: Icon(Icons.home_max), label: "ProductBuyPage"),
                     BottomNavigationBarItem(
                    icon: Icon(Icons.production_quantity_limits), label: "ProductZoomScreen"),
              ],
            ),
          ),
        );
      },
    );
  }
}
