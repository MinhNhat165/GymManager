<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="./header.jsp"%>
    <body>
        
        <%@include file="./navigation.jsp"%>

        <!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1 class="text-center">Thông tin người dùng</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of ex-header -->
        <!-- end of header -->
        
        
        <!-- Basic -->
        <div class="ex-form-1 pt-5 pb-5">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 offset-xl-3">
                        <div class="text-box mt-5 mb-5">
                            <!-- Sign Up Form -->
                            <form>
                                <div class="mb-4 form-floating">
                                    <input type="text" class="form-control" id="floatingInput" placeholder="Your name">
                                    <label for="floatingInput">Họ và tên</label>
                                </div>

                                <div class="mb-4 form-floating">
                                    <select class="form-select" aria-label="Default select example">
                                        <option value="false" selected>Nam</option>
                                        <option value="true">Nữ</option>
                                    </select>
                                </div>

                                <div class="mb-4 form-floating">
                                    <input type="tel" class="form-control" id="floatingInput2" placeholder="0123xxxxxx">
                                    <label for="floatingInput2">Số điện thoại</label>
                                </div>
                                
                                <div class="mb-4 form-floating">
                                    <input type="date" class="form-control" id="floatingInput3" placeholder="DD/MM/YYYY">
                                    <label for="floatingInput3">Ngày sinh</label>
                                </div>
                                <button type="submit" class="form-control-submit-button">Hoàn tất</button>
                            </form>
                            <!-- end of sign up form -->

                        </div> <!-- end of text-box -->
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of ex-basic-1 -->
        <!-- end of basic -->


        <%@include file="./footer.jsp"%>

        

        <!-- Back To Top Button -->
        <button onclick="topFunction()" id="myBtn">
            <img src="images/up-arrow.png" alt="alternative">
        </button>
        <!-- end of back to top button -->
        <%@include file="./script.jsp"%>    
    </body>
</html>