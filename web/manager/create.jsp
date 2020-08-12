<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:genericPage>
    <jsp:attribute name="header">
        <h1 style="text-align: center">Add Product</h1>
        <p style="text-align: center;color: green;font-size: 25px">
            <c:if test="${requestScope['messenger']!=null}">
                <c:out value="${requestScope['messenger']}"/>
            </c:if>
        </p>
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <div class="container" style="min-height: 500px;background-size: cover;background-position: top">
            <form method="post">
                <div style="background-color: white;opacity: 0.6;font-weight: bold;color: black" class="form-row">
                    <div class="form-group col-md-12">
                        <label for="id">ID</label>
                        <input type="number" class="form-control" name="id" id="id">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" name="name" id="name">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="price">Price</label>
                        <input type="number" class="form-control" name="price" id="price">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="amount">Amount</label>
                        <input type="number" class="form-control" name="amount" id="amount">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="color">Color</label>
                        <input type="text" class="form-control" name="color" id="color">
                    </div>
                    <div class="form-group col-md-8">
                        <label for="description">Description</label>
                        <input type="text" class="form-control" name="description" id="description" placeholder="Thêm mô tả cho sản phẩm...">
                    </div>
                    <fieldset class="form-group col-md-4">
                        <legend class="col-form-label col-sm-2 pt-0">CateGory</legend>
                        <div class="col-sm-10">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="category" id="gridRadios1" value="1" checked>
                                <label class="form-check-label" for="gridRadios1">
                                    PHONE
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="category" id="gridRadios2" value="2">
                                <label class="form-check-label" for="gridRadios2">
                                    HOUSEWANE
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="category" id="gridRadios3" value="3"  >
                                <label class="form-check-label" for="gridRadios3">
                                    VEHICLE
                                </label>
                            </div>
                        </div>
                    </fieldset>

                </div>
                <button type="submit" class="btn btn-primary">Create</button>
            </form>
            <a href="product?action"><button type="button" class="btn btn-primary">Manager Menu</button></a>

        </div>


    </jsp:body>
</t:genericPage>
