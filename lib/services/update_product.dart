import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct({
    required int id,
    required String title,
    required double price,
    required String description,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> body = {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    };

    Map<String, dynamic> data = await Api().put(
      Url: 'https://fakestoreapi.com/products/$id',
      body: body,
    );

    return ProductModel.fromJson(data);
  }
}
