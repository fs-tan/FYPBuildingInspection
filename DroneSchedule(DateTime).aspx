<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DroneSchedule(DateTime).aspx.cs" Inherits="BuildingInspection.DroneSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="margin-top: 30px; width: 80%; left:10%; position:absolute;">
        <tr>
            <td colspan="2">
                <div runat="server" style="margin-bottom:20px"> 
                    <label>City    :</label>
                    <asp:DropDownList ID="cityDDL" runat="server" CssClass="cityDDL"   >
                        <asp:ListItem>Kuala Lumpur</asp:ListItem>
                        <asp:ListItem>Jerantut</asp:ListItem>
                        <asp:ListItem>Maran</asp:ListItem>
                        <asp:ListItem>Batu Pahat</asp:ListItem>
                        <asp:ListItem>Parit Raja</asp:ListItem>
                        <asp:ListItem>Pekan Nenas</asp:ListItem>
                        <asp:ListItem>Pontian Kechil</asp:ListItem>
                        <asp:ListItem>Kampung Pasir Gudang Baru</asp:ListItem>
                        <asp:ListItem>Kota Tinggi</asp:ListItem> 
                        <asp:ListItem>Kampung Seelong</asp:ListItem>
                        <asp:ListItem>Taman Senai</asp:ListItem>
                        <asp:ListItem>Kulai</asp:ListItem>
                        <asp:ListItem>Skudai</asp:ListItem>
                        <asp:ListItem>Johor Bahru</asp:ListItem>
                        <asp:ListItem>Kluang</asp:ListItem>
                        <asp:ListItem>Yong Peng</asp:ListItem>
                        <asp:ListItem>Mersing</asp:ListItem>
                        <asp:ListItem>Segamat</asp:ListItem>
                        <asp:ListItem>Tangkak</asp:ListItem>
                        <asp:ListItem>Muar</asp:ListItem>
                        <asp:ListItem>Bakri</asp:ListItem>
                        <asp:ListItem>Labis</asp:ListItem>
                        <asp:ListItem>Chaah</asp:ListItem>
                        <asp:ListItem>Kuala Selangor</asp:ListItem>
                        <asp:ListItem>Batang Berjuntai</asp:ListItem> 
                        <asp:ListItem>Batu Arang</asp:ListItem>
                        <asp:ListItem>Shah Alam</asp:ListItem>
                        <asp:ListItem>Klang</asp:ListItem>
                        <asp:ListItem>Cukai</asp:ListItem>
                        <asp:ListItem>Kuala Lipis</asp:ListItem>
                        <asp:ListItem>Melaka</asp:ListItem>
                        <asp:ListItem>Terengganu</asp:ListItem>
                        <asp:ListItem>Selangor</asp:ListItem>
                        <asp:ListItem>Sarawak</asp:ListItem>
                        <asp:ListItem>Sabah</asp:ListItem>
                        <asp:ListItem>Perlis</asp:ListItem>
                        <asp:ListItem>Perak</asp:ListItem>
                        <asp:ListItem>Pahang</asp:ListItem>
                        <asp:ListItem>Negeri Sembilan</asp:ListItem>
                        <asp:ListItem>Kelantan</asp:ListItem>
                        <asp:ListItem>Malaysia</asp:ListItem> 
                        <asp:ListItem>Pulau Pinang</asp:ListItem>
                        <asp:ListItem>Kedah</asp:ListItem>
                        <asp:ListItem>Johor</asp:ListItem>
                        <asp:ListItem>Chaah</asp:ListItem>
                        <asp:ListItem>Papar</asp:ListItem>
                        <asp:ListItem>Kota Kinabalu</asp:ListItem>
                        <asp:ListItem>Donggongon</asp:ListItem>
                        <asp:ListItem>Putatan</asp:ListItem>
                        <asp:ListItem>Kinarut</asp:ListItem>
                        <asp:ListItem>Ranau</asp:ListItem>
                        <asp:ListItem>Semporna</asp:ListItem> 
                        <asp:ListItem>Labuan</asp:ListItem>
                        <asp:ListItem>Beaufort</asp:ListItem>
                        <asp:ListItem>Lahad Datu</asp:ListItem>
                        <asp:ListItem>Sandakan</asp:ListItem>
                        <asp:ListItem>Keningau</asp:ListItem>
                        <asp:ListItem>Tawau</asp:ListItem>
                        <asp:ListItem>Labuan</asp:ListItem>
                        <asp:ListItem>Paka</asp:ListItem>
                        <asp:ListItem>Kertih</asp:ListItem>
                        <asp:ListItem>Kulim</asp:ListItem>
                        <asp:ListItem>Bagan Serai</asp:ListItem>
                        <asp:ListItem>Bedong</asp:ListItem>
                        <asp:ListItem>Simpang Empat</asp:ListItem>
                        <asp:ListItem>Taiping</asp:ListItem>
                        <asp:ListItem>Kuala Kangsar</asp:ListItem>
                        <asp:ListItem>Ipoh</asp:ListItem>
                        <asp:ListItem>Gua Musang</asp:ListItem>
                        <asp:ListItem>Kuala Terengganu</asp:ListItem>
                        <asp:ListItem>Marang</asp:ListItem>
                        <asp:ListItem>Tampin</asp:ListItem>
                        <asp:ListItem>Alor Gajah</asp:ListItem>
                        <asp:ListItem>Kampung Ayer Keroh</asp:ListItem>
                        <asp:ListItem>Sungai Udang</asp:ListItem>
                        <asp:ListItem>Malacca</asp:ListItem>
                        <asp:ListItem>Pelabuhan Klang</asp:ListItem>
                        <asp:ListItem>Banting</asp:ListItem>
                        <asp:ListItem>Jenjarum</asp:ListItem>
                        <asp:ListItem>Semenyih</asp:ListItem>
                        <asp:ListItem>Beranang</asp:ListItem>
                        <asp:ListItem>Seremban</asp:ListItem>
                        <asp:ListItem>Port Dickson</asp:ListItem>
                        <asp:ListItem>Bahau</asp:ListItem>
                        <asp:ListItem>Kuala Pilah</asp:ListItem>
                        <asp:ListItem>Buloh Kasap</asp:ListItem>
                        <asp:ListItem>Kampung Tekek</asp:ListItem>
                        <asp:ListItem>Pekan</asp:ListItem>
                        <asp:ListItem>Mentekab</asp:ListItem>
                        <asp:ListItem>Temerluh</asp:ListItem>
                        <asp:ListItem>Permatang Damar Laut</asp:ListItem>
                        <asp:ListItem>Butterworth</asp:ListItem>
                        <asp:ListItem>Perai</asp:ListItem>
                        <asp:ListItem>Bukit Mertajam</asp:ListItem>
                        <asp:ListItem>Nibong Tebal</asp:ListItem>
                        <asp:ListItem>Parit Buntar</asp:ListItem>
                        <asp:ListItem>Tasek Glugor</asp:ListItem>
                        <asp:ListItem>Kampung Sungai Nibung Besar</asp:ListItem>
                        <asp:ListItem>George Town</asp:ListItem>
                        <asp:ListItem>Kampung Bukit Tinggi, Bentong</asp:ListItem>
                        <asp:ListItem>Serendah</asp:ListItem>
                        <asp:ListItem>Rawang</asp:ListItem>
                        <asp:ListItem>Kampung Subang</asp:ListItem>
                        <asp:ListItem>Petaling</asp:ListItem>
                        <asp:ListItem>Petaling Jaya</asp:ListItem>
                        <asp:ListItem>Kuala Lumpur</asp:ListItem>
                        <asp:ListItem>Setapak</asp:ListItem>
                        <asp:ListItem>Sabak Bernam</asp:ListItem> 
                        <asp:ListItem>Sungai Besar</asp:ListItem>
                        <asp:ListItem>Kuantan</asp:ListItem>
                        <asp:ListItem>Telok Baharu</asp:ListItem>
                        <asp:ListItem>Tanah Rata</asp:ListItem>
                        <asp:ListItem>Batu Gajah</asp:ListItem>
                        <asp:ListItem>Kampar</asp:ListItem>
                        <asp:ListItem>Tapah Road</asp:ListItem>
                        <asp:ListItem>Bidur</asp:ListItem>
                        <asp:ListItem>Lumut</asp:ListItem>
                        <asp:ListItem>Sitiawan</asp:ListItem>
                        <asp:ListItem>Teluk Intan</asp:ListItem>
                        <asp:ListItem>Gurun</asp:ListItem>
                        <asp:ListItem>Sungai Petani</asp:ListItem>
                        <asp:ListItem>Kepala Batas</asp:ListItem>
                        <asp:ListItem>Ketereh</asp:ListItem>
                        <asp:ListItem>Pulai Chondong</asp:ListItem>
                        <asp:ListItem>Tanah Merah</asp:ListItem>
                        <asp:ListItem>Kuching</asp:ListItem>
                        <asp:ListItem>Simanggang</asp:ListItem>
                        <asp:ListItem>Sarikei</asp:ListItem>
                        <asp:ListItem>Sibu</asp:ListItem>
                        <asp:ListItem>Kangar</asp:ListItem>
                        <asp:ListItem>Kuala Perlis</asp:ListItem>
                        <asp:ListItem>Jitra</asp:ListItem>
                        <asp:ListItem>Kuala Kedah</asp:ListItem>
                        <asp:ListItem>Alor Setar</asp:ListItem>
                        <asp:ListItem>Tumpat</asp:ListItem>
                        <asp:ListItem>Pasir Mas</asp:ListItem>
                        <asp:ListItem>Kota Bharu</asp:ListItem>
                        <asp:ListItem>Jertih</asp:ListItem>
                        <asp:ListItem>Kudat</asp:ListItem>
                        <asp:ListItem>Kota Belud</asp:ListItem>
                        <asp:ListItem>Kapit</asp:ListItem>
                        <asp:ListItem>Bintulu</asp:ListItem>
                        <asp:ListItem>Limbang</asp:ListItem>
                        <asp:ListItem>Miri</asp:ListItem>
                        <asp:ListItem>Ulu Tiram</asp:ListItem>
                        <asp:ListItem>Tanjung Tokong</asp:ListItem>
                        <asp:ListItem>Tanjung Sepat</asp:ListItem>
                        <asp:ListItem>Kampung Tabanac</asp:ListItem>
                        <asp:ListItem>Sungai Pelek New Village</asp:ListItem>
                        <asp:ListItem>Rumah Dana</asp:ListItem>
                        <asp:ListItem>Rumah Ampeng</asp:ListItem>
                        <asp:ListItem>Riam Road Bazaar</asp:ListItem>
                        <asp:ListItem>Pulau Sebang</asp:ListItem>
                        <asp:ListItem>Kampung Pokok Manggis</asp:ListItem>
                        <asp:ListItem>Peringat</asp:ListItem>
                        <asp:ListItem>Permatang Kuching</asp:ListItem>
                        <asp:ListItem>Ladang Seri Kundang</asp:ListItem>
                        <asp:ListItem>Pekan Darat</asp:ListItem>
                        <asp:ListItem>Pasir Penambang</asp:ListItem>
                        <asp:ListItem>Pantai Remis</asp:ListItem>
                        <asp:ListItem>Kuang</asp:ListItem> 
                        <asp:ListItem>Kuala Sungai Baru</asp:ListItem>
                        <asp:ListItem>Kepong</asp:ListItem>
                        <asp:ListItem>Klebang Besar</asp:ListItem>
                        <asp:ListItem>Kelapa Sawit</asp:ListItem>
                        <asp:ListItem>Kampong Wakuba</asp:ListItem>
                        <asp:ListItem>Kampong Tengah</asp:ListItem>
                        <asp:ListItem>Kampong Telok Reba</asp:ListItem>
                        <asp:ListItem>Kampung Teluk Dalam</asp:ListItem>
                        <asp:ListItem>Kampung Telaga Batin</asp:ListItem>
                        <asp:ListItem>Kampung Tanjung Karang</asp:ListItem>
                        <asp:ListItem>Kampong Sungai Tanah Liat</asp:ListItem>
                        <asp:ListItem>Kampung Sungai Glugur</asp:ListItem>
                        <asp:ListItem>Kampung Sungai Ara</asp:ListItem>
                        <asp:ListItem>Kampung Simpang Renggam</asp:ListItem>
                        <asp:ListItem>Kampung Rantau Panjang</asp:ListItem>
                        <asp:ListItem>Kampung Pulau Samak</asp:ListItem>
                        <asp:ListItem>Kampong Pangkal Kalong</asp:ListItem>
                        <asp:ListItem>Kampung Naran</asp:ListItem>
                        <asp:ListItem>Kampong Masjid Tanah</asp:ListItem>
                        <asp:ListItem>Kampung Kota Lama</asp:ListItem>
                        <asp:ListItem>Kampong Kadok</asp:ListItem>
                        <asp:ListItem>Kampong Gual Payong</asp:ListItem>
                        <asp:ListItem>Kampong Dungun</asp:ListItem>
                        <asp:ListItem>Kampung Bukit Baharu</asp:ListItem>
                        <asp:ListItem>Kampong Batu Perak</asp:ListItem>
                        <asp:ListItem>Kampung Batu Lapan Tiga Suku</asp:ListItem>
                        <asp:ListItem>Kampung Baru Subang</asp:ListItem>
                        <asp:ListItem>Kampung Baharu Nilai</asp:ListItem> 
                        <asp:ListItem>Kampong Baharu Balakong</asp:ListItem>
                        <asp:ListItem>Kampung Ayer Molek</asp:ListItem>
                        <asp:ListItem>Juru</asp:ListItem>
                        <asp:ListItem>Bukit Rambai</asp:ListItem>
                        <asp:ListItem>Brighton</asp:ListItem>
                        <asp:ListItem>Bentong Town</asp:ListItem>
                        <asp:ListItem>Bemban</asp:ListItem>
                        <asp:ListItem>Batu Berendam</asp:ListItem>
                        <asp:ListItem>Api Rokok</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Button1" runat="server" CssClass="nextBtn" Text="Search" style="margin-left:10px"/>
                </div>
            </td>
        </tr>
        <tr style="right:20px; height:250px">
            <td style="padding-left: 20px;">
                <asp:Calendar ID="calendar" runat="server" TitleStyle-CssClass="calendarTitle" NextPrevStyle-CssClass="calendarNP" OnDayRender="calendar_DayRender" OnSelectionChanged="calendar_SelectionChanged" SelectionMode="Day" style="width: 100%; height: 100%;"></asp:Calendar>
            </td>
            <td style=" align-items:center; padding-left: 40px; padding-right:20px; width:210px; padding-top:15px; padding-bottom:15px; position:center">
                <div class="tempDiv">

                    <asp:Label ID="date" runat="server" Text="date" CssClass="date"></asp:Label><br />
                    <asp:Label ID="day" runat="server" Text="day" CssClass="tempLbl"></asp:Label><br />
                    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="tempImg" />
                    <br />
                </div>
            </td>
            <td style="width:210px">
                <label>Available Time :    </label>
                <div style="bottom:15px; margin-left:15px">
                    <br />
                    <asp:DropDownList ID="timeDDL" runat="server" CssClass="ddl" size="5" style="min-width:30px;">
                                      
                    </asp:DropDownList>
                </div>
                <br />
                
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align:right; padding-right:20px;">
                <asp:Button ID="nextBtn" runat="server" Text="Next" OnClick="nextBtn_Click" Enabled="false" />
            </td>
        </tr>
    </table>
</asp:Content>
