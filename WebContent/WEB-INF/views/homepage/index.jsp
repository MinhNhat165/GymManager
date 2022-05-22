<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="./header.jsp"%>
    <body data-bs-spy="scroll" data-bs-target="#navbarExample">
		<!-- Navigation -->
        <nav id="navbarExample" class="navbar navbar-expand-lg fixed-top navbar-light" aria-label="Main navigation">
            <div class="container">

                <!-- Image Logo -->
                <a class="navbar-brand logo-image" href="homepage/index.htm"><img src="${pageContext.request.contextPath}/resources/homapage/images/logo.png" alt="alternative"></a> 

                <!-- Text Logo - Use this if you don't have a graphic logo -->
                <!-- <a class="navbar-brand logo-text" href="index.hml">Ioniq</a> -->

                <button class="navbar-toggler p-0 border-0" type="button" id="navbarSideCollapse" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
                    <ul class="navbar-nav ms-auto navbar-nav-scroll">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#header">Trang chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#features">Khóa học</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#Classes">Lớp học</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#pricing">Khóa học cá nhân</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false">Drop</a>
                            <ul class="dropdown-menu" aria-labelledby="dropdown01">
                                <li><a class="dropdown-item" href="article.html">Article Details</a></li>
                                <li><div class="dropdown-divider"></div></li>
                                <li><a class="dropdown-item" href="terms.html">Terms Conditions</a></li>
                                <li><div class="dropdown-divider"></div></li>
                                <li><a class="dropdown-item" href="privacy.html">Privacy Policy</a></li>
                            </ul>
                        </li>
                    </ul>
                    <span class="nav-item">
                        <a class="btn-outline-sm" href="homepage/log-in.htm">Đăng nhập</a>
                    </span>
                </div> <!-- end of navbar-collapse -->
            </div> <!-- end of container -->
        </nav> <!-- end of navbar -->
        <!-- end of navigation -->
        <!-- Header -->
        <header id="header" class="header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="text-container">
                            <h1 class="h1-large">Chúng tôi có các khóa học về <br> <span class="replace-me">GYM, Aerobic, Cardio, Yoga</span></h1>
                            <p class="p-large">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dignissim, neque ut vanic barem ultrices sollicitudin</p>
                            <a class="btn-solid-lg" href="homepage/sign-up.htm">Trở thành thành viên ngay bây giờ</a>
                        </div> <!-- end of text-container -->
                    </div> <!-- end of col -->
                    <div class="col-lg-6">
                        <div class="image-container">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/homapage/images/cover-img.png" alt="alternative">
                        </div> <!-- end of image-container -->
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of header -->
        <!-- end of header -->


        <!-- Course -->
        <div id="features" class="cards-1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="h2-heading">PTIT GYM is packed with <br> <span>awesome courses</span></h2>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
                <div class="row">
                    <div class="col-lg-12">
                        
                        <!-- Card -->
                        <div class="card">
                            <div class="card-icon">
                                <span class="fas fa-dumbbell"></span>
                            </div>
                            <div class="card-body">
                                <h4 class="card-title">GYM</h4>
                                <p>Gym là hình thức tập luyện được rất nhiều người lựa chọn với rất nhiều mục đích như tăng cân, giảm cân, duy trì vóc dáng, giải tỏa căng thẳng. Bao gồm nhiều bài tập vận động cơ thể.</p>
                            </div>
                        </div>
                        <!-- end of card -->

                        <!-- Card -->
                        <div class="card">
                            <div class="card-icon green">
                                <span class="fas fa-walking"></span>
                            </div>
                            <div class="card-body">
                                <h4 class="card-title">Aerobic</h4>
                                <p>Aerobic là bất kỳ hình thức tập thể dục nào sử dụng oxy. Nếu bạn tham gia vào các hoạt động mà bạn đổ mồ hôi và thở nặng nhọc, điều này có nghĩa là cơ thể bạn đang cần oxy. Và đó là một hình thức tập Aerobic.</p>
                            </div>
                        </div>
                        <!-- end of card -->

                        <!-- Card -->
                        <div class="card">
                            <div class="card-icon blue">
                                <span class="fas fa-child"></span>
                            </div>
                            <div class="card-body">
                                <h4 class="card-title">Cardio</h4>
                                <p>Cardio bao gồm các hoạt động với trọng lượng. Nó thường được thực hiện theo kiểu mạch với mục tiêu tăng nhịp tim của bạn trong thời gian dài hơn là nâng tạ để tăng sức mạnh, sức mạnh hoặc khối lượng cơ. </p>
                            </div>
                        </div>
                        <!-- end of card -->

                        <!-- Card -->
                        <div class="card">
                            <div class="card-icon blue">
                                <span class="fas fa-street-view"></span>
                            </div>
                            <div class="card-body">
                                <h4 class="card-title">Yoga</h4>
                                <p>Yoga bao gồm các bài tập giúp cải thiện thể chất, tinh thần, tình cảm và cả tâm linh của người tập. Đây là một lựa chọn thú vị cho những người mới bắt đầu cũng như những ai luyện tập thể dục thường xuyên.</p>
                            </div>
                        </div>
                        <!-- end of card -->
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of cards-1 -->
        <!-- end of course -->


        <!-- Classes -->
        <div id="Classes" class="slider-1 bg-gray">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="h2-heading">Few words from our clients</h2>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
                <div class="row">
                    <div class="col-lg-12">

                        <!-- Card Slider -->
                        <div class="slider-container">
                            <div class="swiper-container card-slider">
                                <div class="swiper-wrapper">
                                    
                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img class="card-image" src="${pageContext.request.contextPath}/resources/homapage/images/gym.jpg" alt="alternative">
                                            <div class="card-body">
                                                <p class="testimonial-author">GYM - 6 Tháng</p>
                                                <p class="testimonial-text">Tortor sodales eget. Vivamus imperdiet leo eu risus tincidunt uris. Proin placerat, urna hendrerit placerat erase convallis</p>
                                                <p class="testimonial-author">1.000.000 VNĐ</p>
                                            </div>
                                            <div class="card-button">
                                                <button class="btn-solid-reg">Đăng ký</button>
                                            </div>
                                        </div>
                                    </div> <!-- end of swiper-slide -->

                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img class="card-image" src="${pageContext.request.contextPath}/resources/homapage/images/hatha-yoga.jpg" alt="alternative">
                                            <div class="card-body">
                                                <p class="testimonial-author">Yoga - 6 Tháng</p>
                                                <p class="testimonial-text">Tortor sodales eget. Vivamus imperdiet leo eu risus tincidunt uris. Proin placerat, urna hendrerit placerat erase convallis</p>
                                                <p class="testimonial-author">1.000.000 VNĐ</p>
                                            </div>
                                            <div class="card-button">
                                                <button class="btn-solid-reg">Đăng ký</button>
                                            </div>
                                        </div>
                                    </div> <!-- end of swiper-slide -->

                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img class="card-image" src="${pageContext.request.contextPath}/resources/homapage/images/cardio.jpg" alt="alternative">
                                            <div class="card-body">
                                                <p class="testimonial-author">Cardio - 6 Tháng</p>
                                                <p class="testimonial-text">Tortor sodales eget. Vivamus imperdiet leo eu risus tincidunt uris. Proin placerat, urna hendrerit placerat erase convallis</p>
                                                <p class="testimonial-author">1.000.000 VNĐ</p>
                                            </div>
                                            <div class="card-button">
                                                <button class="btn-solid-reg">Đăng ký</button>
                                            </div>
                                        </div>
                                    </div> <!-- end of swiper-slide -->

                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img class="card-image" src="${pageContext.request.contextPath}/resources/homapage/images/aerobic.jpg" alt="alternative">
                                            <div class="card-body">
                                                <p class="testimonial-author">Aerobic - 6 Tháng</p>
                                                <p class="testimonial-text">Tortor sodales eget. Vivamus imperdiet leo eu risus tincidunt uris. Proin placerat, urna hendrerit placerat erase convallis</p>
                                                <p class="testimonial-author">1.000.000 VNĐ</p>
                                            </div>
                                            <div class="card-button">
                                                <button class="btn-solid-reg">Đăng ký</button>
                                            </div>
                                        </div>
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->
            
                                    
                                
                                </div> <!-- end of swiper-wrapper -->
            
                                <!-- Add Arrows -->
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                                <!-- end of add arrows -->
            
                            </div> <!-- end of swiper-container -->
                        </div> <!-- end of slider-container -->
                        <!-- end of card slider -->

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of slider-1 -->
        <!-- end of testimonials -->

        <!-- Persional course -->
        <div id="pricing" class="cards-2 bg-gray">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="h2-heading">Free forever tier and 2 pro plans</h2>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
                <div class="row">
                    <div class="col-lg-12">
                        
                        <!-- Card -->
                        <div class="card">
                            <div class="card-body">
                                <div class="card-title">
                                    <img class="decoration-lines" src="${pageContext.request.contextPath}/resources/homapage/images/decoration-lines.svg" alt="alternative"><span>Free tier</span><img class="decoration-lines flipped" src="${pageContext.request.contextPath}/resources/homapage/images/decoration-lines.svg" alt="alternative">
                                </div>
                                <ul class="list-unstyled li-space-lg">
                                    <li>Fusce pulvinar eu mi acm</li>
                                    <li>Curabitur consequat nisl bro</li>
                                    <li>Reget facilisis molestie</li>
                                    <li>Vivamus vitae sem in tortor</li>
                                    <li>Pharetra vehicula ornares</li>
                                    <li>Vivamus dignissim sit amet</li>
                                    <li>Ut convallis aliquama set</li>
                                </ul>
                                <div class="price">Free</div>
                                <a href="sign-up.html" class="btn-solid-reg">Sign up</a>
                            </div>
                        </div>
                        <!-- end of card -->

                        <!-- Card -->
                        <div class="card">
                            <div class="card-body">
                                <div class="card-title">
                                    <img class="decoration-lines" src="${pageContext.request.contextPath}/resources/homapage/images/decoration-lines.svg" alt="alternative"><span>Advanced</span><img class="decoration-lines flipped" src="${pageContext.request.contextPath}/resources/homapage/images/decoration-lines.svg" alt="alternative">
                                </div>
                                <ul class="list-unstyled li-space-lg">
                                    <li>Nunc commodo magna quis</li>
                                    <li>Lacus fermentum tincidunt</li>
                                    <li>Nullam lobortis porta diam</li>
                                    <li>Announcing of invita mro</li>
                                    <li>Dictum metus placerat luctus</li>
                                    <li>Sed laoreet blandit mollis</li>
                                    <li>Mauris non luctus est</li>
                                </ul>
                                <div class="price">$19<span>/month</span></div>
                                <a href="sign-up.html" class="btn-solid-reg">Sign up</a>
                            </div>
                        </div>
                        <!-- end of card -->

                        <!-- Card -->
                        <div class="card">
                            <div class="card-body">
                                <div class="card-title">
                                    <img class="decoration-lines" src="${pageContext.request.contextPath}/resources/homapage/images/decoration-lines.svg" alt="alternative"><span>Professional</span><img class="decoration-lines flipped" src="${pageContext.request.contextPath}/resources/homapage/images/decoration-lines.svg" alt="alternative">
                                </div>
                                <ul class="list-unstyled li-space-lg">
                                    <li>Quisque rutrum mattis</li>
                                    <li>Quisque tristique cursus lacus</li>
                                    <li>Interdum sollicitudin maec</li>
                                    <li>Quam posuerei pellentesque</li>
                                    <li>Est neco gravida turpis integer</li>
                                    <li>Mollis felis. Integer id quam</li>
                                    <li>Id tellus hendrerit lacinia</li>
                                </ul>
                                <div class="price">$29<span>/month</span></div>
                                <a href="sign-up.html" class="btn-solid-reg">Sign up</a>
                            </div>
                        </div>
                        <!-- end of card -->

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of cards-2 -->
        <!-- end of pricing -->
        <%@include file="./footer.jsp"%>      
        <!-- Back To Top Button -->
        <button onclick="topFunction()" id="myBtn">
            <img src="${pageContext.request.contextPath}/resources/homapage/images/up-arrow.png" alt="alternative">
        </button>
        <!-- end of back to top button -->
        <%@include file="./script.jsp"%>
    
        
    </body>
</html>