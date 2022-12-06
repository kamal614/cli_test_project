import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: controller.obx((state) {
          return ListView.builder(
            itemCount: controller.state!.length,
            itemBuilder: (context, index) {
              print(state![index]);
              return Column(
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(5), // if you need this
                      side: BorderSide(
                        color: Colors.grey.withOpacity(.2),
                        width: 1,
                      ),
                    ),
                    child: Container(
                      color: Colors.lightBlue.shade100,
                      width: 400,
                      height: 240,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(8.0, 13.0, 8.0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 50.0,
                                  width: 60.0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.network(
                                      'https://onlinejpgtools.com/images/examples-onlinejpgtools/coffee-resized.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 6.0, 0, 0),
                                      child: Text(
                                        'Cafe Coffee Day',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Alpha 1, Greater Noida',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: .2,
                            indent: 8,
                            endIndent: 8,
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'ITEMS',
                                    style: TextStyle(color: Colors.grey[700]),
                                  ),
                                  Text(
                                    '5 x Cold Coffee',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'ORDERED ON',
                                    style: TextStyle(color: Colors.grey[700]),
                                  ),
                                  Text(
                                    '28 Feb 2020 at 1:36 PM',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'TOTAL AMOUNT',
                                    style: TextStyle(color: Colors.grey[700]),
                                  ),
                                  Text(
                                    '\u20B9480.00',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: .2,
                            indent: 8,
                            endIndent: 8,
                          ),
                          Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Delivered',
                                    style: TextStyle(color: Colors.grey[700]),
                                  ),
                                  GestureDetector(
                                    onTap: null,
                                    child: Container(
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 0, 2.0),
                                            child: Icon(
                                              Icons.replay,
                                              size: 12,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            'Repeat Order',
                                            style: TextStyle(
                                                color: Colors.grey[700]),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        }));
  }
}
