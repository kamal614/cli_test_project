import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () {
            controller.onInit();
          },
        ),
        appBar: AppBar(
          title: const Text('HomeView GetX'),
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
                      height: MediaQuery.of(context).size.height * .12,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 13.0, 8.0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 50.0,
                                  width: 60.0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.network(
                                      state[index]['picture']['thumbnail'],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 6.0, 0, 0),
                                      child: Text(
                                        state[index]['name']['title'] +
                                            " " +
                                            state[index]['name']['first'] +
                                            " " +
                                            state[index]['name']['last'],
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      state[index]['email'].toString(),
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.home,
                                color: Colors.blue,
                              ),
                              Text(state[index]['location']['city'] +
                                  " " +
                                  state[index]['location']['state'] +
                                  " " +
                                  state[index]['location']['country'])
                            ],
                          )
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
