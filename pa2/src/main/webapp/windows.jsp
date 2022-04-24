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

        function myFunction(email, quantity, productname, firstname, lastname, address, zipcode) {
            
            let d = zipcode.toString().length;
            if(d != 5) {
                alert("Zip Code Must Be 5 Digits.");
                return false;
            }

            var x = email;
            var y = quantity;
            var z = productname;
            var a = firstname;
            var b = lastname;
            var c = address;
            window.open("mailto:"+x+'?subject=Thank you for ordering, '+a+ ' ' +b+'!'+'&body=Your order is for '+z+'%0D%0Aand the quantity you ordered is '+y+'.'+'%0D%0AYour shipping address is '+c +'%0D%0AThank you again for your purchase!');
        }
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


    <div class="switchsection">
        <div class="cards">
            <div class="switch-products">
                <h1>XBox Products</h1>
            </div>
            <div class="card">
                <div class="image-section">
                    <a href="#popupciv">
                    <img src="./windows/civilization.jpeg" alt="Civilization VI">
                    </a>
                </div>
                <div class="description">
                    <h1>Civilization VI</h1>
                    <p><b>Price:</b><span>$29.99</span><del>$59.99</del></p>
                </div>
                <div class="button-group">
                    <a href="#popupciv" class="buy">Buy</a>
                </div>
            </div>
            <div class="card">
                <div class="image-section">
                    <a href="#popupred">
                    <img src="./windows/reddead2.jpeg" alt="Red Dead Redemption II">
                    </a>
                </div>
                <div class="description">
                    <h1>Red Dead Redemption II</h1>
                    <p><b>Price:</b><span>$49.99</span><del>$59.99</del></p>
                </div>
                <div class="button-group">
                    <a href="#popupred" class="buy">Buy</a>
                </div>
            </div>
        </div>
    </div>

    <div class="overlay" id="popupciv">
        <div class="wrapper">
            <h2 id="productNameciv">Civilization VI</h2>
            <br></br>
            <p1>Just one more turn...wait, why are the birds chirping? Why is the window getting brighter...? Oh god...wait. It's 5 am?!</p1>
            <br></br>
            <a href="#" class="close">&times;</a>
            <div class="content">
                <div class="container">
                    <form id="myForm" onsubmit="myFunction(document.getElementById('emailciv').value, document.getElementById('quantityciv').value, document.getElementById('productNameciv').innerHTML, document.getElementById('firstNameciv').value, document.getElementById('lastNameciv').value, document.getElementById('shippingAddressciv').value, document.getElementById('zipcodeciv').value)">
                        </id>
                        <label>Quantity</label>
                        <input type="number" id ="quantityciv" min = "1" max = "10" placeholder="Min = 1 Max = 10" required>
                        <label>First Name</label>
                        <input type="text" id = "firstNameciv" placeholder = "Your First Name" required>
                        <label>Last Name</label>
                        <input type="text" id = "lastNameciv" placeholder = "Your Last Name" required>
                        <label>Phone Number</label>
                        <input type="tel" placeholder = "Phone Number" required>
                        <label>Shipping Address</label>
                        <input type="text" id = "shippingAddressciv" placeholder = "Address" required>
                        <label>Zip Code</label>
                        <input type="text" placeholder = "Zip Code" id = "zipcodeciv" required>
                        <label>E-Mail Address</label>
                        <input type="email" id = "emailciv" placeholder = "Email Address" required>
                        <label>Shipping Options</label>
                        <input type="text", list="shippingList" placeholder = "Shipping" required>
                        <datalist id="shippingList" required>
                            <option value="Expedited Shipping (1-2 days)"></option>
                            <option value="Standard Shipping (5-7 days)"></option>
                        </datalist>
                        <input type="submit" value="Submit">
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="overlay" id="popupred">
        <div class="wrapper">
            <h2 id="productNamered">Red Dead Redemption II</h2>
            <br></br>
            <p1>If you expected to shoot things up, exchange that gun for a pack of tissues.</p1>
            <br></br>
            <a href="#" class="close">&times;</a>
            <div class="content">
                <div class="container">
                    <form id="myForm" onsubmit="myFunction(document.getElementById('emailred').value, document.getElementById('quantityred').value, document.getElementById('productNamered').innerHTML, document.getElementById('firstNamered').value, document.getElementById('lastNamered').value, document.getElementById('shippingAddresssred').value, document.getElementById('zipcodered').value)">
                        </id>
                        <label>Quantity</label>
                        <input type="number" id ="quantityred" min = "1" max = "10" placeholder="Min = 1 Max = 10" required>
                        <label>First Name</label>
                        <input type="text" id = "firstNamered" placeholder = "Your First Name" required>
                        <label>Last Name</label>
                        <input type="text" id = "lastNamered" placeholder = "Your Last Name" required>
                        <label>Phone Number</label>
                        <input type="tel" placeholder = "Phone Number" required>
                        <label>Shipping Address</label>
                        <input type="text" id = "shippingAddresssred" placeholder = "Address" required>
                        <label>Zip Code</label>
                        <input type="text" placeholder = "Zip Code" id = "zipcodered" required>
                        <label>E-Mail Address</label>
                        <input type="email" id = "emailred" placeholder = "Email Address" required>
                        <label>Shipping Options</label>
                        <input type="text", list="shippingList" placeholder = "Shipping" required>
                        <datalist id="shippingList" required>
                            <option value="Expedited Shipping (1-2 days)"></option>
                            <option value="Standard Shipping (5-7 days)"></option>
                        </datalist>
                        <input type="submit" value="Submit">
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
</body>
</html>