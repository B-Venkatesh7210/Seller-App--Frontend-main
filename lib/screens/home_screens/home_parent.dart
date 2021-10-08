import 'package:flutter/material.dart';

import 'package:ucliq_seller_panel/constants/constants.dart';
import 'package:ucliq_seller_panel/screens/home_screens/home_screens.dart';

class HomeParent extends StatefulWidget {
  const HomeParent({Key? key}) : super(key: key);

  @override
  _HomeParentState createState() => _HomeParentState();
}

class _HomeParentState extends State<HomeParent> {
  final GlobalKey<ScaffoldState> key = GlobalKey();
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size size = mediaSize(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: key,
      drawer: Dashboard(),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
              Color.fromRGBO(225, 77, 41, 1),
              Color.fromRGBO(254, 147, 1, 1)
            ])
            // color: Colors.white,
            ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height / 6.5,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius:  BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  border: Border.all(color: Colors.black, width: 2),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(13, 11, 10, 100),
                        offset: Offset(0.0, 10.0),
                        blurRadius: 8.0)
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            key.currentState!.openDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            color: kSecondaryColor,
                            size: 38,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.photo,
                            color: kSecondaryColor,
                            size: 34,
                          ))
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: TextField(
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      keyboardType: TextInputType.text,
                      controller: search,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 12),
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          color: Colors.grey[600],
                          size: 30,
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HomeWidget(
                              size: size,
                              name: 'Order Management',
                              img: 'order_logo.png',
                              navigate: OrderManagement(),
                            ),
                            HomeWidget(
                              size: size,
                              name: 'Product Management',
                              img: 'product_logo.png',
                              navigate: ProductManagement(),
                            )
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HomeWidget(
                              size: size,
                              name: 'Finance Management',
                              img: 'finance_logo.png',
                              navigate: OrderManagement(),
                            ),
                            HomeWidget(
                              size: size,
                              name: 'Inventory Management',
                              img: 'inventory_logo.png',
                              navigate: ProductManagement(),
                            )
                          ],
                        ),
                        SizedBox(height: 30),
                        HomeWidget(
                          size: size,
                          name: 'Business Analytics',
                          img: 'business_logo.png',
                          navigate: ProductManagement(),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class HomeWidget extends StatelessWidget {
  final String name;
  final Widget navigate;
  final String img;

  const HomeWidget(
      {Key? key,
      required this.size,
      required this.name,
      required this.img,
      required this.navigate})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navigate));
      },
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset(kLogoPath + img, width: 0),
            ),
            width: size.height / 6,
            height: size.width / 3.5,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black, width: 2),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(13, 11, 10, 100),
                      offset: Offset(0.0, 10.0),
                      blurRadius: 8.0)
                ]),
          ),
          SizedBox(height: 20),
          Text(name,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.white, fontSize: 16))
        ],
      ),
    );
  }
}
