import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.red,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                // margin: EdgeInsets.all(20),
                width: double.infinity, //Container chiếm 100%
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(30)), // tạo border radius bottom cho container
                ),
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Text(
                      'Tìm Kiếm',
                      style: TextStyle(fontSize: 20, color: Colors.black87),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Cảm hứng',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        //Tạo 1 ô input
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            //loại bỏ đường gạnh chân của input
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            hintText: "Nhập những gì bạn muốn tìm?",
                            hintStyle:
                                TextStyle(fontSize: 15, color: Colors.grey)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              // căn chỉnh padding theo chiều ngang cách 20px
              child: Column(
                children: [
                  Text(
                    'Sale Today',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        promoCard('assets/images/1.jpg'),
                        promoCard('assets/images/2.jpg'),
                        promoCard('assets/images/3.jpg'),
                        promoCard('assets/images/4.jpg'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 200,
                      width: double.infinity,
                      child: ListView(
                        // scrollDirection: Axis.horizontal,
                        children: [
                          botomCard('assets/images/1.jpg','ABC','Vải Khô'),
                          botomCard('assets/images/2.jpg','ABC','Vải Mền'),
                          botomCard('assets/images/3.jpg','ABC','Cotton 4 chiều'),
                          botomCard('assets/images/4.jpg','ABC','Vải Âu'),
                        ],
                      ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget promoCard(String image) {
    return AspectRatio(
      aspectRatio: 2.9 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                0.1,
                0.9
              ], colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.1)
              ])),
        ),
      ),
    );
  }

  Widget botomCard(String image,String name,String des) {
    return AspectRatio(
        aspectRatio: 1.89,
        child: Container(
            margin: EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill),
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      stops: [0.1, 0.9],
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.1)
                      ])
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(name, style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                      SizedBox(height: 8,),
                      Text(des, style: TextStyle(fontSize: 14, color: Colors.white70),)
                    ],
                  ),
                ),
              ),
            ),
        ),
    );
  }
}
