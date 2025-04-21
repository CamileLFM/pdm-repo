import 'package:flutter/material.dart';
import '../models/image_item.dart';

class GalleryPage extends StatelessWidget {
  GalleryPage({super.key});

  final List<ImageItem> items = [
    ImageItem(
      title: 'Chennai',
      subtitle: 'Flower Market',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgmxYYAwVn6jlYI-98iCtDU26lpY8n33wVWQ&s',
    ),
    ImageItem(
      title: 'Tanjore',
      subtitle: 'Bronze Works',
      imageUrl: 'https://regia.org/research/images/artefacts/B-b04.jpg',
    ),
    ImageItem(
      title: 'Tanjore',
      subtitle: 'Market',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuNX-Ae7kOJtTIvflvZOMpdeQfL-TVknbpXw&s',
    ),
    ImageItem(
      title: 'Tanjore',
      subtitle: 'Thanjavur Temple',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Brihadesvara_Temple%2C_Tanjavur%2C_India_02.jpg/250px-Brihadesvara_Temple%2C_Tanjavur%2C_India_02.jpg',
    ),
    ImageItem(
      title: 'Tanjore',
      subtitle: 'Thanjavur Temple',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Entrance_to_Brihadeshwara_Temple%2C_Tanjore.jpg/250px-Entrance_to_Brihadeshwara_Temple%2C_Tanjore.jpg',
    ),
    ImageItem(
      title: 'Pondicherry',
      subtitle: 'Salt Farm',
      imageUrl: 'https://konaseasalt.com/cdn/shop/files/Salt-Farm-Aerial_1600x1067_1d0379ff-89ce-44d3-8f05-f15da2734ce7.jpg?v=1720596808&width=1600',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Galeria de Locais')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1.1,
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.network(
                    item.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    gradient: const LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black87, Colors.transparent],
                    ),
                    
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  right: 8,
                  child: Text(
                    '${item.title}\n${item.subtitle}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: [Shadow(blurRadius: 2, color: Colors.black)],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
