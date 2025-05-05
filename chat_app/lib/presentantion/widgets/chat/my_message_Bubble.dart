import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  final String? imageUrl;
  
  const MyMessageBubble({
    super.key, 
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: size.width * 0.7, // Limita al 70% del ancho de la pantalla
                ),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(2),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris.',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '12:00 PM',
                        style: TextStyle(fontSize: 10, color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: imageUrl != null
                  ? Image.network(
                      imageUrl!,
                      fit: BoxFit.cover,
                    )
                  : Container(
                      color: Theme.of(context).colorScheme.primary,
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
