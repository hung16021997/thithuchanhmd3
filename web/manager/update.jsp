<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:genericPage>
    <jsp:attribute name="header">
        <h1 style="text-align: center">Update Product Info</h1>
        <p style="text-align: center;color: green">
            <c:if test="${requestScope['messenger']!=null}">
                <c:out value="${requestScope['messenger']}"/>
            </c:if>
        </p>
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <div class="container" style="min-height: 600px">
            <form method="post">
                <div class="form-row">
                    <div class="form-group col-md-12">
                           ID: ${updateProduct.getId()}
                    </div>
                    <div class="form-group col-md-4">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" name="name" id="name" value="${updateProduct.getName()}">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="lastname">Price</label>
                        <input type="number" class="form-control" name="price" id="lastname" value="${updateProduct.getPrice()}">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="amount">Amount</label>
                        <input type="number" class="form-control" name="amount" id="amount" value="${updateProduct.getAmount()}">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="color">Color</label>
                        <input type="text" class="form-control" name="color" id="color" value="${updateProduct.getColor()}">
                    </div>
                    <div class="form-group col-md-12">
                        <label for="description">Description</label>
                        <input type="text" class="form-control" name="description" id="description" value="${updateProduct.getDescription()}">
                    </div>
                    <fieldset class="form-group col-md-4">
                        <legend class="col-form-label col-sm-2 pt-0">Staff Rank</legend>
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
                <button type="submit" class="btn btn-primary">Update</button>
            </form>
            <a href="product"><button type="button" class="btn btn-primary">Manager Menu</button></a>
        </div>


    </jsp:body>
</t:genericPage>
