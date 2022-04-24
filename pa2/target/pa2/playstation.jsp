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
                <h1>Playstation 5 Products</h1>
            </div>
            <div class="card">
                <div class="image-section">
                    <a href="#popupdemon">
                    <img src="./playstation/demonssouls.jpeg" alt="Demons Souls">
                    </a>
                </div>
                <div class="description">
                    <h1>Demon's Souls</h1>
                    <p><b>Price:</b><span>$49.99</span><del>$59.99</del></p>
                </div>
                <div class="button-group">
                    <a href="#popupdemon" class="buy">Buy</a>
                </div>
            </div>
            <div class="card">
                <div class="image-section">
                    <a href="#popupelden">
                    <img src="./playstation/eldenring.jpeg" alt="Elden Ring">
                    </a>
                </div>
                <div class="description">
                    <h1>Elden Ring</h1>
                    <p><b>Price:</b><span>$49.99</span><del>$59.99</del></p>
                </div>
                <div class="button-group">
                    <a href="#popupelden" class="buy">Buy</a>
                </div>
            </div>
            <div class="card">
                <div class="image-section">
                    <a href="#popupgran">
                    <img src="./playstation/granturismo.jpeg" alt="Gran Turismo">
                    </a>
                </div>
                <div class="description">
                    <h1>Gran Turismo 7</h1>
                    <p><b>Price:</b><span>$49.99</span><del>$59.99</del></p>
                </div>
                <div class="button-group">
                    <a href="#popupgran" class="buy">Buy</a>
                </div>
            </div>
            <div class="card">
                <div class="image-section">
                    <a href="#popuphorizon">
                    <img src="./playstation/horizon.jpeg" alt="Horizon">
                    </a>
                </div>
                <div class="description">
                    <h1>Horizon: Forbidden West</h1>
                    <p><b>Price:</b><span>$49.99</span><del>$59.99</del></p>
                </div>
                <div class="button-group">
                    <a href="#popuphorizon" class="buy">Buy</a>
                </div>
            </div>
            <div class="card">
                <div class="image-section">
                    <a href="#popuplost">
                    <img src="./playstation/lostjudgment.jpeg" alt="Lost Judgment">
                    </a>
                </div>
                <div class="description">
                    <h1>Lost Judgment</h1>
                    <p><b>Price:</b><span>$49.99</span><del>$59.99</del></p>
                </div>
                <div class="button-group">
                    <a href="#popuplost" class="buy">Buy</a>
                </div>
            </div>
        </div>
    </div>

    <div class="overlay" id="popupdemon">
        <div class="wrapper">
            <h2 id="productNamedemon">Demon's Souls</h2>
            <br></br>
            <p1>From PlayStation Studios and Bluepoint Games comes a remake of the PlayStation classic, Demon’s Souls™. 
                Entirely rebuilt from the ground up and masterfully enhanced, this remake invites you to experience the unsettling story and ruthless combat of Demon’s 
                Souls in stunning visual quality with incredible performance.</p1>
            <br></br>
            <a href="#" class="close">&times;</a>
            <div class="content">
                <div class="container">
                    <form id="myForm" onsubmit="myFunction(document.getElementById('emaildemon').value, document.getElementById('quantitydemon').value, document.getElementById('productNamedemon').innerHTML, document.getElementById('firstNamedemon').value, document.getElementById('lastNamedemon').value, document.getElementById('shippingAddressdemon').value, document.getElementById('zipcodedemon').value)">
                        </id>
                        <label>Quantity</label>
                        <input type="number" id ="quantitydemon" min = "1" max = "10" placeholder="Min = 1 Max = 10" required>
                        <label>First Name</label>
                        <input type="text" id = "firstNamedemon" placeholder = "Your First Name" required>
                        <label>Last Name</label>
                        <input type="text" id = "lastNamedemon" placeholder = "Your Last Name" required>
                        <label>Phone Number</label>
                        <input type="tel" placeholder = "Phone Number" required>
                        <label>Shipping Address</label>
                        <input type="text" id = "shippingAddressdemon" placeholder = "Address" required>
                        <label>Zip Code</label>
                        <input type="text" placeholder = "Zip Code" id = "zipcodedemon" required>
                        <label>E-Mail Address</label>
                        <input type="email" id = "emaildemon" placeholder = "Email Address" required>
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

    <div class="overlay" id="popupelden">
        <div class="wrapper">
            <h2 id="productNameelden">Elden Ring</h2>
            <br></br>
            <p1>"I started the game unable to get enough of it, and am finishing it wanting nothing more than to be done with it."</p1>
            <br></br>
            <a href="#" class="close">&times;</a>
            <div class="content">
                <div class="container">
                    <form id="myForm" onsubmit="myFunction(document.getElementById('emailelden').value, document.getElementById('quantityelden').value, document.getElementById('productNameelden').innerHTML, document.getElementById('firstNameelden').value, document.getElementById('lastNameelden').value, document.getElementById('shippingAddresselden').value, document.getElementById('zipcodeelden').value)">
                        </id>
                        <label>Quantity</label>
                        <input type="number" id ="quantityelden" min = "1" max = "10" placeholder="Min = 1 Max = 10" required>
                        <label>First Name</label>
                        <input type="text" id = "firstNameelden" placeholder = "Your First Name" required>
                        <label>Last Name</label>
                        <input type="text" id = "lastNameelden" placeholder = "Your Last Name" required>
                        <label>Phone Number</label>
                        <input type="tel" placeholder = "Phone Number" required>
                        <label>Shipping Address</label>
                        <input type="text" id = "shippingAddresselden" placeholder = "Address" required>
                        <label>Zip Code</label>
                        <input type="text" placeholder = "Zip Code" id = "zipcodeelden" required>
                        <label>E-Mail Address</label>
                        <input type="email" id = "emailelden" placeholder = "Email Address" required>
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

    <div class="overlay" id="popupgran">
        <div class="wrapper">
            <h2 id="productNamegran">Gran Turismo 7</h2>
            <br></br>
            <p1>With the return of classic cars, iconic tracks, and fan-favourite modes like GT Simulation and Spot Mode. Gran Turismo 7 is the complete Real Driving Simulator, 
                25 years in the making. Find your line. Whether you’re a racer, collector, tuner, designer, photographer or arcade fan – immerse yourself in the facets of automotive 
                culture that matter most to you. Connect and compete. Join an international community of drivers to share race strategies, tuning tips, livery designs and photos, 
                before taking to the track to go head-to-head.</p1>
            <br></br>
            <a href="#" class="close">&times;</a>
            <div class="content">
                <div class="container">
                    <form id="myForm" onsubmit="myFunction(document.getElementById('emailgran').value, document.getElementById('quantitygran').value, document.getElementById('productNamegran').innerHTML, document.getElementById('firstNamegran').value, document.getElementById('lastNamegran').value, document.getElementById('shippingAddressgran').value, document.getElementById('zipcodegran').value)">
                        </id>
                        <label>Quantity</label>
                        <input type="number" id ="quantitygran" min = "1" max = "10" placeholder="Min = 1 Max = 10" required>
                        <label>First Name</label>
                        <input type="text" id = "firstNamegran" placeholder = "Your First Name" required>
                        <label>Last Name</label>
                        <input type="text" id = "lastNamegran" placeholder = "Your Last Name" required>
                        <label>Phone Number</label>
                        <input type="tel" placeholder = "Phone Number" required>
                        <label>Shipping Address</label>
                        <input type="text" id = "shippingAddressgran" placeholder = "Address" required>
                        <label>Zip Code</label>
                        <input type="text" placeholder = "Zip Code" id = "zipcodegran" required>
                        <label>E-Mail Address</label>
                        <input type="email" id = "emailgran" placeholder = "Email Address" required>
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

    <div class="overlay" id="popuphorizon">
        <div class="wrapper">
            <h2 id="productNamehorizon">Horizon: Forbidden West</h2>
            <br></br>
            <p1>An absolute masterpiece that was overshadowed by its unfortunate release times. The first was released within a few days of The Legend of Zelda: Breath of the Wild
                and the second was released just one week before Elden Ring. Still a fantastic game, however. Highly recommendeded!<p1>
            <br></br>
            <a href="#" class="close">&times;</a>
            <div class="content">
                <div class="container">
                    <form id="myForm" onsubmit="myFunction(document.getElementById('emailhorizon').value, document.getElementById('quantityhorizon').value, document.getElementById('productNamehorizon').innerHTML, document.getElementById('firstNamehorizon').value, document.getElementById('lastNamehorizon').value, document.getElementById('shippingAddresshorizon').value, document.getElementById('zipcodehorizon').value)">
                        </id>
                        <label>Quantity</label>
                        <input type="number" id ="quantityhorizon" min = "1" max = "10" placeholder="Min = 1 Max = 10" required>
                        <label>First Name</label>
                        <input type="text" id = "firstNamehorizon" placeholder = "Your First Name" required>
                        <label>Last Name</label>
                        <input type="text" id = "lastNamehorizon" placeholder = "Your Last Name" required>
                        <label>Phone Number</label>
                        <input type="tel" placeholder = "Phone Number" required>
                        <label>Shipping Address</label>
                        <input type="text" id = "shippingAddresshorizon" placeholder = "Address" required>
                        <label>Zip Code</label>
                        <input type="text" placeholder = "Zip Code" id = "zipcodehorizon" required>
                        <label>E-Mail Address</label>
                        <input type="email" id = "emailhorizon" placeholder = "Email Address" required>
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

    <div class="overlay" id="popuplost">
        <div class="wrapper">
            <h2 id="productNamelost">Lost Judgment</h2>
            <br></br>
            <p1>As I once heard someone say during discussions of the game, "Lost Judgment is just a long and nasty break-up between Kuwana and Yagami."</p1>
            <br></br>
            <a href="#" class="close">&times;</a>
            <div class="content">
                <div class="container">
                    <form id="myForm" onsubmit="myFunction(document.getElementById('emaillost').value, document.getElementById('quantitylost').value, document.getElementById('productNamelost').innerHTML, document.getElementById('firstNamelost').value, document.getElementById('lastNamelost').value, document.getElementById('shippingAddresslost').value, document.getElementById('zipcodelost').value)">
                        </id>
                        <label>Quantity</label>
                        <input type="number" id ="quantitylost" min = "1" max = "10" placeholder="Min = 1 Max = 10" required>
                        <label>First Name</label>
                        <input type="text" id = "firstNamelost" placeholder = "Your First Name" required>
                        <label>Last Name</label>
                        <input type="text" id = "lastNamelost" placeholder = "Your Last Name" required>
                        <label>Phone Number</label>
                        <input type="tel" placeholder = "Phone Number" required>
                        <label>Shipping Address</label>
                        <input type="text" id = "shippingAddresslost" placeholder = "Address" required>
                        <label>Zip Code</label>
                        <input type="text" placeholder = "Zip Code" id = "zipcodelost" required>
                        <label>E-Mail Address</label>
                        <input type="email" id = "emaillost" placeholder = "Email Address" required>
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