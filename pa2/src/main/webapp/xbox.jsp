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
                    <a href="#popupcreed">
                    <img src="./xbox/assassinscreed.jpeg" alt="Assassin's Creed">
                    </a>
                </div>
                <div class="description">
                    <h1>Assassin's Creed: Valhalla</h1>
                    <p><b>Price:</b><span>$49.99</span><del>$59.99</del></p>
                </div>
                <div class="button-group">
                    <a href="#popupcreed" class="buy">Buy</a>
                </div>
            </div>
            <div class="card">
                <div class="image-section">
                    <a href="#popupslayer">
                    <img src="./xbox/demonslayer.jpeg" alt="Demon Slayer">
                    </a>
                </div>
                <div class="description">
                    <h1>Demon Slayer: The Hinokami Chronicles</h1>
                    <p><b>Price:</b><span>$49.99</span><del>$59.99</del></p>
                </div>
                <div class="button-group">
                    <a href="#popupslayer" class="buy">Buy</a>
                </div>
            </div>
            <div class="card">
                <div class="image-section">
                    <a href="#popupjudge">
                    <img src="./xbox/judgment.jpeg" alt="Judgment">
                    </a>
                </div>
                <div class="description">
                    <h1>Judgment</h1>
                    <p><b>Price:</b><span>$49.99</span><del>$59.99</del></p>
                </div>
                <div class="button-group">
                    <a href="#popupjudge" class="buy">Buy</a>
                </div>
            </div>
            <div class="card">
                <div class="image-section">
                    <a href="#popupyakuza">
                    <img src="./xbox/yakuza.jpeg" alt="Yakuza">
                    </a>
                </div>
                <div class="description">
                    <h1>Yakuza: Like a Dragon</h1>
                    <p><b>Price:</b><span>$49.99</span><del>$59.99</del></p>
                </div>
                <div class="button-group">
                    <a href="#popupyakuza" class="buy">Buy</a>
                </div>
            </div>
        </div>
    </div>

    <div class="overlay" id="popupcreed">
        <div class="wrapper">
            <h2 id="productNamecreed">Assassin's Creed: Valhalla</h2>
            <br></br>
            <p1>Some might say this game is inferior to Assassin's Creed: Odyssey, but I believe it has its merits. There are parts of the story that exemplify its outstanding OST, 
                which was composed by Sarah Schadner. In particular, "Contrary Winds" intertwines viola and computer-generated orchestra chords to create the perfect blend of tension
                and mystery. Also, who doesn't like robbing greedy monasteries and taking a few pieces of gold for themselves?</p1>
            <br></br>
            <a href="#" class="close">&times;</a>
            <div class="content">
                <div class="container">
                    <form id="myForm" onsubmit="myFunction(document.getElementById('emailcreed').value, document.getElementById('quantitycreed').value, document.getElementById('productNamecreed').innerHTML, document.getElementById('firstNamecreed').value, document.getElementById('lastNamecreed').value, document.getElementById('shippingAddresscreed').value, document.getElementById('zipcodecreed').value)">
                        </id>
                        <label>Quantity</label>
                        <input type="number" id ="quantitycreed" min = "1" max = "10" placeholder="Min = 1 Max = 10" required>
                        <label>First Name</label>
                        <input type="text" id = "firstNamecreed" placeholder = "Your First Name" required>
                        <label>Last Name</label>
                        <input type="text" id = "lastNamecreed" placeholder = "Your Last Name" required>
                        <label>Phone Number</label>
                        <input type="tel" placeholder = "Phone Number" required>
                        <label>Shipping Address</label>
                        <input type="text" id = "shippingAddresscreed" placeholder = "Address" required>
                        <label>Zip Code</label>
                        <input type="text" placeholder = "Zip Code" id = "zipcodecreed" required>
                        <label>E-Mail Address</label>
                        <input type="email" id = "emailcreed" placeholder = "Email Address" required>
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

    <div class="overlay" id="popupslayer">
        <div class="wrapper">
            <h2 id="productNameslayer">Demon Slayer: The Hinokami Chronicles</h2>
            <br></br>
            <p1>Only weebs play this game. Yes, that includes me.</p1>
            <br></br>
            <a href="#" class="close">&times;</a>
            <div class="content">
                <div class="container">
                    <form id="myForm" onsubmit="myFunction(document.getElementById('emailslayer').value, document.getElementById('quantityslayer').value, document.getElementById('productNameslayer').innerHTML, document.getElementById('firstNameslayer').value, document.getElementById('lastNameslayer').value, document.getElementById('shippingAddressslayer').value, document.getElementById('zipcodeslayer').value)">
                        </id>
                        <label>Quantity</label>
                        <input type="number" id ="quantityslayer" min = "1" max = "10" placeholder="Min = 1 Max = 10" required>
                        <label>First Name</label>
                        <input type="text" id = "firstNameslayer" placeholder = "Your First Name" required>
                        <label>Last Name</label>
                        <input type="text" id = "lastNameslayer" placeholder = "Your Last Name" required>
                        <label>Phone Number</label>
                        <input type="tel" placeholder = "Phone Number" required>
                        <label>Shipping Address</label>
                        <input type="text" id = "shippingAddressslayer" placeholder = "Address" required>
                        <label>Zip Code</label>
                        <input type="text" placeholder = "Zip Code" id = "zipcodeslayer" required>
                        <label>E-Mail Address</label>
                        <input type="email" id = "emailslayer" placeholder = "Email Address" required>
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

    <div class="overlay" id="popupjudge">
        <div class="wrapper">
            <h2 id="productNamejudge">Judgment</h2>
            <br></br>
            <p1>If you like lawyers, research, and parkour, this is the game for you. Also, who wouldn't want to be a middle-aged man with a curious fashion sense?</p1>
            <br></br>
            <a href="#" class="close">&times;</a>
            <div class="content">
                <div class="container">
                    <form id="myForm" onsubmit="myFunction(document.getElementById('emailjudge').value, document.getElementById('quantityjudge').value, document.getElementById('productNamejudge').innerHTML, document.getElementById('firstNamejudge').value, document.getElementById('lastNamejudge').value, document.getElementById('shippingAddressjudge').value, document.getElementById('zipcodejudge').value)">
                        </id>
                        <label>Quantity</label>
                        <input type="number" id ="quantityjudge" min = "1" max = "10" placeholder="Min = 1 Max = 10" required>
                        <label>First Name</label>
                        <input type="text" id = "firstNamejudge" placeholder = "Your First Name" required>
                        <label>Last Name</label>
                        <input type="text" id = "lastNamejudge" placeholder = "Your Last Name" required>
                        <label>Phone Number</label>
                        <input type="tel" placeholder = "Phone Number" required>
                        <label>Shipping Address</label>
                        <input type="text" id = "shippingAddressjudge" placeholder = "Address" required>
                        <label>Zip Code</label>
                        <input type="text" placeholder = "Zip Code" id = "zipcodejudge" required>
                        <label>E-Mail Address</label>
                        <input type="email" id = "emailjudge" placeholder = "Email Address" required>
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

    <div class="overlay" id="popupyakuza">
        <div class="wrapper">
            <h2 id="productNameyakuza">Yakuza: Like a Dragon</h2>
            <br></br>
            <p1>I'm homeless.</p1>
            <br></br>
            <a href="#" class="close">&times;</a>
            <div class="content">
                <div class="container">
                    <form id="myForm" onsubmit="myFunction(document.getElementById('emailyakuza').value, document.getElementById('quantityyakuza').value, document.getElementById('productNameyakuza').innerHTML, document.getElementById('firstNameyakuza').value, document.getElementById('lastNameyakuza').value, document.getElementById('shippingAddressyakuza').value, document.getElementById('zipcodeyakuza').value)">
                        </id>
                        <label>Quantity</label>
                        <input type="number" id ="quantityyakuza" min = "1" max = "10" placeholder="Min = 1 Max = 10" required>
                        <label>First Name</label>
                        <input type="text" id = "firstNameyakuza" placeholder = "Your First Name" required>
                        <label>Last Name</label>
                        <input type="text" id = "lastNameyakuza" placeholder = "Your Last Name" required>
                        <label>Phone Number</label>
                        <input type="tel" placeholder = "Phone Number" required>
                        <label>Shipping Address</label>
                        <input type="text" id = "shippingAddressyakuza" placeholder = "Address" required>
                        <label>Zip Code</label>
                        <input type="text" placeholder = "Zip Code" id = "zipcodeyakuza" required>
                        <label>E-Mail Address</label>
                        <input type="email" id = "emailyakuza" placeholder = "Email Address" required>
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