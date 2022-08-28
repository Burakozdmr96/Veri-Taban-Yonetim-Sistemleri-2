<%@ Page Title="" Language="C#" MasterPageFile="~/tema.Master" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="Masra_Group.detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />



    
<div id="myModal" class="modal">
  <!-- Modal content -->

    <div class="revicon-popup">
       
  <div class="modal-content animated fadeIn">
    <span class="close">&times;</span>
        <div class=""  <% if(Session["Language"].ToString()=="AR"){ %> dir="rtl"<% } %> >
              <h3 class="property__feature-title property__feature-title--b-spacing"><%=Masra_Group.Language.getText("We would like to contact you to discover your request") %></h3>
              <form class="property__form  col-sm-6">
                <div class="row">
                 
               
                      <div class="col-sm-6">
                    <div class="property__form-wrapper">
                        <label for="Email"><%=Masra_Group.Language.getText("Email :") %></label>
                        <asp:TextBox name="Email" ID="Email1" runat="server" class="property__form-field"     required />
                    </div><!-- .property__form-wrapper -->
                  </div><!-- col -->
                    <div class="col-sm-6">
                      <label for="name"><%=Masra_Group.Language.getText("Name :") %></label>
                             <asp:TextBox runat="server" ID="Name1" name="name" class="property__form-field" placeholder="" required />
                    </div>
                    <!-- col -->
                  <div class="col-sm-6">
                        <label for="Phone"><%=Masra_Group.Language.getText("Telephone number:") %></label>
                        <asp:TextBox runat="server" name="Phone1" ID="Phone1" class="property__form-field"  required />
                 
                      </div><!-- col -->
                  <div class="col-sm-6">
                        <label for="Country"><%=Masra_Group.Language.getText("Country") %></label>
                      <asp:TextBox runat="server" ID="Country1"  name="Country" class="property__form-field" required/>
                   </div><!-- col -->
                   <div class="col-sm-12">
                        <label for="Time"><%=Masra_Group.Language.getText("Convenience time to call you:") %></label>
                      <asp:TextBox runat="server" ID="Time1"  name="Time" class="property__form-field" required/>
                   </div>
                    <div class="col-sm-12">
                        <label for="messege"><%=Masra_Group.Language.getText("Type of service requested:  ") %></label>
                      <asp:TextBox  runat="server" ID="Messege1" TextMode="MultiLine"  name="messege" class="property__form-field"  required/>
                   </div><!-- col -->
                  <div class="col-sm-12">
                      <asp:Button  Text="Submit" class="property__form-submit"  OnClick="Submit1" runat="server" />
                      <asp:Label ID="Sucss11" BorderStyle="Double" runat="server" />
                  </div><!-- .col -->
                </div><!-- .row -->
              </form>
            </div>
  </div>
  </div>
  
</div>


  


