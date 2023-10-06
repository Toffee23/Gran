import 'package:flutter/material.dart';
import 'package:my_app/components/hotelcard.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelApp(),
  ));
}

class HotelApp extends StatefulWidget {
  const HotelApp({super.key});

  @override
  State<HotelApp> createState() => _HotelAppState();
}

class _HotelAppState extends State<HotelApp> {
  // here i'm going to add a list of image url that I collected from the internet
  // you can use the image that you want, just copy and paste their urls here inside the list
  List<String> urls= [

  ];
  //sometime we can face some http request error if the owner of the picture deleted it or the url is not available
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF)
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFF6F7FF),
        title: Row(
          children: [
            IconButton(
              onPressed: (){},
               icon: Icon(
                Icons.menu,
                color: Colors.black,
               ),
               ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //let's start by adding the text
           Text(
            'Gran Melia Hotel',
           style: TextStyle(
            color: Colors.black,
           fontSize: 26.0,
           fontWeight: FontWeight.w600,
           ),
           ),
           Text(
            'Our Rooms',
           style: TextStyle(
            color: Colors.black,
           fontSize: 20.0,
           fontWeight: FontWeight.w300,
           ),
           ),
           SizedBox(
            height: 20.0,
           ), 
            // Now let's add some elevation to our text Field
            // to do that, we need to wrap it in a Material widget
           Material(
            elevation: 10.0,
            borderRadius: BorderRadius.circular(30.0),
            shadowColor: Color(0x55434343),
             child: TextField(
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: 'Search for your Room catergory',
                prefixIcon: Icon(
                  Icons.search,
                color: Colors.black54,
                ),
                border: InputBorder.none,
              ),
             ),
           ),
           SizedBox(height: 3.0),
           DefaultTabController(
            length: 3,
            child: Expanded(
              child: Column(children: [
                TabBar(
                  indicatorColor: Color(0xFFFE8C68),
                  unselectedLabelColor: Color(0xFF555555),
                  labelColor: Color(0xFFFE8C68),
                  labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                  tabs: [
                    Tab(
                      text: 'Rooms',
                    ),
                     Tab(
                      text: 'Apartments',
                     ),
                      Tab(
                      text: 'Conference Hall',
                      ),
                  ],
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    height: 300.0,
                    child: TabBarView(
                      children: [
                        // now let us create our first tab page
                        Container(
                          child: 
                          ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              // now let's add and test our first card
                              hotelCard(
                                urls[0], 'Luxury Hotel', 'Caroline', 3),
                                hotelCard(
                                urls[1], 'Plaza', 'Italy', 4),
                                hotelCard(
                                urls[2], 'Safari Hotel', 'Africa', 2),
                            ],
                            ),
                        ),
                      ],),
                  ),
                   Container(
                          child: 
                          ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              // here you can add whatever you want 
                              hotelCard(
                                urls[1], 'Plaza', 'Italy', 4),
                                hotelCard(
                                urls[2], 'Safari Hotel', 'Africa', 2),
                            ],
                            ),
                        ),
                         Container(
                          child: 
                          ListView(
                            scrollDirection: Axis.horizontal,
                            children: [],
                            ),
                        ),
                  ],
                  ),
                  ))
          ],
          ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFF8787),
        selectedItemColor: Color(0xFFE8C68),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          title: Text('Home'),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark),
          title: Text('BookMark'),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),
          title: Text('Notification'),
          ),
        ]),
    );
  }
}
