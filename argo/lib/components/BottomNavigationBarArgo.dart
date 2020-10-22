import 'package:flutter/material.dart';
import 'package:Argo/utils/constants.dart';

class BottomNavigationBarArgo extends StatelessWidget  {
 
  int _selectedIndex = 0;

 void _onItemTapped(int index) {
      _selectedIndex = index;
  }

  @override
  Widget build(BuildContext context) {

    return 
          BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.camera),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: '',
              ),
               BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: '',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: GreenColorArgo,
            unselectedItemColor: PrimaryColorArgo,
            onTap: _onItemTapped,
          )
      ;
  }

}