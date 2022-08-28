<%@ Page Title="" Language="C#" MasterPageFile="~/tema.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Masra_Group._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<section class="main-slider" >
	<div id="rev_slider_4_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-alias="realand-slider-3" data-source="gallery" style="margin:0px auto;background:transparent;padding:0px;margin-top:0px;margin-bottom:0px;">
    <!-- START REVOLUTION SLIDER 5.4.6 fullwidth mode -->
    <div id="rev_slider_4_1" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.4.6">
      <ul>
          <%for (int i = 0; i < tblgetslider.Rows.Count; i++)
              {
               %>
        <!-- SLIDE  -->
        <li data-index="rs-<%=i+1 %>" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300" data-thumb="<%=tblgetslider.Rows[i]["Image"] %>" data-rotate="0" data-saveperformance="off" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
          <!-- MAIN IMAGE -->
          <img src="<%= tblgetslider.Rows[i]["Image"] %>"" alt="" title="Main Slider 3-1" width="1920" height="780" data-lazyload="<%= tblgetslider.Rows[i]["Image"] %>"" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>

            <!-- LAYER NR. 9 -->
          <div class="tp-caption     rev_group"  id="slide-14-layer-1" data-x="['left','left','center','center']" data-hoffset="['275','275','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['-1','-1','-1','-1']" data-width="['470','470','397','362']" data-height="['190','190','154','132']" data-whitespace="nowrap" data-type="group" data-responsive_offset="on" data-frames='[{"delay":500,"speed":1500,"sfxcolor":"#ffffff","sfx_effect":"blockfromleft","frame":"0","from":"z:0;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]' data-margintop="[0,0,0,0]" data-marginright="[0,0,0,0]" data-marginbottom="[0,0,0,0]" data-marginleft="[0,0,0,0]" data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 5; min-width: 470px; max-width: 470px; max-width: 190px; max-width: 190px; white-space: nowrap; font-size: 20px; line-height: 22px; font-weight: 400; color: #ffffff; letter-spacing: 0px;background-color:rgba(255,255,255,0.95);">
            <!-- LAYER NR. 10 -->
  
            <!-- LAYER NR. 11 -->
            <a class="tp-caption   tp-resizeme" href="<%=tblgetslider.Rows[i]["URL"] %>" target="_self" id="slide-14-layer-3" data-x="['left','left','left','left']" data-hoffset="['30','30','30','20']" data-y="['top','top','top','top']" data-voffset="['60','60','60','45']" data-fontsize="['30','30','24','24']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-actions='' data-responsive_offset="on" data-frames='[{"delay":"+0","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]' data-margintop="[0,0,0,0]" data-marginright="[0,0,0,0]" data-marginbottom="[0,0,0,0]" data-marginleft="[0,0,0,0]" data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 7; white-space: nowrap; font-size: 30px; line-height: 22px; font-weight: 800; color: #333333; letter-spacing: 0px;font-family:Raleway;text-decoration: none;" <% if(Session["Language"].ToString()=="AR"){ %> dir="rtl"<% } %> ><%=Masra_Group.Language.getText(tblgetslider.Rows[i]["Title"].ToString()) %> </a>
  
            <!-- LAYER NR. 12 -->
            <span class="tp-caption   tp-resizeme" id="slide-14-layer-4" data-x="['left','left','left','left']" data-hoffset="['40','40','40','30']" data-y="['top','top','top','top']" data-voffset="['95','95','90','75']" data-fontsize="['15','15','13','13']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-responsive_offset="on" data-frames='[{"delay":"+0","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]' data-margintop="[0,0,0,0]" data-marginright="[0,0,0,0]" data-marginbottom="[0,0,0,0]" data-marginleft="[0,0,0,0]" data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 8; white-space: nowrap; font-size: 15px; line-height: 22px; font-weight: 400; color: #888888; letter-spacing: 0px;font-family:Roboto;"  <% if(Session["Language"].ToString()=="AR"){ %> dir="rtl"<% } %> ><%= Masra_Group.Language.getText(tblgetslider.Rows[i]["Description"].ToString()) %> </span>
  
          </div>
  
          <!-- LAYER NR. 14 -->
          <div class="tp-caption     rev_group" id="slide-14-layer-5" data-x="['left','left','left','left']" data-hoffset="['305','305','215','80']" data-y="['top','top','top','top']" data-voffset="['450','450','375','290']" data-width="['230','230','189','189']" data-height="['70','70','64','64']" data-whitespace="nowrap" data-type="group" data-responsive_offset="on" data-frames='[{"delay":1800,"speed":800,"frame":"0","from":"z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]' data-margintop="[0,0,0,0]" data-marginright="[0,0,0,0]" data-marginbottom="[0,0,0,0]" data-marginleft="[0,0,0,0]" data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 10; min-width: 230px; max-width: 230px; max-width: 70px; max-width: 70px; white-space: nowrap; font-size: 20px; line-height: 22px; font-weight: 400; color: #ffffff; letter-spacing: 0px;background-color:rgb(31,195,65);border-radius:4px 4px 4px 4px;">
              <a href="<%=tblgetslider.Rows[i]["URL"] %>">
            <h4 class="tp-caption   tp-resizeme" id="slide-14-layer-7" data-x="['left','left','left','left']" data-hoffset="['30','30','25','25']" data-y="['top','top','top','top']" data-voffset="['32','32','30','30']" data-fontsize="['24','24','20','20']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-responsive_offset="on" data-frames='[{"delay":"+0","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]' data-margintop="[0,0,0,0]" data-marginright="[0,0,0,0]" data-marginbottom="[0,0,0,0]" data-marginleft="[0,0,0,0]" data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 12; white-space: nowrap; font-size: 24px; line-height: 22px; font-weight: 700; color: #ffffff; letter-spacing: 0px;font-family:Open Sans;"><%=Masra_Group.Language.getText("Details") %> </h4>
          </a></div>
        </li>

          <% } %>
  
      </ul>
      <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
    </div>
  </div>
  <!-- END REVOLUTION SLIDER -->



