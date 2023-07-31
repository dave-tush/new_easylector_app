import 'package:flutter/material.dart';

import '../widgets/description_button.dart';

class VideoAndAudioPage extends StatefulWidget {
  VideoAndAudioPage({super.key});

  @override
  State<VideoAndAudioPage> createState() => _VideoAndAudioPageState();
  bool isFavourite = true;
  List <bool> dimensions = List.filled(6, true);
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
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 113,
        title: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.arrow_back),
                const Text("PHY 101"),
                InkWell(
                    onTap: () {
                      setState(() {
                        widget.isFavourite = !widget.isFavourite;
                      });
                    },
                    child: widget.isFavourite
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          ))
              ],
            ),
            SizedBox(height: 28,),
            TabBar(
              indicatorColor: Colors.red,
              controller: tabController,
              tabs: tabBarWidget,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20,),
                child: SizedBox(
                  height: 700,
                  child: TabBarView(controller: tabController, children: [
                    Column(
                      children: [
                        Image.asset("assets/images/book-g3ee54beb5_1920 1.png"),
                        const SizedBox(height: 20,),
                        Center(
                          child: SizedBox(
                            height: 400,
                            child: ListView.builder(
                              itemCount: name.length,
                              itemBuilder: (BuildContext context, int index) =>
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        widget.dimensions[index] = !widget.dimensions[index];
                                      });
                                    },
                                    child: Column(
                                children: [
                                    widget.dimensions[index]
                                        ? DescriptionButton(
                                            name: name[index],
                                            time: "10:00",
                                          )
                                        : AltDescriptionButton(
                                            name: name[index],
                                            time: '10:00',
                                            num: numb[index],
                                          ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                ],

                              ),
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Center(
                      child: Text("No Audio"),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<int> numb = [01, 02, 03, 04, 05, 06];
  List<String> name = [
    "Dimensions",
    "Vectors",
    "Motions",
    "Waves",
    "Heat",
    "Friction",
  ];
}
