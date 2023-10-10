<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="RLL.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <main>
       <style>

   

 
    /* Styling for the main content */
    main {
        background-image: url('https://thumbs.dreamstime.com/z/ready-summer-vacation-travel-background-d-rendering-114574299.jpg?w=2048');
        background-size: cover;
        background-repeat: no-repeat;
        padding: 20px;
        color: #fff;
    }

    /* Styling for the "About" section */
    .about-section {
        padding: 40px; /* Add padding to the "About" section */
        /* Semi-transparent background for the "About" section */
        border-radius: 10px; /* Add rounded corners */
        margin-bottom: 20px; /* Add margin below the "About" section */
        
    }

    /* Styling for the "About" section title */
  
    .about-section h1 {
    color: purple;
}
        .about-section p {
    color: black ;
    font-weight: bold;
}


    /* Styling for the lead text in the "About" section */
    .about-section .lead {
        font-size: 1.25rem; /* Adjust the lead text font size */
        margin-top: 10px; /* Add margin above the lead text */
    }

    /* Styling for the cards */
    .card {
        background-color: rgba(0, 0, 0, 0.7);
        border: none;
        margin-bottom: 20px;
        color: aliceblue;
    }

    /* Styling for card headings */
    .card h2 {
        font-size: 1.5rem;
        margin-top: 10px;
    }

    /* Styling for card paragraphs */
    .card p {
        font-size: 1rem;
    }

    /* Styling for the lead text */
    .lead {
        font-size: 1.25rem;
    }
</style>


   <section class="row about-section" aria-labelledby="aspnetTitle">
    <h1 id="aspnetTitle"><strong>About Us</strong></h1>
    <p class="lead">My Travel application which allows users to refer , where to travel different tourist places located in different states , check out the restaurants , go through what are the famous dishes available there &amp; give feeback or ratings about it.</p>
    <p>&nbsp;</p>
</section>

    <div class="row">
        <section class="col-md-4" aria-labelledby="gettingStartedTitle">
            <div class="card">
                <div class="card-body">
                    <h2 id="gettingStartedTitle">Description</h2>
                    <p>
                       Imagine a world where every trip is a story waiting to be told, where every destination is a new chapter in your adventure. That's what iMyTravel is all about. We're here to turn your wanderlust dreams into reality.
                    </p>
                </div>
            </div>
        </section>
        <section class="col-md-4" aria-labelledby="librariesTitle">
            <div class="card">
                <div class="card-body">
                    <h2 id="Our Mission">Our Mission</h2>
                    <p>
                            
              At iMyTravel, our mission is simple yet profound, to inspire and empower travelers like you to discover, connect, and create lasting memories. We believe that travel is not just about going places, it's about experiencing the world with all your senses and forging connections with people and culture.
            </p>
                </div>
            </div>
        </section>
        <section class="col-md-4" aria-labelledby="hostingTitle">
            <div class="card">
                <div class="card-body">
                    <h2 id="hostingTitle">Contact Information</h2>
                    <p>
                        Consider including a contact form on your webpage. This form should collect essential information like the user's name, email address, subject of inquiry, and a message. Make sure it's user-friendly and visually appealing.
                    </p>
                </div>
            </div>
        </section>
        <section class="col-md-4" aria-labelledby="OurMission">
    <div class="card">
        <div class="card-body">
            <h2 id="OurMission">Regular Updates</h2>
            <p>
                Keep your contact information up to date. If there are changes in contact details or operating hours, update the webpage promptly.
            </p>
        </div>
    </div>
</section>
        <section class="col-md-4" aria-labelledby="OurPromise">
    <div class="card">
        <div class="card-body">
            <h2 id="OurPromise">Our Promise</h2>
            <p>
               When you choose iMyTravel, you're choosing a world of discovery, adventure, and connection. Whether you're a seasoned globetrotter or a first-time traveler, we're here to make every trip an extraordinary one.

So, where will your next adventure take you? Explore the world with iMyTravel, and let's make unforgettable memories together
            </p>
            <br>
            
        </div>
    </div>
</section>
        
       
    </div>
</main>
    
</asp:Content>

