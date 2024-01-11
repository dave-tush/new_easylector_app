import 'dart:async';
import 'package:flutter/material.dart';
import 'package:new_easylector_app/controller/message_controller.dart';
import 'package:new_easylector_app/controller/text_editing_controller.dart';
import 'package:new_easylector_app/models/message.dart';
import 'package:provider/provider.dart';
import 'chatmessage.dart';
import 'data.dart';

class chatting extends StatefulWidget {
  const chatting({super.key, required this.title, required this.firstLetter});
  final String title;
  final String firstLetter;
  @override
  State<chatting> createState() => _chattingState();
}

class _chattingState extends State<chatting> {
  final _controller = Controllers();
  final MessageController _messageController = MessageController();

  final List<chatMessages> _messages = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _sendMessage() {
    var message = chatMessages(text: _controller.controller.text, sender: "user");
    setState(() {
      _messages.insert(0, message);
    });
    _controller.controller.clear();
  }

  final String title = "messages";
  Widget textComposer() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _controller.controller,
            onSubmitted: (value) => _sendMessage(),
            decoration:
                const InputDecoration.collapsed(hintText: "Send Message"),
          ),
        ),
        IconButton(
          onPressed: () => _sendMessage(),
          icon: const Icon(
            Icons.send,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    String? data;
    double size = MediaQuery.of(context).size.width;
    final String sender;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              child: Text(
                widget.firstLetter.toString(),
              ),
            ),
            SizedBox(
              width: size / 20,
            ),
            Expanded(
              child: Text(
                widget.title.toString(),
              ),
            ),
            SizedBox(
              width: size / 3,
            ),
            InkWell(
              onTap: () => showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                        title: Text("Hello${widget.title}"),
                      )),
              child: const Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // WebViewWidget(controller: _webViewController),
          Flexible(
            child: ListView.builder(
              reverse: true,
              padding: const EdgeInsets.all(8.0),
              itemCount: _messages.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 4,
                  bottom: 10,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.red,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _messages[index],
                  ),
                ),
              ),
            ),
          ),
          Container(
            // color: Colors.blue,
            child: textComposer(),
          ),
        ],
      ),
    );
  }
}
