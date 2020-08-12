package service;

public interface SQLsyntax {

    String SELECT_PRODUCT_BY_ID ="SELECT p.id,name,price,amount,color,description,c.category from product p left join category c on p.category = c.id WHERE p.id =?; ";

    String INSERT_INTO_PRODUCT ="insert into product(id, name, price," +
            " amount, color, description, category) VALUES (?,?,?,?," +
            "?,?,?);";
    String SHOW_ALL_LIST = "select p.id,name,price,amount,color,description,c.category from product p left join category c on p.category = c.id;";


    String DELETE_BY_ID = "DELETE FROM product WHERE id =?;";

    String UPDATE_STAFF = "UPDATE product SET name=?,price=?,amount=?,color=?,description=?,category=?" +
            "           WHERE id=?;";
}
