import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  CommonAppBar();
  final String appName = 'Taski';
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/images/Group 1.png'),
              const SizedBox(width: 8),
              Text(appName),
            ],
          ),
          const Row(
            children: [
              Text('Username'),
              SizedBox(width: 8),
              CircleAvatar(
                backgroundColor: Colors.green,
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
