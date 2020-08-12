package service;

import codegym.model.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductDAO {
    Product selectById(int id);
    void create(Product product)throws SQLException;
    void updateById (int id, Product product);

    List<Product> showList();
    void deleteById(int id);




}
