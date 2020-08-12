<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:genericPage>
    <jsp:attribute name="header">
        <h1 style="text-align: center">Delete Product</h1>
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
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                    <div class="my-3"><b>ID:</b> ${deleteProduct.getId()}</div>
                    <div class="my-3"><b>Name:</b> ${deleteProduct.getName()}</div>
                    <div class="my-3"><b>Price:</b> ${deleteProduct.getPrice()}</div>
                    <div class="my-3"><b>Amount:</b> ${deleteProduct.getAmount()}</div>
                    <div class="my-3"><b>Color:</b> ${deleteProduct.getColor()}</div>
                    <div class="my-3"><b>Category:</b> ${deleteProduct.getCategory()}</div>
                    <form method="post">
                        <div class="form-group">
                            <div class="d-flex justify-content-start">
                                <button class="btn btn-danger mr-lg-5">Yes</button>
                                <a href="product"><button type="button" class="btn btn-primary">Back to list</button></a>

                            </div>
                        </div>
                    </form>


                </div>
            </div>

        </div>


    </jsp:body>
</t:genericPage>
