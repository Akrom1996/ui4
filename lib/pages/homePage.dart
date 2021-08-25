import 'package:flutter/material.dart';
import 'package:ui4/pages/CustomCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = ["All", "Red", "Green", "Blue", "Black", "Yellow"];
  List<String> images = [
    "assets/images/img1.jpg",
    "assets/images/img2.jpg",
    "assets/images/img3.jpg",
    "assets/images/img4.jpg",
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Cars",
          style: TextStyle(color: Colors.red, fontSize: 22),
        ),
        elevation: 0,
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.red,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 30,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      child: Container(
                        // height: 15,
                        // width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: index == _selectedIndex
                                ? Colors.red[400]
                                : Colors.grey[100]),
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text(
                            "${categories[index]}",
                            style: TextStyle(
                                fontSize: index == _selectedIndex ? 16 : 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return customCard(image: images[index]);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
