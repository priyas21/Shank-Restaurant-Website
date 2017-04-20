<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="global">
    <div class="container">
        <div class="row">
            <article class="col-lg-12 col-md-12 col-sm-12">
                <h2>Special Today</h2>
                <div class="list_carousel1 responsive clearfix">
                    <ul id="foo1">
                        <li>
                            <figure><img src="img/page1_pic1.jpg" alt=""></figure>
                            <div>
                               <a href="#" class="title">(MONDAY)</a><br />
                                <a href="#" class="title">Mango Shake</a>
                                <p>Mango shake is a luscious and refreshing beverage which is made with sweet ripe mangoes blended with little sugar and milk.</p>
                                <a href="#" class="price" >Rs 80</a>
                            </div>
                        </li>
                        <li>
                            <figure><img src="img/page1_pic2.jpg" alt="" height="163px"></figure>
                            <div>
                            <a href="#" class="title">(Tuesday)</a><br />
                                <a href="#" class="title">Capsicum Onion Pizza</a>
                                <p>Onion Capsicum Pizza with ingredients Cheese + Onion + Capsicum and sizes are Personal (6”) Medium (8”) & Large (10”).</p>
                                <a href="#" class="price">Rs 160</a>
                            </div>
                        </li>
                        <li>
                            <figure><img src="img/page1_pic3.jpg" alt=""></figure>
                            <div>
                            <a href="#" class="title">(Wednesday)</a><br />
                                <a href="#" class="title">Golden Fried Wonton</a>
                                <p>Wanton with ingredients Dough, eggs, water, salt,ground pork, spices is made by placing small amount in center, and sealing into  desired shape.</p>
                                <a href="#" class="price">Rs 175</a>
                            </div>
                        </li>
                        <li>
                            <figure><img src="img/page1_pic4.jpg" alt="" height="163px"> </figure>
                            <div>
                            <a href="#" class="title">(Thursday)</a><br />
                                <a href="#" class="title">Veg Steak Sizzler</a>
                                <p>Ingredients :Carrot,Potato,Cauliflower florets,Capsicum, Medium Onions,Tomatoes, Pineapple, Apple,green Coriander .</p>
                                <a href="#" class="price">Rs 350</a>
                            </div>
                        </li>
                        <li>
                            <figure><img src="img/page1_pic5.jpg" alt="" height="177px"></figure>
                            <div>
                            <a href="#" class="title">(Friday)</a><br />
                                <a href="#" class="title">Twin Pasta</a>
                                <p>Pasta is a staple food of traditional Italian cuisine.It is also commonly used to refer to the variety of pasta dishes.</p>
                                <a href="#" class="price">Rs 300</a>
                            </div>
                        </li>
                        <li>
                            <figure><img src="img/page1_pic6.jpg" alt="" height="173px"></figure>
                            <div>
                            <a href="#" class="title">(Saturday)</a><br />
                                <a href="#" class="title">Paneer Tikka</a>
                                <p>Paneer tikka is an Indian dish made from chunks of paneer marinated in spices and grilled in a tandoor.</p>
                                <a href="#" class="price">Rs 195</a>
                            </div>
                        </li>
                        <li>
                            <figure><img src="img/page1_pic7.jpg" alt="" height="153px"></figure>
                            <div>
                            <a href="#" class="title">(Sunday)</a><br />
                                <a href="#" class="title">Stuffed Kulcha</a>
                                <p>Kulcha is a north indian stuffed kulcha recipe. The leavened called kulchas are stuffed with potatoes and vegetables,served with channa or pickle.</p>
                                <a href="#" class="price">Rs 75</a>
                            </div>
                        </li>
                    </ul>
                    <a id="prev" class="prev" href="#"></a>
                    <a id="next" class="next" href="#"></a>
                </div>
            </article>
            <article class="col-lg-12 col-md-12 col-sm-12 welcomeBox">
                <div>
                    <div class="row">
                        <article class="col-lg-4 col-md-4 col-sm-4 welcome-box maxheight">
                            <h2>Welcome to our Restaurant!</h2>
                            <div class="thumb-pad1">
                                <div class="thumbnail">
                                    <figure><img src="img/shankinside.jpg" alt=""></figure>
                                    <div class="caption">
                                        <h2>Clean & Sanctified Multi-Cuisine Vegetarian Restaurant</h2>
                                        <p>A Multi-Cuisine Vegetarian Restaurant and the only one in the holy city of Amritsar to serve a 150 items on the Menu totally without any use of Onion & Garlic. And also a ultra clean environment with a superb comfortable ambience for a nice dining experience.</p>
 
                                    </div>
                                </div>
                            </div>
                        </article>
                        <article class="col-lg-3 col-md-3 col-sm-4 col-lg-offset-1 col-md-offset-1 events-box maxheight">
                            <h2>Events calendar</h2>
                            <ul class="list1">
                                <li>
                                    <time datetime="2013-01-01">June/01/2012</time>
                                    <h2>New Range Of Photo Cakes</h2>
                                    <p>Dear patrons & guests - Shankh Restaurant is happy to introduce one of its kind - a new range of photo cakes available in 2 fresh flavours & several different shapes for an experience of eating an edible photo exclusively spread & decorated on a cake of your choice. Thank you & hope to feed you a photo of your choice.</p>
                                </li>
                                <li>
                                    <time datetime="2013-01-01">May/7/2012</time>
                                    <h2>New Range Of Burgers & Sizzlers</h2>
                                    
                                    <p>Dear patrons & valuable guests - Shankh Restaurant is happy to introduce yet a New range of dishes including Burgers & Sizzlers for your delectable palate. Please make sure you don't miss this opportunity of dining with us, in one of the cleanest & comforting ambience offered in the holy city of Amritsar. Waiting to see you'll soon at Shankh Restaurant.</p>
                                </li>
                            </ul>
                            
                        </article>
                        <article class="col-lg-3 col-md-3 col-sm-4 col-lg-offset-1 col-md-offset-1 favorites-box">
                            <h2>Our Special Cakes</h2>
                            
                            <ul class="list2">
                                <li>
                                    <figure><img src="img/page1_pic8.jpg" alt=""></figure>
                                    <div class="extra-wrap">
                                        <h2>VaNiLlA CaKe.</h2>
                                    </div>
                                </li>
                                <li>
                                    <figure><img src="img/page1_pic9.jpg" alt=""></figure>
                                    <div class="extra-wrap">
                                        <h2>DaRk ChOcOlAtE CaKe</h2>
                                    </div>
                                </li>
                                <li>
                                    <figure><img src="img/page1_pic10.jpg" alt=""></figure>
                                    <div class="extra-wrap">
                                        <h2>ChOcO VaNiLla CaKe</h2>
                                    </div>
                                </li>
                            </ul>
                           
                        </article>
                    </div>
                </div>
            </article>
        </div>
    </div>
</div>
</asp:Content>

