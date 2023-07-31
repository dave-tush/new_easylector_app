import 'package:flutter/material.dart';
import 'package:new_easylector_app/pages/edit_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    List accountName = [
      "Edit Account",
      "Change Password",
      "Privacy & Security",
      "App Notification",
      "Notification",
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  Text(
                    "Progress",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.account_circle,
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
                        height: accountNames.length * 35,
                        child: ListView.builder(
                          itemCount: accountNames.length,
                          itemBuilder: (BuildContext context, int index) =>
                              settingCard(accountNames[index], null),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
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
                  child: SizedBox(
                    height: notificationsName.length * 35,
                    child: ListView.builder(
                      itemCount: notificationsName.length,
                      itemBuilder: (BuildContext context, int index) =>
                          settingCard(
                        notificationsName[index],
                            newPressedButton,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<String> notificationsName = [
    "App Notification",
    "Notification",
  ];
  List<String> accountNames = [
    "Edit Account",
    "Change Password",
    "Privacy & Security",
  ];
  newPressedButton(){
         Navigator.push(
        context,
        MaterialPageRoute(
        builder: (BuildContext context) => const EditPage()));
  }
  Padding settingCard(String text, pressedButton) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: InkWell(
        onTap: pressedButton,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationListView extends StatelessWidget {
  String name;
  final pressedButton;
  NotificationListView({
    super.key,
    required this.name,
    this.pressedButton,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) => Padding(
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
