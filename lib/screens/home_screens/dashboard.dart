import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ucliq_seller_panel/constants/colors.dart';
import 'package:ucliq_seller_panel/constants/constants.dart';
import 'package:ucliq_seller_panel/screens/home_screens/home_screens.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final size = mediaSize(context);
    return Drawer(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(13, 11, 10, 100),
                  offset: Offset(0.0, 10.0),
                  blurRadius: 8.0),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: InkWell(
                  onTap: () {
                    print('tapped');
                  },
                  child: Row(
                    children: [
                      Container(
                        width: size.width / 4,
                        height: size.height / 6,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: kPrimaryColor, width: 5)),
                        child: Image.asset(
                          kImagePath + 'dp.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Business Name',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(color: kSecondaryColor)),
                          SizedBox(height: 5),
                          Text('Name',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: kSecondaryColor)),
                          SizedBox(height: 5),
                          Text('8586965421',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: kSecondaryColor)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                color: kSecondaryColor,
                height: 0,
                thickness: 1,
              ),
              SizedBox(height: 20),
              DashboardItems(
                img: 'order_logo.png',
                name: 'Order Management',
                width: 20,
                navigate: OrderManagement(),
              ),
              DashboardItems(
                img: 'product_logo.png',
                name: 'Product Management',
                width: 25,
                navigate: ProductManagement(),
              ),
              DashboardItems(
                img: 'finance_logo.png',
                name: 'Finance Management',
                width: 30,
                navigate: FinanceManagement(),
              ),
              DashboardItems(
                img: 'inventory_logo.png',
                name: 'Inventory Management',
                width: 30,
                navigate: InventoryManagement(),
              ),
              DashboardItems(
                img: 'business_logo.png',
                name: 'Business Analytics',
                width: 30,
                navigate: BusinessAnalytics(),
              ),
              SizedBox(height: 30),
              Divider(
                color: kSecondaryColor,
                height: 0,
                thickness: 1,
              ),
              SizedBox(height: 20),
              DashboardItems(
                img: 'settings_logo.png',
                name: 'Settings',
              ),
              DashboardItems(
                  img: 'tandc_logo.png', name: 'Terms And Conditions'),
              SizedBox(height: 10),
              Text('Sign Out',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: kSecondaryColor, letterSpacing: 1.5))
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardItems extends StatelessWidget {
  final String img;
  final String name;
  Widget? navigate;
  double? width;
  DashboardItems({
    this.navigate,
    this.width,
    required this.img,
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navigate!));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          children: [
            Container(
                width: 40,
                height: 40,
                child: Image.asset(kLogoPath + img, width: width)),
            SizedBox(width: 20),
            Text(name,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: kSecondaryColor, letterSpacing: 1.5))
          ],
        ),
      ),
    );
  }
}
