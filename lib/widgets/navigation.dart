import 'package:flutter/material.dart';
import 'package:todom/screens/add.dart';
import 'package:todom/screens/complated.dart';
import 'package:todom/screens/home_screen.dart';

class Navi extends StatefulWidget {
  const Navi({super.key});

  @override
  State<Navi> createState() => _NaviState();
}

class _NaviState extends State<Navi> {
  var currentPageIndex = 0;
  late List<Widget> pages;
  @override
  void initState() {
    super.initState();
    pages = [
      HomeScreen(),
      AddTodo(),
      ComplatedTodos(),
    ];
  }
  TextEditingController todonameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        selectedLabelStyle: const TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/todo.png',
              ),
              activeIcon: Image.asset(
                'assets/images/todoblue.png',
              ),
              label: 'Todo'),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                activeIcon: Icon(Icons.add, color: Colors.blue,),
                label: 'Add',
              ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.check_box_outlined),
              activeIcon: Icon(
                Icons.check_box_outlined,
                color: Colors.blue,
              ),
              label: 'Done')
        ],
        currentIndex: currentPageIndex,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
    );
  }
}
