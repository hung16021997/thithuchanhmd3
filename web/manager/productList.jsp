
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:genericPage>
    <jsp:attribute name="header">
        <h1 class="my-lg-5" style="text-align: center">List of Product</h1>

    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <div class="container" style="min-height: 600px">
            <div class="row">
                <div class="col-12 align-self-center mt-lg-5" >
                    <a href="product?action=create"><button type="button" class="btn btn-primary">ADD NEW PRODUCT</button></a>

                    <form  action="/product?action=search" method="post">
                        <input type="text"  name="name">
                        <button value="name" type="submit">Search</button>
                    </form>

                    <form method="post">
                        <table class="table table-dark table-striped table-hover"  style="max-width: 100%">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Amount</th>
                                <th>Color</th>
                                <th>Description</th>
                                <th>Category</th>

                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="product" items="${productList}">
                                <tr>
                                    <td><c:out value="${product.getId()}"/></td>
                                    <td><c:out value="${product.getName()}"/></td>
                                    <td><c:out value="${product.getPrice()}"/></td>
                                    <td><c:out value="${product.getAmount()}"/></td>
                                    <td><c:out value="${product.getColor()}"/></td>
                                    <td><c:out value="${product.getDescription()}"/></td>
                                    <td><c:out value="${product.getCategory()}"/></td>
                                    <td><a href="product?action=update&id=${product.getId()}">Update Info</a></td>
                                    <td><a href="product?action=delete&id=${product.getId()}">Delete</a></td>
                                </tr>
                            </c:forEach>
                            </tbody>

                        </table>
                    </form>
                </div>
            </div>
        </div>


    </jsp:body>
</t:genericPage>
