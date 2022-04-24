<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel = "stylesheet" href = "style.css">
    <link rel = "stylesheet" href= "https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tenzo and Richard's Store</title>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"></script>
    <script>
        $(document).ready(function(){
            $('#hamburger').click(function(){
                $('ul').toggleClass('show');
            });
        });
    </script>
    <link rel="icon" href="https://www.nicepng.com/png/full/96-961724_svg-transparent-download-dog-s-by-seng-hoong.png">
</head>
<body>
    <header>
        <nav>
            <img src="mainlogo.png" alt="logo">
            <ul>
                <li><a href = "index.jsp">Home</a></li>
                <li><a href = "about.jsp">About Our Company</a></li>
                <li class = "current"><a href = "products.jsp">Products</a></li>
                <li><a href = "checkout.jsp">Check Out</a></li>
            </ul>
            <label id="hamburger">
                <i class="fas fa-bars"></i>
            </label>
        </nav>
    </header>


    <div id="productcontainer">
        <div class="product-cat">
            <a href = "switch.jsp">
            <img src="nintendo.png" class="col-1" alt="Nintendo Switch">
            </a>
        </div>
        <div class="product-cat">
            <a href = "playstation.jsp">
            <img src="playstation.png" class="col-1" alt="Playstation 5">
            </a>
        </div>
        <div class="product-cat">
            <a href = "xbox.jsp">
            <img src="xbox.png" class="col-1" alt="Microsoft Xbox">
            </a>
        </div>
        <div class="product-cat">
            <a href = "windows.jsp">
            <img src="windows.png" class="col-1" alt="PC Gaming">
            </a>
        </div>
    </div>

</body>
</html>