import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  final String title;
  final String image;
  final String tag;
  const CategoryPage({super.key, required this.title, required this.image, required this.tag});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: widget.tag,
              child: Material(
                child: Container(
                  height: 300,
                  // margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.image),
                        fit: BoxFit.cover
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 15, bottom: 15),
                    decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(0.8),
                              Colors.black.withOpacity(0.2),
                        ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 40,),
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
                                      Icons.search,
                                      color: Colors.white,
                                    )),
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
                        SizedBox(height: 150,),
                        Text(widget.title,
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sản Phẩm Mới', style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Text('Xem Thêm',style: TextStyle(fontSize: 15, color: Colors.grey),),
                          SizedBox(width: 5,),
                          Icon(Icons.arrow_forward_ios,size: 13, color: Colors.grey,)
                        ],
                      ),
                    ],
                  ),
                  maketProduct(image: 'assets/images/10.jpg',title: 'Sản Phẩm 1', price: '350.000đ'),

                  maketProduct(image: 'assets/images/9.jpg',title: 'Sản Phẩm 2', price: '350.000đ'),

                  maketProduct(image: 'assets/images/8.jpg',title: 'Sản Phẩm 3', price: '350.000đ'),

                  maketProduct(image: 'assets/images/6.jpg',title: 'Sản Phẩm 4', price: '350.000đ'),

                  maketProduct(image: 'assets/images/5.jpg',title: 'Sản Phẩm 5', price: '350.000đ'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget maketProduct({image, title, price}) {
    return Container(
      height: 200,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.1),
              ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.favorite_border, color: Colors.red,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.w500),),
                    SizedBox(height: 10,),
                    Text(price, style: TextStyle(fontSize: 30,color: Colors.white, fontWeight: FontWeight.w500),)
                  ],
                ),
                Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                  ),
                  child: Center(
                    child: Icon(Icons.add_shopping_cart,size: 18,),
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
