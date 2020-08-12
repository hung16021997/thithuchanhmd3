package service;

import codegym.model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO implements IProductDAO,SQLsyntax {
    DB_Connection db_connection = DB_Connection.getInstance();


    @Override
    public Product selectById(int id) {
        Connection cnn = db_connection.getConnection();
        Product deleteProduct = null;
        try {
            PreparedStatement pstm = cnn.prepareStatement(SELECT_PRODUCT_BY_ID);
            pstm.setInt(1,id);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()){
                int deleteid = rs.getInt("id");
                String name =rs.getString("name");
                Double price =rs.getDouble("price");
                int amount =rs.getInt("amount");
                String color =rs.getString("color");
                String description =rs.getString("description");
                String category =rs.getString("category");
                deleteProduct = new Product(deleteid,name,price,amount,color,description,category);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return deleteProduct;
    }

    @Override
    public void create(Product product) {
        try{
            Connection cnn = db_connection.getConnection();
            PreparedStatement pstm = cnn.prepareStatement(INSERT_INTO_PRODUCT);
            pstm.setInt(1,product.getId());
            pstm.setString(2,product.getName());
            pstm.setDouble(3,product.getPrice());
            pstm.setInt(4,product.getAmount());
            pstm.setString(5,product.getColor());
            pstm.setString(6,product.getDescription());
            pstm.setInt(7,product.getCategoryCode());

            int result = pstm.executeUpdate();

        }catch (SQLException sql){
            sql.printStackTrace();
        }

    }

    @Override
    public void updateById(int id, Product product) {
        Connection cnn = db_connection.getConnection();
        try {
            PreparedStatement pstm = cnn.prepareStatement(UPDATE_STAFF);
            pstm.setString(1,product.getName());
            pstm.setDouble(2,product.getPrice());
            pstm.setInt(3,product.getAmount());
            pstm.setString(4,product.getColor());
            pstm.setString(5,product.getDescription());
            pstm.setInt(6,product.getCategoryCode());
            pstm.setInt(7,product.getId());
            pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }



    }

    @Override
    public List<Product> showList() {
        List<Product> mylist = new ArrayList<>();
        Connection cnn = db_connection.getConnection();
        try {
            Statement stm = cnn.createStatement();
            ResultSet rs = stm.executeQuery(SHOW_ALL_LIST);
            while (rs.next()){
                int id = rs.getInt("id");
                String name =rs.getString("name");
                Double price =rs.getDouble("price");
                int amount =rs.getInt("amount");
                String color =rs.getString("color");
                String description =rs.getString("description");
                String category =rs.getString("category");
                mylist.add(new Product(id,name,price,amount,color,description,category));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return mylist;
    }

    @Override
    public void deleteById(int id) {
        Connection cnn = db_connection.getConnection();
        try {
            PreparedStatement pstm = cnn.prepareStatement(DELETE_BY_ID);
            pstm.setInt(1,id);
            pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public List<Product> findByName(String Name) throws SQLException {
        List<Product> productList = new ArrayList<>();
        try (Connection connection = db_connection.getConnection();
             PreparedStatement statement = (PreparedStatement) connection.prepareStatement("select * from product where name like ?;");
        ) {
            statement.setString(1, "%" + Name + "%");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                int price = resultSet.getInt("price");
                int amount = resultSet.getInt("amount");
                String color = resultSet.getString("color");
                String description = resultSet.getString("description");
                int category = resultSet.getInt("category");
                productList.add(new Product(id, name, price, amount, color, description, category));
            }
        }
        return productList;
    }
}
