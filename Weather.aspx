<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Weather.aspx.cs" Inherits="BuildingInspection.Weather1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top:10%">
    <%--<a class="weatherwidget-io" href="https://forecast7.com/en/3d16101d71/federal-territory-of-kuala-lumpur/" data-label_1="WILAYAH PERSEKUTUAN KUALA LUMPUR" data-label_2="WEATHER" data-theme="weather_one" >WILAYAH PERSEKUTUAN KUALA LUMPUR WEATHER</a>
    <script>
        !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src='https://weatherwidget.io/js/widget.min.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','weatherwidget-io-js');
    </script>
    

    <a class="weatherwidget-io" href="https://forecast7.com/en/1d85102d93/batu-pahat/" data-label_1="BATU PAHAT" data-label_2="WEATHER" data-theme="weather_one" >BATU PAHAT WEATHER</a>
    <script>
        !function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = 'https://weatherwidget.io/js/widget.min.js'; fjs.parentNode.insertBefore(js, fjs); } }(document, 'script', 'weatherwidget-io-js');
    </script>--%>

    
    <%--<!-- Start WX Widget Code --><div style="color: #455052; width: 100%; border: 1px solid #428bca; background-image: radial-gradient(circle, #fff, #f5faff, #e5efff);"><script src="https://www.weatherwx.com/weather-js/my/kuala+lumpur.js"></script></div><!-- End WX Widget Code -->
    <!-- Start WX Widget Code --><div style="color: #455052; width: 100%; border: 1px solid #428bca; background-image: radial-gradient(circle, #fff, #f5faff, #e5efff);"><script src="https://www.weatherwx.com/weather-js/my/kuala+lumpur.js"></script></div><!-- End WX Widget Code -->

    <!-- Start WX Widget Code --><a href="https://www.weatherwx.com/forecasts/my/johor+bahru.html" target="_blank"><img src="https://www.weatherwx.com/fetch-images.php?forecast=zandh&place=johor+bahru&state=&country=my&config=png&alt=hwivvvzonecurmedmet&hwvbg=transparent&hwvtc=black" border="0" alt="Click for the latest Johor Bahru weather forecast."></a><!-- End WX Widget Code -->
    <!-- Start WX Widget Code --><a href="https://www.weatherwx.com/forecasts/my/kuala+lumpur.html" target="_blank"><img src="https://www.weatherwx.com/fetch-images.php?forecast=zandh&place=kuala+lumpur&state=&country=my&config=png&alt=hwivvvzonecurmedmet&hwvbg=transparent&hwvtc=black" border="0" alt="Click for the latest Kuala Lumpur weather forecast."></a><!-- End WX Widget Code -->

    <!-- Start WX Widget Code --><div style="color: #455052; max-width: 250px; width: 100%; border: 1px solid #428bca; background-image: radial-gradient(circle, #fff, #f5faff, #e5efff);"><script src="https://www.weatherwx.com/weather-js-vert/my/johor+bahru.js"></script></div><!-- End WX Widget Code -->
    <!-- Start WX Widget Code --><div style="color: #455052; max-width: 250px; width: 100%; border: 1px solid #428bca; background-image: radial-gradient(circle, #fff, #f5faff, #e5efff);"><script src="https://www.weatherwx.com/weather-js-vert/my/kuala+lumpur.js"></script></div><!-- End WX Widget Code -->--%>

    <select runat="server" id="regionSelector">
      <option value="">Select region to use Google Maps:</option>
      <option value="bayan+lepas.js">Bayan Lepas</option>
      <option value="bintulu.js">Bintulu</option>
      <option value="ipoh.js">Ipoh</option>
      <option value="johor+bahru.js">Johor Bahru</option>
      <option value="kampung+baru+subang.js">Kampung Baru Subang</option>
      <option value="klang.js">Klang</option>
      <option value="kota+bharu.js">Kota Bharu</option>
      <option value="kota+kinabalu.js">Kota Kinabalu</option>
      <option value="kuala+lumpur.js">Kuala Lumpur</option>
      <option value="kuantan.js">Kuantan</option>
      <option value="kuching.js">Kuching</option>
      <option value="kudat.js">Kudat</option>
      <option value="labuan.js">Labuan</option>
      <option value="langkawi.js">Langkawi</option>
      <option value="malacca.js">Malacca</option>
      <option value="miri.js">Miri</option>
      <option value="penang.js">Penang</option>
      <option value="petaling+jaya.js">Petaling Jaya</option>
      <option value="sandakan.js">Sandakan</option>
      <option value="senai.js">Senai</option>
      <option value="shah+alam.js">Shah Alam</option>
      <option value="sibu.js">Sibu</option>
      <option value="sitiawan.js">Sitiawan</option>
      <option value="tawau.js">Tawau</option>

    </select>

    <asp:Button ID="btnChangeRegion" runat="server" Text="Select" OnClick="btnChangeRegion_Click"/>

    <!-- Start WX Widget Code --><div style="color: #455052; width: 100%; border: 1px solid #428bca; background-image: radial-gradient(circle, #fff, #f5faff, #e5efff);"><script type="text/javascript" id="weather1" language="JavaScript" src="<%=MySrc() %>"></script></div><!-- End WX Widget Code -->
<%--    <!-- Start WX Widget Code --><div style="color: #455052; max-width: 400px; width: 100%; border: 1px solid #428bca; background-image: radial-gradient(circle, #fff, #f5faff, #e5efff);"><script src="https://www.weatherwx.com/weather-js/my/kuala+lumpur.js"></script></div><!-- End WX Widget Code -->--%>
    </div>
</asp:Content>
