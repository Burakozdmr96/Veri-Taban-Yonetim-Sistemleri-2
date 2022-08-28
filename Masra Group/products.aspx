<%@ Page Title="" Language="C#" MasterPageFile="~/tema.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="Masra_Group.products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <br/>
    <br/>
    <br/>
    <br/>
<section class="main-listing" dir="rtl">


  <section class="main-listing__grid">
    <div class="container">
      <div class="row">
          <% for (int i = 0; i < tblgetproducts.Rows.Count; i++)
{

 %>
        <div class="col-md-4 item-grid__container wow fadeIn"   data-wow-duration="2s" data-wow-delay="0.<%=i+3%>s"  <%if(Session["Language"].ToString()=="AR"){ %> style="float:right"<% } %>  >
          <div class="listing">
            <div class="item-grid__image-container">
                  <div style="height:300px;">
              <a href="detail.aspx?id=<%=tblgetproducts.Rows[i]["ID"] %>">
                <div class="item-grid__image-overlay"></div><!-- .item-grid__image-overlay -->

                <img  style=" border-radius:12px;" src="<%=tblgetproducts.Rows[i]["Image"] %>"  alt="NO pic" class="listing__img">
         
              </a>
            </div>

            </div><!-- .item-grid__image-container -->

            <div class="item-grid__content-container">
              <div class="listing__content">
                <h3 class="listing__title"><a href="single_property_1.html"><%=Masra_Group.Language.getText(tblgetproducts.Rows[i]["Title"].ToString()) %></a></h3> 
                <div class="listing__details">
            
                    <a href="detail.aspx?id=<%=tblgetproducts.Rows[i]["ID"] %>" class="listing__btn"><%=Masra_Group.Language.getText("Details") %> </a>
                </div><!-- .listing__details -->
              </div><!-- .listing-content -->
            </div><!-- .item-grid__content-container -->
          </div><!-- .listing -->
        </div><!-- .col -->
<%} %>    
    
    </div><!-- .container -->
  </section><!-- .item-grid-3 -->
</section><!-- .main-listing -->
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="css1/wow.min.js"></script>
              <script>
              new WOW().init();
              </script>
</asp:Content>
