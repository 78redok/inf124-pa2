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
                <h1>Nintendo Switch Products</h1>
            </div>
            <div class="card">
                <div class="image-section">
                    <a href="#popupkart">
                    <img src="./switch/kart.jpeg" alt="Mario Kart">
                    </a>
                </div>
                <div class="description">
                    <h1>Mario Kart</h1>
                    <p><b>Price:</b><span>$49.99</span><del>$59.99</del></p>
                </div>
                <div class="button-group">
                    <a href="#popupkart" class="buy">Buy</a>
                </div>
            </div>
            <div class="card">
                <div class="image-section">
                    <a href="#popupkirby">
                    <img src="./switch/kirby.jpeg" alt="Kirby">
                    </a>
                </div>
                <div class="description">
                    <h1>Kirby</h1>
                    <p><b>Price:</b><span>$49.99</span><del>$59.99</del></p>
                </div>
                <div class="button-group">
                    <a href="#popupkirby" class="buy">Buy</a>
                </div>
            </div>
            <div class="card">
                <div class="image-section">
                    <a href="#popupmario">
                    <img src="./switch/mario.jpeg" alt="Mario">
                    </a>
                </div>
                <div class="description">
                    <h1>Mario</h1>
                    <p><b>Price:</b><span>$49.99</span><del>$59.99</del></p>
                </div>
                <div class="button-group">
                    <a href="#popupmario" class="buy">Buy</a>
                </div>
            </div>
            <div class="card">
                <div class="image-section">
                    <a href="#popuppokemon">
                    <img src="./switch/pokemon.jpeg" alt="Pokemon">
                    </a>
                </div>
                <div class="description">
                    <h1>Pokemon</h1>
                    <p><b>Price:</b><span>$49.99</span><del>$59.99</del></p>
                </div>
                <div class="button-group">
                    <a href="#popuppokemon" class="buy">Buy</a>
                </div>
            </div>
            <div class="card">
                <div class="image-section">
                    <a href="#popupstarwars">
                    <img src="./switch/starwars.jpeg" alt="Star Wars">
                    </a>
                </div>
                <div class="description">
                    <h1>Star Wars</h1>
                    <p><b>Price:</b><span>$49.99</span><del>$59.99</del></p>
                </div>
                <div class="button-group">
                    <a href="#popupstarwars" class="buy">Buy</a>
                </div>
            </div>
            <div class="card">
                <div class="image-section">
                    <a href="#popupzelda">
                    <img src="./switch/zelda.jpeg" alt="Zelda">
                    </a>
                </div>
                <div class="description">
                    <h1>Zelda</h1>
                    <p><b>Price:</b><span>$49.99</span><del>$59.99</del></p>
                </div>
                <div class="button-group">
                    <a href="#popupzelda" class="buy">Buy</a>
                </div>
            </div>
        </div>
    </div>

    <div class="overlay" id="popupkart">
        <div class="wrapper">
            <h2 id="productNamekart">Mario Kart</h2>
            <br></br>
            <p1>Hit the road with the definitive version of Mario Kart 8 and play anytime, anywhere! Race your friends or battle them in a revised battle mode 
                on new and returning battle courses. Play locally in up to 4-player multiplayer in 1080p while playing in TV Mode. 
                Every track from the Wii U version, including DLC, makes a glorious return. Plus, the Inklings appear as all-new guest characters, 
                along with returning favorites, such as King Boo, Dry Bones, and Bowser Jr.!</p1>
            <br></br>
            <a href="#" class="close">&times;</a>
            <div class="content">
                <div class="container">
                    <form id="myForm" onsubmit="myFunction(document.getElementById('emailkart').value, document.getElementById('quantitykart').value, document.getElementById('productNamekart').innerHTML, document.getElementById('firstNamekart').value, document.getElementById('lastNamekart').value, document.getElementById('shippingAddresskart').value, document.getElementById('zipcodekart').value)">
                        </id>
                        <label>Quantity</label>
                        <input type="number" id ="quantitykart" min = "1" max = "10" placeholder="Min = 1 Max = 10" required>
                        <label>First Name</label>
                        <input type="text" id = "firstNamekart" placeholder = "Your First Name" required>
                        <label>Last Name</label>
                        <input type="text" id = "lastNamekart" placeholder = "Your Last Name" required>
                        <label>Phone Number</label>
                        <input type="tel" placeholder = "Phone Number" required>
                        <label>Shipping Address</label>
                        <input type="text" id = "shippingAddresskart" placeholder = "Address" required>
                        <label>Zip Code</label>
                        <input type="text" placeholder = "Zip Code" id = "zipcodekart" pattern ="[0-9]+" required>
                        <label>E-Mail Address</label>
                        <input type="email" id = "emailkart" placeholder = "Email Address" required>
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

    <div class="overlay" id="popupkirby">
        <div class="wrapper">
            <h2 id="productNamekirby">Kirby and the Forgotten Island</h2>
            <br></br>
            <p1>Float off on an all-new adventure as the powerful puffball, Kirby. Explore in 3D stages as you discover a mysterious world with abandoned structures 
                from a past civilization—like a shopping mall?! Copy enemies’ abilities like the new Drill and Ranger and use them to attack, 
                explore your surroundings, and save the kidnapped Waddle Dees from the ferocious Beast Pack alongside the mysterious Elfilin. 
                Hope you’re hungry for an unforgettable adventure! </p1>
            <br></br>
            <a href="#" class="close">&times;</a>
            <div class="content">
                <div class="container">
                    <form id="myForm" onsubmit="myFunction(document.getElementById('emailkirby').value, document.getElementById('quantitykirby').value, document.getElementById('productNamekirby').innerHTML, document.getElementById('firstNamekirby').value, document.getElementById('lastNamekirby').value, document.getElementById('shippingAddresskirby').value, document.getElementById('zipcodekirby').value)">
                        </id>
                        <label>Quantity</label>
                        <input type="number" id ="quantitykirby" min = "1" max = "10" placeholder="Min = 1 Max = 10" required>
                        <label>First Name</label>
                        <input type="text" id = "firstNamekirby" placeholder = "Your First Name" required>
                        <label>Last Name</label>
                        <input type="text" id = "lastNamekirby" placeholder = "Your Last Name" required>
                        <label>Phone Number</label>
                        <input type="tel" placeholder = "Phone Number" required>
                        <label>Shipping Address</label>
                        <input type="text" id = "shippingAddresskirby" placeholder = "Address" required>
                        <label>Zip Code</label>
                        <input type="text" placeholder = "Zip Code" id = "zipcodekirby" required>
                        <label>E-Mail Address</label>
                        <input type="email" id = "emailkirby" placeholder = "Email Address" required>
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

    <div class="overlay" id="popupmario">
        <div class="wrapper">
            <h2 id="productNamemario">Mario Odyssey</h2>
            <br></br>
            <p1>Explore incredible places far from the Mushroom Kingdom as you join Mario and his new ally Cappy on a massive, 
                globe-trotting 3D adventure. Use amazing new abilities—like the power to capture and control objects, animals, and
                enemies—to collect Power Moons so you can power up the Odyssey airship and save Princess Peach from Bowser’s wedding plans!</p1>
            <br></br>
            <a href="#" class="close">&times;</a>
            <div class="content">
                <div class="container">
                    <form id="myForm" onsubmit="myFunction(document.getElementById('emailmario').value, document.getElementById('quantitymario').value, document.getElementById('productNamemario').innerHTML, document.getElementById('firstNamemario').value, document.getElementById('lastNamemario').value, document.getElementById('shippingAddressmario').value, document.getElementById('zipcodemario').value)">
                        </id>
                        <label>Quantity</label>
                        <input type="number" id ="quantitymario" min = "1" max = "10" placeholder="Min = 1 Max = 10" required>
                        <label>First Name</label>
                        <input type="text" id = "firstNamemario" placeholder = "Your First Name" required>
                        <label>Last Name</label>
                        <input type="text" id = "lastNamemario" placeholder = "Your Last Name" required>
                        <label>Phone Number</label>
                        <input type="tel" placeholder = "Phone Number" required>
                        <label>Shipping Address</label>
                        <input type="text" id = "shippingAddressmario" placeholder = "Address" required>
                        <label>Zip Code</label>
                        <input type="text" placeholder = "Zip Code" id = "zipcodemario" required>
                        <label>E-Mail Address</label>
                        <input type="email" id = "emailmario" placeholder = "Email Address" required>
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

    <div class="overlay" id="popuppokemon">
        <div class="wrapper">
            <h2 id="productNamepokemon">Pokemon Legends: Arceus</h2>
            <br></br>
            <p1>Action meets RPG as the Pokémon series reaches a new frontier! 
                Get ready for a new kind of grand, Pokémon adventure in Pokémon™ Legends: Arceus, 
                a new game from Game Freak that blends action and 
                exploration with the RPG roots of the Pokémon series.</p1>
            <br></br>
            <a href="#" class="close">&times;</a>
            <div class="content">
                <div class="container">
                    <form id="myForm" onsubmit="myFunction(document.getElementById('emailpokemon').value, document.getElementById('quantitypokemon').value, document.getElementById('productNamepokemon').innerHTML, document.getElementById('firstNamepokemon').value, document.getElementById('lastNamepokemon').value, document.getElementById('shippingAddresspokemon').value, document.getElementById('zipcodepokemon').value)">
                        </id>
                        <label>Quantity</label>
                        <input type="number" id ="quantitypokemon" min = "1" max = "10" placeholder="Min = 1 Max = 10" required>
                        <label>First Name</label>
                        <input type="text" id = "firstNamepokemon" placeholder = "Your First Name" required>
                        <label>Last Name</label>
                        <input type="text" id = "lastNamepokemon" placeholder = "Your Last Name" required>
                        <label>Phone Number</label>
                        <input type="tel" placeholder = "Phone Number" required>
                        <label>Shipping Address</label>
                        <input type="text" id = "shippingAddresspokemon" placeholder = "Address" required>
                        <label>Zip Code</label>
                        <input type="text" placeholder = "Zip Code" id = "zipcodepokemon" required>
                        <label>E-Mail Address</label>
                        <input type="email" id = "emailpokemon" placeholder = "Email Address" required>
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

    <div class="overlay" id="popupstarwars">
        <div class="wrapper">
            <h2 id="productNamestarwars">Lego Star Wars: The Skywalker Saga</h2>
            <br></br>
            <p1>The galaxy is yours with LEGO Star Wars: The Skywalker Saga! Play through all nine Star Wars saga 
                films in a brand-new LEGO video game unlike any other. 
                Experience fun-filled adventures, whimsical humor, and the freedom to fully 
                immerse yourself in the LEGO Star Wars universe like never before.</p1>
            <br></br>
            <a href="#" class="close">&times;</a>
            <div class="content">
                <div class="container">
                    <form id="myForm" onsubmit="myFunction(document.getElementById('emailstarwars').value, document.getElementById('quantitystarwars').value, document.getElementById('productNamestarwars').innerHTML, document.getElementById('firstNamestarwars').value, document.getElementById('lastNamestarwars').value, document.getElementById('shippingAddressstarwars').value, document.getElementById('zipcodestarwars').value)">
                        </id>
                        <label>Quantity</label>
                        <input type="number" id ="quantitystarwars" min = "1" max = "10" placeholder="Min = 1 Max = 10" required>
                        <label>First Name</label>
                        <input type="text" id = "firstNamestarwars" placeholder = "Your First Name" required>
                        <label>Last Name</label>
                        <input type="text" id = "lastNamestarwars" placeholder = "Your Last Name" required>
                        <label>Phone Number</label>
                        <input type="tel" placeholder = "Phone Number" required>
                        <label>Shipping Address</label>
                        <input type="text" id = "shippingAddressstarwars" placeholder = "Address" required>
                        <label>Zip Code</label>
                        <input type="text" placeholder = "Zip Code" id = "zipcodestarwars" required>
                        <label>E-Mail Address</label>
                        <input type="email" id = "emailstarwars" placeholder = "Email Address" required>
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

    <div class="overlay" id="popupzelda">
        <div class="wrapper">
            <h2 id="productNamezelda">The Legend of Zelda: Breath of the Wild</h2>
            <br></br>
            <p1>Forget everything you know about The Legend of Zelda games. Step into a world of discovery, exploration, 
                and adventure in The Legend of Zelda: Breath of the Wild, a boundary-breaking new game in the acclaimed series. 
                Travel across vast fields, through forests, and to mountain peaks as you discover what has become 
                of the kingdom of Hyrule in this stunning Open-Air Adventure. Now on Nintendo Switch, your journey is freer and more open than ever. 
                Take your system anywhere, and adventure as Link any way you like.</p1>
            <br></br>
            <a href="#" class="close">&times;</a>
            <div class="content">
                <div class="container">
                    <form id="myForm" onsubmit="myFunction(document.getElementById('emailzelda').value, document.getElementById('quantityzelda').value, document.getElementById('productNamezelda').innerHTML, document.getElementById('firstNamezelda').value, document.getElementById('lastNamezelda').value, document.getElementById('shippingAddresszelda').value, document.getElementById('zipcodezelda').value)">
                        </id>
                        <label>Quantity</label>
                        <input type="number" id ="quantityzelda" min = "1" max = "10" placeholder="Min = 1 Max = 10" required>
                        <label>First Name</label>
                        <input type="text" id = "firstNamezelda" placeholder = "Your First Name" required>
                        <label>Last Name</label>
                        <input type="text" id = "lastNamezelda" placeholder = "Your Last Name" required>
                        <label>Phone Number</label>
                        <input type="tel" placeholder = "Phone Number" required>
                        <label>Shipping Address</label>
                        <input type="text" id = "shippingAddresszelda" placeholder = "Address" required>
                        <label>Zip Code</label>
                        <input type="text" placeholder = "Zip Code" id = "zipcodezelda" required>
                        <label>E-Mail Address</label>
                        <input type="email" id = "emailzelda" placeholder = "Email Address" required>
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