import 'package:examen_johan_melchor/modules/products/repository/product_repository.dart';
import 'package:examen_johan_melchor/modules/products/domain/product.dart';

class GetProducts {
  final ProductRepository productRepository;

  GetProducts(this.productRepository);

  Future<List<Product>> execute(String categorySlug) {
    return productRepository.getByCategory(categorySlug);
  }
}
