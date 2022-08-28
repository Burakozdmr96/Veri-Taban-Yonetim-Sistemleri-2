<%@ Page Title="" Language="C#" MasterPageFile="~/tema.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Masra_Group.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <div class="container" <% if(Session["Language"].ToString()=="AR"){ %> dir="rtl"<% } %>>
    <%--<div class="about-us__main">--%>
      <div class="row">


             <div class="col-md-6"  <% if(Session["Language"].ToString()=="AR"){ %> dir="rtl"<% } %>>
                 <br />   
               <h1 class="about-us__title"><%=Masra_Group.Language.getText("إهتماماتنا") %></h1>
            <p >
             <%=Masra_Group.Language.getText(" مجموعة المسرى تعتني بخياراتك واهتماماتك المتعددة كشريك دائم لنا عبر فريقها المتخصص، إن كنت تبحث عن عقارات أو ترغب بالاستثمار أو تهتم بالسياحة بكافة أنواعها، فإن المسرى تقدم لك العديد من الفرص الجذابة، والاستشارات الدقيقة، بتنوع مميز يشمل القيمة التنافسية والجودة العالية بما يتناسب مع طلبك") %>

         </p>
            </div>
            <main class="col-md-6 col-md-main">
             <br>
   
    
            <!-- .about-us__img -->
          <h1 class="about-us__title  "><%=Masra_Group.Language.getText("من نحن:") %></h1>
         <p>
             <%=Masra_Group.Language.getText("مجموعة استثمارية مركزها اسطنبول/ تركيا ، تضم عدة شركات متخصصة في العقارات والمشاريع الاستثمارية والسياحة، تقدم خدمات عالية الجودة لشركائنا المحتملين واستشارات استثمارية في تركيا ضمن فريق من الخبراء المبدعين للمساعدة في الاختيار الأفضل والاستثمار الأنفع.") %>
         </p>
          
            </main><!-- .col -->
                       


        </div>


      </div><!-- .row -->
    </div><!-- .about-us__main -->
        </div>
    <div class="container">
        <div class="row">
            
       
        <div class="col-md-6  wow fadeIn"  data-wow-duration="2s" data-wow-delay="0.9s">
            <br />
            <br />
            <iframe src="<%=tblmap.Rows[0]["Map"] %>"" height="350px"  width="100%"  frameborder="0" style="border:0" allowfullscreen></iframe>
 </div>  
            
                 <div class="property__feature col-md-6"  <% if(Session["Language"].ToString()=="AR"){ %> dir="rtl"<% } %> >
      
    <br>
                     <h3 class="property__feature-title property__feature-title--b-spacing"><%=Masra_Group.Language.getText("We would like to contact you to discover your request") %></h3>
              <form class="property__form" >
                <div class="row">
                 
               
                      <div class="col-sm-6 wow fadeIn"  data-wow-duration="2s" data-wow-delay="0.9s">
                    <div class="property__form-wrapper">
                        <label for="Email"><%=Masra_Group.Language.getText("Email :") %></label>
                        <asp:TextBox name="Email" ID="Email" runat="server" class="property__form-field"     required />
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
                      <asp:Label ID="sucses" runat="server" />
                  </div><!-- .col -->
                </div><!-- .row -->
              </form>
            </div><!-- .property__feature -->
            
   
    
                </div>
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="css1/wow.min.js"></script>
              <script>
              new WOW().init();
              </script>
     
</asp:Content>
