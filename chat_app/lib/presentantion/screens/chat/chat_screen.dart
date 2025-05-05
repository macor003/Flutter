import 'package:chat_app/presentantion/widgets/chat/her_message_Bubble.dart';
import 'package:chat_app/presentantion/widgets/chat/my_message_Bubble.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: const NetworkImage(
              'https://s2.abcstatics.com/abc/www/multimedia/cultura/2025/04/10/1-taylorswift-RmZDLia1vgaL0R51HJNRdYJ-1200x840@diario_abc.jpg',
            ),
          ),
        ),
        title: const Text('Tay 💖'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                 return index % 2 == 0
                    ? const HerMessageBubble( imageUrl: 'https://s2.abcstatics.com/abc/www/multimedia/cultura/2025/04/10/1-taylorswift-RmZDLia1vgaL0R51HJNRdYJ-1200x840@diario_abc.jpg')
                    : const MyMessageBubble( imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThSMXSEvPY_07ZZG8TnY2f5QfcZsDzt_WvPg&s',);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Escribe un mensaje',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      // Acción al enviar el mensaje
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
