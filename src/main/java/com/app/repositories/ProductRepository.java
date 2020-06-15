package com.app.repositories;

import com.app.domain.Product;
import java.util.List;


public interface ProductRepository {

    List<Product> getProducts();

    Product getProductById(int id);

    void updateProduct(Product product);

    void addProduct(Product product);

    void removeProduct(Product product);

}
