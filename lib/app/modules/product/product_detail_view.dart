import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'product_controller.dart';

class ProductDetailView extends GetView<ProductController> {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Image
                  _buildProductImage(),
                  const SizedBox(height: 20),
                  // Product Info
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Product Name
                        const Text(
                          'Premium Casual Shirt',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        // Rating
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber[700], size: 20),
                            const SizedBox(width: 4),
                            const Text(
                              '4.8',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '(230 reviews)',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        // Price
                        const Text(
                          'Rp 299.000',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Size Selection
                        const Text(
                          'Size',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        _buildSizeSelection(),
                        const SizedBox(height: 20),
                        // Color Selection
                        const Text(
                          'Color',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        _buildColorSelection(),
                        const SizedBox(height: 20),
                        // Description
                        const Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Kemeja casual premium dengan bahan katun berkualitas tinggi. '
                          'Nyaman dipakai untuk berbagai acara. Tersedia dalam berbagai ukuran dan warna. '
                          'Material breathable dan mudah dirawat. Perfect for daily wear.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Bottom Action
          _buildBottomAction(),
        ],
      ),
    );
  }

  Widget _buildProductImage() {
    return Container(
      width: double.infinity,
      height: 300,
      color: Colors.grey[100],
      child: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.deepPurple.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Icon(
            Icons.checkroom,
            size: 100,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }

  Widget _buildSizeSelection() {
    final sizes = ['S', 'M', 'L', 'XL', 'XXL'];
    return SizedBox(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sizes.length,
        itemBuilder: (context, index) {
          final isSelected = index == 1; // Default M selected
          return Container(
            margin: const EdgeInsets.only(right: 8),
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: isSelected ? Colors.deepPurple : Colors.white,
                foregroundColor: isSelected ? Colors.white : Colors.black,
                side: BorderSide(
                  color: isSelected ? Colors.deepPurple : Colors.grey[300]!,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                sizes[index],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildColorSelection() {
    final colors = [
      Colors.blue,
      Colors.black,
      Colors.red,
      Colors.green,
      Colors.grey,
    ];
    return SizedBox(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          final isSelected = index == 0; // Default first color selected
          return Container(
            margin: const EdgeInsets.only(right: 12),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: colors[index],
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSelected ? Colors.deepPurple : Colors.grey[300]!,
                    width: isSelected ? 3 : 1,
                  ),
                ),
                child: isSelected
                    ? const Icon(Icons.check, color: Colors.white, size: 20)
                    : null,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildBottomAction() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: Row(
        children: [
          // Quantity Selector
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () => controller.decreaseQuantity(),
                ),
                Obx(() => Text(
                      '${controller.quantity}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () => controller.increaseQuantity(),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          // Add to Cart Button
          Expanded(
            child: ElevatedButton(
              onPressed: () => controller.addToCart(),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Tambah ke Keranjang',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
