import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.red,
                    ),
                    Text(
                      "Edit Profile",
                      style: TextStyle(fontSize: 20),
                    ),
                    Icon(
                      Icons.mark_chat_read,
                      color: Colors.red,
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
                const SizedBox(height: 20,),
                textsFormFields("Name"),
                const SizedBox(height: 20,),
                textsFormFields("Phone number"),
                const SizedBox(height: 20,),
                textsFormFields("Email"),

              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField textsFormFields(String text,) {
    return TextFormField(
              style:  const TextStyle(
                fontSize: 20,
              ),
              decoration:  InputDecoration(
                filled: true,
                fillColor:
                Colors.grey[300],
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                      Radius.circular(10)),
                  borderSide: BorderSide(
                    // width: 2.0,
                      color: Colors.grey.withOpacity(0.9)),
                ),
                focusedBorder:
                // InputBorder.none,
                OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                      Radius.circular(10)),
                  borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.grey.withOpacity(0.7)),
                ),
                // labelText: 'Enter your name',
                hintText: text,
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color:
                  Colors.black,
                ),
              ),
            );
  }
}
