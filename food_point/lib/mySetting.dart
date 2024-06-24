import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:food_point/MessengerPage.dart';
import 'package:food_point/notification.dart';

class SettingsPage extends StatelessWidget {
  // Define a list of menu items
  final List<String> menuItems = [
    "My Profile",
    "Favorites",
    "Notification",
     "Track My Donation",
    "Terms and Condition",
     "Contact us",
    "FAQ's",
    "Logout",
    // Assuming "EN" is for language selection
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset(
          "assets/images/logo3.png",
          width: 120,
          height: 150,
        ),
        actions: [
          IconButton(
            onPressed:(){},
             icon: Icon(Icons.notifications,color: Colors.green,)
             )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              height: 80,
              width: 220,
              alignment: Alignment.center,
              decoration: BoxDecoration(  
                color: Color.fromARGB(255, 170, 240, 171),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text('Your Orders are Completed ',style: TextStyle(fontSize: 18,),),
            ),
            SizedBox(height: 20.0,),
          
        Expanded(
          child:
        ListView.separated(
          itemCount: menuItems.length, 
          separatorBuilder: (context, index) => Divider(), 
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(
                menuItems[index],
                style: TextStyle(color: Colors.black),
              ),
              tileColor: Colors.white,
              onTap: () {
                
              },
              leading: getLeadingIcon(index), 
            );
          },
        ),
        )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: BottomNavyBar(
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: Icon(Icons.home,color: Colors.green,),
              title: Text(''),
            
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.explore,color: Colors.green,),
              title: Text(''),
              activeColor: Colors.green,
              inactiveColor: Colors.transparent,
            ),
                BottomNavyBarItem(
              icon: Icon(Icons.explore,color: Colors.green,),
              title: Text(''),
              activeColor: Colors.green,
              inactiveColor: Colors.transparent,
            ), 
            BottomNavyBarItem(
              icon: Icon(Icons.settings,color: Colors.green,),
              title: Text(''),
              activeColor: Colors.green,
              inactiveColor: Colors.transparent,
            ),
          ],
         selectedIndex: 0,
          onItemSelected: (index) {
          
            switch (index) {
              case 0:
               
                break;
              case 1:
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExplorePage()),
                );
                break;
              case 2:
              
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationsPage()),
                );
                break;
              case 3:
          
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
                break;
            }
          },
        ),
      ),


      
    );
    

    
  }
}
Icon getLeadingIcon(int index) {
    switch (index) {
      case 0:
        return Icon(Icons.person, color: Colors.green);
      case 1:
        return Icon(Icons.favorite, color: Colors.green);
      case 2:
        return Icon(Icons.notifications, color: Colors.green); // Example icon for About
      case 3:
        return Icon(Icons.track_changes_rounded, color: Colors.green); 
         case 4:
        return Icon(Icons.warning_rounded, color: Colors.green);
      case 5:
        return Icon(Icons.contact_mail, color: Colors.green); // Example icon for About
      case 6:
        return Icon(Icons.messenger, color: Colors.green);
         case 7:
        return Icon(Icons.logout, color: Colors.green);
      default:
        return Icon(Icons.arrow_right, color: Colors.green); // Default icon
    }
  }
