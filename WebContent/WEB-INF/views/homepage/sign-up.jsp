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
                        <h1 class="text-center">Đăng Ký</h1>
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
                            <p class="mb-4">Điền vảo biểu mẫu bên dưới để đăng ký. Bạn đã có tài khoản? Chỉ cần <a class="blue" href="homepage/log-in.htm">Đăng nhập</a></p>

                            <!-- Sign Up Form -->
                            <form>
                                <div class="mb-4 form-floating">
                                    <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                                    <label for="floatingInput">Email</label>
                                </div>
                                <div class="mb-4 form-floating">
                                    <input type="text" class="form-control" id="floatingInput2" placeholder="Your username">
                                    <label for="floatingInput">Tên đăng nhập</label>
                                </div>
                                <div class="mb-4 form-floating">
                                    <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                                    <label for="floatingPassword">Mật khẩu</label>
                                </div>
                                <div class="mb-4 form-floating">
                                    <input type="password" class="form-control" id="floatingReinputPassword" placeholder="Password">
                                    <label for="floatingReinputPassword">Xác nhận mật khẩu</label>
                                </div>
                                <div class="mb-4 form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Tôi đồng ý với <a href="privacy.html">Chính sách bảo mật</a> và <a href="terms.html">Điều khoản & Điều kiện</a> của trang web</label>
                                </div>
                                <button type="submit" class="form-control-submit-button">Đăng ký</button>
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