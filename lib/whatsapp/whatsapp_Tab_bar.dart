import 'package:flutter/material.dart';
import 'package:ui_widgets/whatsapp/status_screen.dart';

import 'calls_screen.dart';
import 'chats_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.10),
                  child: Text("New group"),
                ),
                PopupMenuItem(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.10),
                  child: Text("New broadcast"),
                ),
                PopupMenuItem(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.10),
                  child: Text("Linked devies"),
                ),
                PopupMenuItem(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.10),
                  child: Text("Starred Message"),
                ),
                PopupMenuItem(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.10),
                  child: Text("Payments "),
                ),
                PopupMenuItem(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.10),
                  child: Text("Settings "),
                ),
              ];
            },
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(height * 0.070),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                    size: height * 0.03,
                  ),
                ),
              ),
              Expanded(
                child: TabBar(
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(color: Colors.white, width: 3)),
                  labelPadding: EdgeInsets.symmetric(vertical: height * 0.01),
                  controller: tabController,
                  tabs: [
                    Text("CHATS"),
                    Text("STATUS"),
                    Text("CALLS"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [ChatsScreen(), StatusScreen(), CallsScreen()],
      ),
    );
  }
}
