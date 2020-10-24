import 'package:flutter/material.dart';
import 'package:Argo/utils/constants.dart';
import 'package:Argo/views/coversations/ConversationsView.dart';
import 'package:Argo/views/agenda/AgendaView.dart';

class BottomNavigationBarArgo extends StatelessWidget  {
  final BuildContext context;
  final int selectedIndex;


  const BottomNavigationBarArgo({
      this.selectedIndex,
      this.context
  }) : super();

 void _onItemTapped(int index) {

      switch(index){
          case 0: {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ;// ConversationsView();
                    },
                  ),
              );
              break;
          }
          case 1: {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) {
                        return AgendaView();
                      },
                  ),
              );
              break;
          }
      }
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
            currentIndex: selectedIndex,
            selectedItemColor: GreenColorArgo,
            unselectedItemColor: PrimaryColorArgo,
            onTap: _onItemTapped,
          )
      ;
  }

}