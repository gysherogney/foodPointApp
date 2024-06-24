import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:food_point/MessengerPage.dart';
import 'package:food_point/mySetting.dart';
import 'package:food_point/notification.dart';

void main() {
  runApp(MyView());
}

class MyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
         leading: Image.asset(
          "assets/images/logo3.png"
         ),
      actions: [
        IconButton(
          onPressed:(){},
           icon: Icon(Icons.notifications,color: Colors.green,)
           )
      ],
        
        ),
     
      
      body: SingleChildScrollView(
        child:
      Column(
        children: [
          Container(
            alignment: Alignment.topLeft ,
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Featured Events ", 
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            
          ),
          SizedBox(height: 20.0,),
          
          buildEventListView( 
            imagePaths: [
              "assets/images/smooth1.jpeg",
              "assets/images/smooth3.jpeg",
                  "assets/images/smooth2.jpeg",
              "assets/images/smooth3.jpeg",
               "assets/images/food4.jpeg", 
              "assets/images/food1.jpeg",
               "assets/images/food2.jpeg", 
              "assets/images/food5.jpeg",
               "assets/images/food4.jpeg", 
              "assets/images/food1.jpeg",
               "assets/images/fExplorePage(ood2.jpeg", 
              "assets/images/food5.jpeg",
              
            ],
            text: "Balance Diet For Your health..Lets Drink", 
          ),
               SizedBox(height: 20.0,),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Trending Events ", 
              style: TextStyle(color: Colors.black, fontSize: 20,),
            ),
          ),
          
          buildEventListView( 
            imagePaths: [
              "assets/images/food4.jpeg", 
              "assets/images/food1.jpeg",
               "assets/images/food2.jpeg", 
              "assets/images/food5.jpeg",
               "assets/images/smooth1.jpeg",
              "assets/images/smooth3.jpeg",
                  "assets/images/smooth2.jpeg",
              "assets/images/smooth3.jpeg",
               "assets/images/smooth1.jpeg",
              "assets/images/smooth3.jpeg",
                  "assets/images/smooth2.jpeg",
              "assets/images/smooth3.jpeg", 
              
            ],
            text: "Balance Diet For Your health..Lets Eat",
          ),
        ],
      
      ),
      
      
    ),

     bottomNavigationBar: BottomNavyBar(
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.explore,color: Colors.green,),
            title: Text(''),
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
          ),
              BottomNavyBarItem(
            icon: Icon(Icons.explore,color: Colors.green,),
            title: Text(''),
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings,color: Colors.green,),
            title: Text(''),
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
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
    );
  }
    
  }
    
    
  

  // Reusable Widget for Event ListViews
  Widget buildEventListView({required List<String> imagePaths, required String text}) {
    return Container( // Wrap ListView in Container for sizing
      height: 200.0, // Set container height for image list
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: imagePaths.map((imagePath) => eventItem(imagePath, text)).toList(),
      ),
    );
  }

  // Reusable Widget for Event Items
  Widget eventItem(String imagePath, String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0), // Right padding only
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
            child: SizedBox( // Wrap image with SizedBox for sizing
              width: 150.0, // Set image width (adjust based on layout)
              height: 150.0, // Set image height (adjust based on layout)
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover, // Cover the SizedBox area
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              color: Colors.black.withOpacity(0.8), // Black with some transparency
              child: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

