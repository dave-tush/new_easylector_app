import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      color: Colors.red,
                    ),
                    const Text(
                      "Edit Profile",
                      style: TextStyle(fontSize: 20),
                    ),
                    InkWell(
                      onTap: () =>
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("Profile edited successfully"),
                            duration: Duration(milliseconds: 500),
                      )),
                      child: const Icon(
                        Icons.check,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: Icon(
                    Icons.account_circle,
                    color: Colors.red,
                    size: 100,
                  ),
                ),
                const Text(
                  "Your Profile",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                textsFormFields("Name"),
                const SizedBox(
                  height: 20,
                ),
                textsFormFields("Phone number"),
                const SizedBox(
                  height: 20,
                ),
                textsFormFields("Email"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField textsFormFields(
    String text,
  ) {
    return TextFormField(
      style: const TextStyle(
        fontSize: 12,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[300],
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            // width: 2.0,
            color: Colors.grey.withOpacity(0.0),
          ),
        ),
        focusedBorder:
            // InputBorder.none,
            OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            width: 2.0,
            color: Colors.grey.withOpacity(0.0),
          ),
        ),
        // labelText: 'Enter your name',
        hintText: text,
        hintStyle: TextStyle(
          fontWeight: FontWeight.normal,
          color: Colors.grey[800],
        ),
      ),
    );
  }
}
