import 'package:flutter/material.dart';

import '../widgets/description_button.dart';

class VideoAndAudioPage extends StatefulWidget {
   VideoAndAudioPage({super.key});

  @override
  State<VideoAndAudioPage> createState() => _VideoAndAudioPageState();
  bool isFavourite = true;
}

class _VideoAndAudioPageState extends State<VideoAndAudioPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    List<Widget> tabBarWidget = [
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          "Video",
          style: TextStyle(color: Colors.black),
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          "Audio",
          style: TextStyle(color: Colors.black),
        ),
      ),
    ];
    TabController tabController = TabController(length: 2, vsync: this);
    bool dimensions = true;
    return Scaffold(
      appBar: AppBar(
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.arrow_back),
            const Text("PHY 101"),
            InkWell(
              onTap: (){
                setState(() {
                  widget.isFavourite = !widget.isFavourite;
                });
              },
              child: widget.isFavourite? const Icon(
                Icons.favorite,
                color: Colors.red,
              ) : const Icon(
                Icons.favorite_border,
                color: Colors.red,
              )
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TabBar(
              indicatorColor: Colors.red,
              controller: tabController,
              tabs: tabBarWidget,
            ),
            SizedBox(
              height: 600,
              child: TabBarView(controller: tabController, children: [
                Center(
                  child: SizedBox(
                    height: 550,
                    child: ListView.builder(
                      itemCount: name.length,
                      itemBuilder: (BuildContext context, int index) => Column(
                        children: [
                          dimensions == false ?  DescriptionButton(
                            name: name[index],
                            time: "10:00",
                          ) : Text("hello"),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Center(
                  child: Text("No Audio"),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
  List<String> name =  [
    "Dimensions",
    "Dimensions",
    "Dimensions",
    "Dimensions",
    "Dimensions",
    "Dimensions",
  ];
}
