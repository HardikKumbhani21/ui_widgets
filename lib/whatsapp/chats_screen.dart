import 'package:flutter/material.dart';

import 'data.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: CircleAvatar(
          radius: height * 0.05,
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: Container(
                              height: height * 0.4,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        data[index]["avatar"],
                                      ),
                                      fit: BoxFit.fill)),
                              child: Column(
                                children: [
                                  Container(
                                    height: height * 0.05,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.black54,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: width * 0.03),
                                          child: Text(
                                            data[index]["first_name"],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: width * 0.05),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                      height: height * 0.05,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width * 0.04),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(
                                              Icons.message,
                                              color: Colors.teal,
                                              size: width * 0.04,
                                            ),
                                            Icon(
                                              Icons.call,
                                              color: Colors.teal,
                                              size: width * 0.04,
                                            ),
                                            Icon(
                                              Icons.videocam,
                                              color: Colors.teal,
                                              size: width * 0.04,
                                            ),
                                            Icon(
                                              Icons.info_outline,
                                              color: Colors.teal,
                                              size: width * 0.04,
                                            ),
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: CircleAvatar(
                      radius: width * 0.07,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(data[index]["avatar"]),
                    ),
                  ),
                  title: Text(data[index]["first_name"]),
                  subtitle: Text(data[index]["last_name"]),
                  trailing: Text(data[index]["last_name"]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