<section class="property">
  <div class="container">
    <ul class="ht-breadcrumbs ht-breadcrumbs--y-padding ht-breadcrumbs--b-border">
   </ul><!-- ht-breadcrumb -->
  </div><!-- .container -->

   
  <div class="property__slider">
    <div class="container">
      <div class="property__slider-container property__slider-container--vertical">
        <ul class="property__slider-nav property__slider-nav--vertical">
              <%for (int i = 0; i < tblgetImages.Rows.Count; i++)
           {%>
            <li class="property__slider-item">
            <img src="<%=tblgetImages.Rows[i]["Image"] %>" width="100%"  height="400px" alt="Image 1">
          </li>
            <%} %>
        </ul><!-- .property__slider-nav -->

        <div class="property__slider-main property__slider-main--vertical">
          <div class="property__slider-images">
       <%for (int i = 0; i < tblgetImages.Rows.Count; i++)
           {%>       
              <div class="property__slider-image">
                   <div class="My_Image"> 
              <img src="<%=tblgetImages.Rows[i]["Image"] %>" class="myimage2" alt="Image 1">
    
                       </div></div><!-- .property__slider-image -->
              <%} %>
          </div><!-- .property__slider-images -->

          <ul class="image-navigation">
            <li class="image-navigation__prev">
              <span class="ion-ios-arrow-left"></span>
            </li>
            <li class="image-navigation__next">
              <span class="ion-ios-arrow-right"></span>
            </li>
          </ul>

          <span class="property__slider-info"><i class="ion-android-camera"></i><span class="sliderInfo"></span></span>
        </div><!-- .property__slider-main -->
      </div><!-- .property__slider-container -->
    </div><!-- .container -->
  </div><!-- .property__slider -->
    <div class="property__container">
    <div class="container"  <% if(Session["Language"].ToString()=="AR"){ %> dir="rtl"<% } %> >
      <div class="row" >
     
        
        <main class="col-md-9">
          <div class="property__feature-container">

            <div class="property__feature" <% if(Session["Language"].ToString()=="AR"){ %> dir="rtl"<% } %>  >
              <h3 class="property__feature-title property__feature-title--b-spacing"><%=Masra_Group.Language.getText(tblgetproduct.Rows[0]["Title"].ToString()) %></h3>
              <p><%=Masra_Group.Language.getText(tblgetproduct.Rows[0]["Description"].ToString()) %></p>

            </div><!-- .property__feature -->


            <div class="property__feature wow fadeIn"  data-wow-duration="2s" data-wow-delay="0.5s" <% if(Session["Language"].ToString()=="AR"){ %> dir="rtl"<% } %> >
              <h3 class="property__feature-title property__feature-title--b-spacing"><%=Masra_Group.Language.getText("We would like to contact you to discover your request") %></h3>
              <form class="property__form">
                <div class="row">
                 
               
                      <div class="col-sm-6">
                    <div class="property__form-wrapper">
                        <label for="Email"><%=Masra_Group.Language.getText("Email :") %></label>
                        <asp:TextBox name="Email" ID="Email" runat="server" class="property__form-field"   required />
                    </div><!-- .property__form-wrapper -->
                  </div><!-- col -->
                    <div class="col-sm-6">
                      <label for="name"><%=Masra_Group.Language.getText("Name :") %></label>
                             <asp:TextBox runat="server" ID="Name" name="name" class="property__form-field" placeholder="" required />
                    </div>
                    <!-- col -->
                  <div class="col-sm-6">
                        <label for="Phone"><%=Masra_Group.Language.getText("Telephone number:") %></label>
                        <asp:TextBox runat="server" name="Phone" ID="Phone" class="property__form-field"  required />
                 
                      </div><!-- col -->
                  <div class="col-sm-6">
                        <label for="Country"><%=Masra_Group.Language.getText("Country") %></label>
                      <asp:TextBox runat="server" ID="Country"  name="Country" class="property__form-field" required/>
                   </div><!-- col -->
                   <div class="col-sm-12">
                        <label for="Time"><%=Masra_Group.Language.getText("Convenience time to call you:") %></label>
                      <asp:TextBox runat="server" ID="Time"  name="Time" class="property__form-field" required/>
                   </div>
                    <div class="col-sm-12">
                        <label for="messege"><%=Masra_Group.Language.getText("Type of service requested:  ") %></label>
                      <asp:TextBox  runat="server" ID="Messege" TextMode="MultiLine"  name="messege" class="property__form-field"  required/>
                   </div><!-- col -->
                  <div class="col-sm-12">
                      <asp:Button  Text="Submit" class="property__form-submit"  OnClick="Submit" runat="server" />
                      <asp:Label ID="Sucss" BorderStyle="Double" runat="server" />
                  </div><!-- .col -->
                </div><!-- .row -->
              </form>
            </div>
              <!-- .property__feature -->
          </div>
            <!-- .property__feature-container -->
        </main>



             <aside class="col-md-3">
          <div class="widget__container">
           
            <section class="widget widget--white widget--padding-20">
              <h3 class="widget__title"><%=Masra_Group.Language.getText("Similar Posts") %></h3>
               <%=tblgetsimilirproduct=Masra_Group.Functions.GetProductsBYCID(tblgetproduct.Rows[0]["CategoryID"].ToString())  %>
            <%for (int i = 0; i < tblgetsimilirproduct.Rows.Count; i++)
                {

                 %>
                <div class="similar-home">
                <a href="detail.aspx?id=<%=tblgetsimilirproduct.Rows[i]["ID"] %>">
                  <div class="similar-home__image">
                    <div class="similar-home__overlay"></div><!-- .similar-home__overlay -->
                    <img src="<%=tblgetsimilirproduct.Rows[i]["Image"] %>" alt="Residia Nishi Azabu">
                  </div><!-- .similar-home__image -->
                  <div class="similar-home__content">
                    <h3 class="similar-home__title"><%= Masra_Group.Language.getText(tblgetsimilirproduct.Rows[i]["Title"].ToString()) %></h3>
                  </div><!-- .similar-home__content -->
                </a>
              </div><!-- .similar-home -->
                <%} %>
            
            </section><!-- .widget -->


          </div><!-- .widget__container -->
        </aside>
      </div><!-- .row -->
    </div><!-- .container -->
  </div><!-- .property__container -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="css1/wow.min.js"></script>
              <script>
              new WOW().init();
              </script>
<!-- JS Files -->
<script>
// Get the modal
    var modal = document.getElementById('myModal');
    $("#myModal").slideUp( 300 ).delay( 800 ).fadeIn( 400 );
    // Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 


// When the user clicks on <span> (x), close the modal
span.onclick = function() {
     $("#myModal").fadeOut('1000');
    modal.style.display = "none";
   
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
         $("#myModal").fadeOut('1000');
        modal.style.display = "none";
       
    }
}
</script>

</asp:Content>
