import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  Text("Progress"),
                  Icon(
                    Icons.contact_page,
                    color: Colors.red,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 20,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) =>
                              const Padding(
                            padding: EdgeInsets.only(bottom: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Edit Account"),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              const Text(
                "Notifications",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 20,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: NotificationListView(name: 'Edit Account',),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationListView extends StatelessWidget {
  String name;
final pressedButton;
   NotificationListView(
      {

    super.key,
        required this.name,
        this.pressedButton,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) =>
       Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
