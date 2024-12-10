import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String title; // Define the title property

  // Modify constructor to accept the title parameter, without the const keyword
  ProductDetailsScreen({super.key, required this.title});

  final String productName = "Ageratum";
  final String productDescription =
      "Ageratum is a genus of 40 to 60 tropical warm temperature flowering annuals and perennials from the family Asteraceae, tribe Eupatorieae. Most species are native to Central America. Read more.";
  final double productPrice = 12.99;
  final List<String> productImages = [
    'assets/images/leaf.jpg', // Example image path, replace with your own images
  ];
  final double productRating = 4.5;
  final int reviewCount = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title), // Use the title passed in the constructor
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image with Back Arrow and Heart Icon (Swapped positions)
            Stack(
              children: [
                // Using PageView to display images
                SizedBox(
                  height: 300,
                  child: PageView.builder(
                    itemCount: productImages.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        productImages[index],
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context); // Go back to previous screen
                    },
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 10,
                  child: IconButton(
                    icon: Icon(Icons.favorite, color: Colors.red),
                    onPressed: () {
                      // Handle Add to Wishlist
                    },
                  ),
                ),
              ],
            ),
            // Product Title and Rating with Review Count (Reviews moved to the left)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // Reviews on the left side of the product name
                      Text(
                        "($reviewCount reviews)",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        productName,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),
                      Text(
                        productRating.toStringAsFixed(1),
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Product Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                productDescription,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            // Product Details (Size, Plant Type, Height, Humidity)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildProductDetail('Size', 'Medium'),
                  _buildProductDetail('Plant', 'Orchid'),
                  _buildProductDetail('Height', '12.6 cm'),
                  _buildProductDetail('Humidity', '82%'),
                ],
              ),
            ),
            // Quantity and Add to Cart Button with Price (Price on the same line as Add to Cart)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // Quantity Selection (Optional)
                  Expanded(
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            // Decrease quantity logic
                          },
                        ),
                        Text('1', style: TextStyle(fontSize: 18)),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            // Increase quantity logic
                          },
                        ),
                      ],
                    ),
                  ),
                  // Price and Add to Cart Button on the same line
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            '\$${productPrice.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(width: 16),
                          ElevatedButton(
                            onPressed: () {
                              // Add to cart logic
                            },
                            child: Text('Add to Cart'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue, // Blue Add to Cart button
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build product details (Size, Plant, etc.)
  Widget _buildProductDetail(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
