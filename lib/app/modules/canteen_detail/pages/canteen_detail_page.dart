import 'package:flutter/material.dart';

class CanteenDetailPage extends StatelessWidget {
  final String canteenName;
  final String canteenImage;
  final List<Map<String, dynamic>> foods;

  const CanteenDetailPage({
    Key? key,
    required this.canteenName,
    required this.canteenImage,
    required this.foods,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // AppBar custom
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Back button
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.arrow_back, color: Colors.black),
                    ),
                  ),
                  // Canteen title
                  Text(
                    canteenName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  // Cart icon
                  Stack(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(Icons.shopping_cart, color: Colors.white),
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange,
                          ),
                          child: const Text(
                            '2',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

            // Gambar Kantin
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                canteenImage,
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 16),

            // Grid makanan
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  itemCount: foods.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {
                    final food = foods[index];
                    return FoodCard(
                      name: food['name'],
                      price: food['price'],
                      canteenName: canteenName,
                      onAdd: () {
                        // Tambahkan ke keranjang
                      },
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final String name;
  final int price;
  final String canteenName;
  final VoidCallback onAdd;

  const FoodCard({
    Key? key,
    required this.name,
    required this.price,
    required this.canteenName,
    required this.onAdd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            // Gambar dummy
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(height: 8),
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(canteenName, style: const TextStyle(fontSize: 12)),
            const SizedBox(height: 4),
            Text("Rp ${price.toString()}", style: const TextStyle(fontWeight: FontWeight.bold)),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: onAdd,
                borderRadius: BorderRadius.circular(20),
                child: const CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.amber,
                  child: Icon(Icons.add, color: Colors.white, size: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
 