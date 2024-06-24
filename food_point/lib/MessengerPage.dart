import 'package:flutter/material.dart';
import 'package:food_point/mySetting.dart';
import 'package:food_point/notification.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
void main(){
  runApp(ExplorePage());
}
class ExplorePage extends StatelessWidget{
  List<String> imagePaths = [
  "assets/images/smooth2.jpeg", // Replace with your image paths
  "assets/images/smooth3.jpeg",
  "assets/images/food4.jpeg",
   "assets/images/smooth1.jpeg",
    "assets/images/food6.jpeg",
  // Add more image paths here
];

List<String> textList = [
  "Banana smooth shake for your health ",
  "Strawberry smooth shae  for your health",
  "Cheese Pizza with amaizing taste",
  "Text for image 2",
  "Text for image 3",
  // Add more text entries here (should match imagePaths length)
];
        Widget build(BuildContext context){
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: Image.asset(
                'assets/images/logo3.png'
              ),
              actions: [
                IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.notifications,color: Colors.green,)
                  )

              ],
            ),
            body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height*0.5, // Adjust height as needed
                child: ListView.separated(
                  itemCount: imagePaths.length,
                  separatorBuilder: (context, index) => Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 800,
                      height: 80,
                      color: Colors.green.withOpacity(0.8),
                      padding: EdgeInsets.all(0.5),
                      child: Row(
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              imagePaths[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: Text(
                              textList[index],
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
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
          // Navigate to corresponding page based on index
          switch (index) {
            case 0:
             
              break;
            case 1:
              // Navigate to Explore Page (implement your Explore page)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExplorePage()),
              );
              break;
            case 2:
              // Navigate to Notifications Page (implement your Notifications page)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationsPage()),
              );
              break;
            case 3:
              // Navigate to Settings Page (implement your Settings page)
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