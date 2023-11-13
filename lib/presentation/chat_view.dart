import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat with WS',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => {},
          ),
        ),
        body: Column(
          children: [
            const Expanded(
              flex: 8,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Text(
                        'test',
                        style: TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  flex: 10,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          icon: const Icon(Icons.message),
                          hintText: 'Input Your Messages',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Colors.blue, width: 3),
                          )),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      onPressed: () => {}, icon: const Icon(Icons.send)),
                )
              ],
            ))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
        ]),
      ),
    );
  }
}
