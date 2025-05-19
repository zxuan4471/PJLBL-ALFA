import 'package:flutter/material.dart';
import 'package:pas2/app/modules/models/food_model.dart';

class FoodDetailPage extends StatelessWidget {
  final FoodModel foods;

  const FoodDetailPage({Key? key, required this.foods}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(foods.name),
        backgroundColor: const Color(0xFFFFBA00),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Food image
          Image.asset(
            foods.image,
            width: double.infinity,
            height: 220,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),

          // Food name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              foods.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 8),

          // Price
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Rp ${foods.price.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Description placeholder
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Deskripsi makanan akan ditampilkan di sini. Tambahkan informasi tambahan jika diperlukan.',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
