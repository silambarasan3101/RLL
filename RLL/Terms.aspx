<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Terms.aspx.cs" Inherits="RLL.Terms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <main>
       <style>

    /* Styling for the main content */
    main {
        background-image: url('https://media.self.com/photos/5f0885ffef7a10ffa6640daa/4:3/w_1920,c_limit/travel_plane_corona.jpeg');
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
    <h1 id="aspnetTitle"><strong>Terms & Conditions</strong></h1>
    <p class="lead">Welcome to My Travel application. By accessing or using this Website, you agree to comply with and be bound by the following terms and conditions . Please read these Terms carefully before using the Website.</p>
    <p>&nbsp;</p>
</section>

    <div class="row">
        <section class="col-md-4" aria-labelledby="acceptanceofterms">
            <div class="card">
                <div class="card-body">
                    <h2 id="acceptanceofterms">Acceptance of Terms</h2>
                    <p>
                       By using this application , you express your consent and understanding of the terms of this application, and you agree to be bound by the terms of our application.
                    </p>
                </div>
            </div>
        </section>
        <section class="col-md-4" aria-labelledby="ChangestoTerms">
            <div class="card">
                <div class="card-body">
                    <h2 id="ChangestoTerms">Changes to Terms</h2>
                    <p>
                            
             We reserve the right to modify these Terms at any time. Any changes will be effective immediately upon posting on this page. Your continued use of the Website after changes are made will constitute your acceptance of those changes.

            </p>
                </div>
            </div>
        </section>
        <section class="col-md-4" aria-labelledby="PrivacyPolicy">
            <div class="card">
                <div class="card-body">
                    <h2 id="PrivacyPolicy">Privacy Policy</h2>
                    <p>
                       Your use of the Website is also governed by our Privacy Policy, which can be found here. Please review the Privacy Policy to understand how we collect, use, and protect your personal information.
                    </p>
                </div>
            </div>
        </section>
        <section class="col-md-4" aria-labelledby="TravelInformation">
    <div class="card">
        <div class="card-body">
            <h2 id="TravelInformation">Travel Information</h2>
            <p>
                The information provided on this Website is for general informational purposes only. We do not guarantee the accuracy, completeness, or timeliness of any information. You are responsible for verifying all travel-related information and making your own travel arrangements.
            </p>
        </div>
    </div>
</section>
        <section class="col-md-4" aria-labelledby="UserConduct">
    <div class="card">
        <div class="card-body">
            <h2 id="UserConduct">User Conduct</h2>
            <p>
               You agree not to use the Website for any unlawful or prohibited purpose.
You shall not interfere with the operation of the Website, including but not limited to hacking, transmitting viruses, or engaging in any activity that may disrupt or damage the Website.
            </p>
            <br>
            
        </div>
    </div>
</section>
                <section class="col-md-4" aria-labelledby="LimitationofLiability">
    <div class="card">
        <div class="card-body">
            <h2 id="LimitationofLiability">Limitation of Liability</h2>
            <p>
               We shall not be liable for any direct, indirect, incidental, consequential, or punitive damages arising out of your use or inability to use the Website. This includes, but is not limited to, any errors, omissions, viruses, or unauthorized access.
            </p>
            <br>
            
        </div>
    </div>
</section>
       
    </div>
</main>
    

</asp:Content>