</section><!-- .main-slider -->
  


<section class="newsletter item-grid">
  <div class="container ">
    <div class="row">
      
      <!-- .col -->   
       <div class="col-md-6 newsletter__content newss"  dir="rtl"	>
        <div class="newsletter__text-content" style="padding-right:5px">
          <h2 class="newsletter__title"><%=Masra_Group.Language.getText("Newsletter") %></h2>
          <p class="newsletter__desc"  ><%=Masra_Group.Language.getText("اشترك  لتتمكن من متابعة اخر الاخبار") %></p>
        </div>
      </div><!-- .col -->

        <div class="col-md-6 newss">
        <div dir="rtl" class="newsletter__form " method="post">
            <asp:TextBox runat="server" ID="mymail" class="newsletter__field" type="Email"    placeholder="Enter Your E-mail"  />  
            <asp:Button OnClick="Sendmai" class="newsletter__submit" type="submit" Text="Subscribe"  runat="server" />
        </div>
      </div>
    </div><!-- .row -->
  </div><!-- .container -->
</section>





<section class="item-grid">
  <div class="container" <% if(Session["Language"].ToString()=="AR"){ %> dir="rtl"<% } %>>
    <div class="row">
        <div class="col-lg-12">
            <h3> <a class="btn-primary" > <%=Masra_Group.Language.getText("Recently added") %></a> </h3> 

        </div>
        <br />
        <br />
        <%for (int i = 0; i < tblposts?.Rows.Count; i++)
            {

             %>
      <div class="col-md-3 item-grid__container wow fadeIn"  data-wow-duration="2s" data-wow-delay="0.<%=i+3%>s"  >
        <div class="listing">
          <div class="item-grid__image-container">
            <div class="myimage">
              <a href="detail.aspx?id=<%=tblposts.Rows[i]["ID"] %>">
              <div class="item-grid__image-overlay"></div><!-- .item-grid__image-overlay -->
                
                <img src="<%=tblposts.Rows[i]["Image"]%>"  style=" border-radius:12px;" alt="No Pic" class="listing__img">
            
            </a>
              </div>
          </div><!-- .item-grid__image-container -->
          <div class="item-grid__content-container ">
            <div class="listing__content">
              <h4 class="listing__title" <% if(Session["Language"].ToString()=="AR"){ %> dir="rtl"<% } %> > <a href="single_property_1.html"><%= Masra_Group.Language.getText(tblposts.Rows[i]["Title"].ToString()) %></a></h4>
              <div class="listing__details">
                <ul class="listing__stats">
                <!-- .listing__stats -->
                <a href="detail.aspx?id=<%=tblposts.Rows[i]["ID"] %>" class="listing__btn"><%=Masra_Group.Language.getText("Details") %> <span class="listing__btn-icon"></span></a>
              </div><!-- .listing__details -->
            </div><!-- .listing-content -->
          </div>
        </div><!-- .listing -->
      </div><!-- .col -->
  <%} %>

    </div><!-- .row -->

   <div class="item-grid--centered" >
      <a href="products.aspx" class="item-grid__load-more"><%= Masra_Group.Language.getText("Load More") %></a>
    </div>
  </div><!-- .container -->
</section><!-- .item-grid-1 -->
    


<section class="new-listing">
    <div class="container">
              <div class="col-lg-12"  <% if(Session["Language"].ToString()=="AR"){ %> dir="rtl"<% } %> >
            <h3> <a class="btn-primary"  >
  <%=Masra_Group.Language.getText("الأقسام") %></a> </h3></div>
        <br />
     
        <div class="new-listing__header" <%if(Session["Language"].ToString()=="AR"){ %> dir="rtl"<% } %> >
      </div>
      <div class="new-listing__wrapper">
          <%for(int i = 0; i < tblgetCategory.Rows.Count; i++)
              { %>
        <div class="new-listing__single containerss ">
          <a href="products.aspx?cid=<%=tblgetCategory.Rows[i]["ID"]%>" >
            <div class="new-listing__bg image"  style="background-image: url('<%=tblgetCategory.Rows[i]["Image"]%>');"></div><!-- .new-listing__bg -->

            <div class="new-listing__content ">  <div class="overlay "></div>
              <h3 class="new-listing__title text "><%=Masra_Group.Language.getText(tblgetCategory.Rows[i]["Name"].ToString()) %></h3>
         
            </div><!-- .new-listing__content -->
          </a>
        </div><!-- .new-listing__single -->
          <% } %>
      </div><!-- .new-listing__wrapper -->
    </div><!-- .container -->
  </section><!-- .new-listing -->
            <!-- .popular-links -->





                <!-- .popular-links -->
<section class="partners">
     
   <div class="container">
      <center> <h3> <%= Masra_Group.Language.getText("our partners") %></h3></center>
    
       <br />
    
    <ul class="partners__list" <%if(Session["Language"].ToString()=="AR"){ %> dir="rtl"<% } %>>
       
        <%for (int i = 0; i < tblgetpartners.Rows.Count; i++)
            {

             %>
      <li><img src="<%=tblgetpartners.Rows[i]["Image"] %>" height="120px" width="50%" alt="Partner"></li>
  <%} %>
    </ul><!-- .partners__list -->
  </div><!-- .container -->
</section>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="css1/wow.min.js"></script>
              <script>
              new WOW().init();
              </script>
    
</asp:Content>
