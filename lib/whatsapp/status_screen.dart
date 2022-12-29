import 'package:flutter/material.dart';

import 'data.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.camera_alt,
            color: Colors.white,
          )),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03, vertical: height * 0.01),
                child: Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          radius: height * 0.04,
                          backgroundColor: Colors.grey,
                        ),
                        Positioned(
                          bottom: 4,
                          right: -4,
                          child: CircleAvatar(
                            radius: width * 0.03,
                            backgroundColor: Colors.teal,
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: width * 0.04,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "My status",
                            style: TextStyle(
                                fontSize: width * 0.05,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: height * 0.00200,
                          ),
                          Text(
                            "Tap to add status update",
                            style: TextStyle(
                              fontSize: width * 0.0480,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: Text(
                  "Viewed updates",
                  style: TextStyle(
                      fontSize: width * 0.0350,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: height * 0.6,
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
                                      height: double.infinity,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                data[index]["avatar"],
                                              ),
                                              fit: BoxFit.fill)),
                                    ),
                                  );
                                },
                              );
                            },
                            child: CircleAvatar(
                              radius: width * 0.07,
                              backgroundColor: Colors.grey,
                              backgroundImage:
                                  NetworkImage(data[index]["avatar"]),
                            ),
                          ),
                          title: Text(data[index]["first_name"]),
                          subtitle: Text(data[index]["last_name"]),
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
