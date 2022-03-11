import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _listItem = [
    "assets/images/ic_image1.jpeg",
    "assets/images/ic_image2.jpeg",
    "assets/images/ic_image3.jpeg",
    "assets/images/ic_image4.jpeg",
    "assets/images/ic_image5.jpeg",
    "assets/images/ic_image1.jpeg",
    "assets/images/ic_image2.jpeg",
    "assets/images/ic_image3.jpeg",
    "assets/images/ic_image4.jpeg",
    "assets/images/ic_image5.jpeg",
    "assets/images/ic_image1.jpeg",
    "assets/images/ic_image2.jpeg",
    "assets/images/ic_image3.jpeg",
    "assets/images/ic_image4.jpeg",
    "assets/images/ic_image5.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.menu),
        title: Text("Apple Products"),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 36,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade800,
              ),
              child: Center(
                child: Text("7"),
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.black,
        child: Column(
          children: [
            //#header
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/images/ic_image2.jpeg"),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.3),
                      Colors.black.withOpacity(.05),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Lifestyle sale", style: TextStyle(color: Colors.white, fontSize: 32),),
                    SizedBox(height: 30,),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                      ),
                      child: Center(
                        child: Text("Shop now", style: TextStyle(color: Colors.grey.shade900),),
                      ),
                    ),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),

            //#body
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: _listItem.map((item) => _cellOfItem(item)).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _cellOfItem(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover
          )
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.star_border, color: Colors.yellowAccent, size: 35,),
          ],
        ),
      ),
    );
  }
}
