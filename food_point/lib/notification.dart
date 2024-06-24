import 'package:flutter/material.dart';
import 'package:food_point/MessengerPage.dart';
import 'package:food_point/mySetting.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset(
          "assets/images/logo3.png",
        ),
        actions: [
          IconButton(
            onPressed: (){},
             icon: Icon(Icons.notifications,color:Colors.green,),
             )
        ],
      ),
       body: Padding(
         padding: const EdgeInsets.only(top: 8.0),
         child: SingleChildScrollView(
             child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20.0)
                        
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.purple,
                            child: Text('O',style: TextStyle(fontSize: 8,color: Colors.white),),
                            
                          ),
                          SizedBox(width: 10.0,),
                           Text(
                              "org",
                              style: TextStyle(color: Colors.black),
                            ),

                        ],
                      ),
                      
                          
                      
                     
                    ),
                    SizedBox(width: 10.0,),
                    Container(
                        height: 50,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 16,
                              child: Text('c',style: TextStyle(color: Colors.white,fontSize: 8),
                              ),
                            ),
                            SizedBox(width: 10.0,),
                            Text(
                              "charity",
                              style: TextStyle(color: Colors.black),
                            ),
                            
                          ],
                        ),
                        
                    ),
                     
                   
                    

                    
                  ],
                ),
                     SizedBox(height: 20.0,),
                    Container(
                      width: 450,
                      height: 550,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Column(
                          children: [
                            Row(
                            
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.purple,
                                    child: Text('C',style: TextStyle(fontSize: 12),),
                                  ),
                                  
                                ),
                                SizedBox(width: 5.0,),
                                Text('Charity',style: TextStyle(fontSize: 12),
                                ),

                              ],
                              
                            ),
                            SizedBox(
                              height: 4.0  ,
                              
                            ),
                           Container(
                            height: 180,
                            width: 290,
                            child: Image.asset(
                              'assets/images/smooth3.jpeg'
                            ),
                           ),
                           Container(
                            height: 40.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "hello",style: TextStyle(fontSize: 12,color: Colors.black),
                                ),
                                 SizedBox(width: 5.0),
                Text(
                  '6 months ago',
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
                              ],
                            ),
                            
                           ),
                           Row(
                            children: [
                                  Icon(Icons.thumb_up_alt_outlined,size: 16.0,
                  color: Colors.grey,),
                  Text(
                  '5',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(width: 10.0),
                Icon(
                  Icons.comment_outlined, // Comment icon
                  size: 16.0,
                  color: Colors.grey,
                ),
                Text(
                  '9',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                            ],
                           ),
                           SizedBox(height: 15.0,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                       height: 20,
                                  width: 20,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.purple,
                                    child: Text('C',style: TextStyle(fontSize: 12),),
                                  ),
                                  

                                  
                                  
                                ),
                                 SizedBox(width: 5.0,),
                                Text('Charity',style: TextStyle(fontSize: 12),
                                ),
                                  
                                    
                                  ],
                                ),
                                 SizedBox(
                              height: 15.0  ,
                              
                            ),
                            Container(
                                height: 130,
                            width: 160,
                            child: Image.asset(
                              'assets/images/smooth3.jpeg'
                            ), 
                            ),
                            Container(
                               height: 40.0,
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                    Text(
                                  "hello",style: TextStyle(fontSize: 12,color: Colors.black),
                                ),
                                 SizedBox(width: 5.0),
                Text(
                  '6 months ago',
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
                                ],
                               ),
                            ),
                              SizedBox(height: 15.0,),
                            Row(
                                 children: [
                                  Icon(Icons.thumb_up_alt_outlined,size: 16.0,
                  color: Colors.grey,),
                  Text(
                  '5',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(width: 10.0),
                Icon(
                  Icons.comment_outlined, // Comment icon
                  size: 16.0,
                  color: Colors.grey,
                ),
                 Text(
                  '9',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                                 ],
                            )
                              ],
                            ),
                          )
                          ],
                          
                        ),
                        
                        
                        
                        
                        
       ),

       
       
                    ),

                   
              ],
             ),
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
