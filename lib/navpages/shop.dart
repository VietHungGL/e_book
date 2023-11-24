import 'package:e_book/pages/categorypage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/4.jpg'), fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomCenter, colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.1),
                ])),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.shopping_cart,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Sản Phẩm Mới',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Chất lượng luôn luôn đặt vị trí hàng đầu!',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward_ios,
                                      color: Colors.white, size: 13),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sản Phẩm',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('All')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        itemProduct(
                            image: 'assets/images/1.jpg', title: 'Áo thun'),
                        itemProduct(
                            image: 'assets/images/2.jpg', title: 'Hở eo'),
                        itemProduct(
                            image: 'assets/images/3.jpg',
                            title: 'Sơ Mi hồng phấn'),
                        itemProduct(
                            image: 'assets/images/4.jpg', title: 'Hở eo'),
                        itemProduct(
                            image: 'assets/images/5.jpg',
                            title: 'Hoodie'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sản Phẩm',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('All')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        itemProduct2(
                            image: 'assets/images/5.jpg', title: 'Hoodie', tag: 'Hoodie'),
                        itemProduct2(
                            image: 'assets/images/6.jpg', title: 'Kem Sữa', tag: 'KemSua'),
                        itemProduct2(
                            image: 'assets/images/8.jpg',
                            title: 'Hoodie Đen Trắng', tag: 'Hoodie Đen Trắng'),
                        itemProduct2(
                            image: 'assets/images/9.jpg', title: 'Sơ Mi hồng', tag: 'Sơ Mi hồng'),
                        itemProduct2(
                            image: 'assets/images/10.jpg',
                            title: 'Sơ mi đen xanh', tag: 'Sơ mi đen xanh'),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget itemProduct({image, title}) {
    return AspectRatio(
      aspectRatio: 2 / 2.2,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image)),
        ),
        child: Container(
          padding: EdgeInsets.only(left: 15, bottom: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.2),
              ])),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              )),
        ),
      ),
    );
  }

  Widget itemProduct2({image, title, tag}) {
    return AspectRatio(
      aspectRatio: 3 / 2.2,
      child: Hero(
        tag: tag,
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoryPage(title: title, image: image, tag: tag,)));
          },
          child: Material(
            child: Container(
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage(image)),
              ),
              child: Container(
                padding: EdgeInsets.only(left: 15, bottom: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.2),
                    ])),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
