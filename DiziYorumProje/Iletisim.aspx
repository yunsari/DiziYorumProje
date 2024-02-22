<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="DiziYorumProje.Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="contact-content">
            <div class="container">
                <div class="contact-info">
                    <h2>İLETİŞİM</h2>
                    <p>Bir problemle karşılaştığınızda bize ulaşınız.</p>
                </div>
                <div class="contact-details">
                    <form runat="server">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Ad Soyad" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Mail" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Telefon" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Konu" required="" style="margin:auto;"></asp:TextBox>
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Mesajınız" TextMode="MultiLine" Height="150" required=""></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click" />
                    </form>
                </div>
                <div class="contact-details">
                    <div class="col-md-6 contact-map">
                        <h4>Biz Buradayız!</h4>
                        <iframe width="523" height="403" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" id="gmap_canvas" src="https://maps.google.com/maps?width=523&amp;height=403&amp;hl=en&amp;q=%20Istanbul+()&amp;t=&amp;z=11&amp;ie=UTF8&amp;iwloc=B&amp;output=embed" style="border: 0"></iframe>
                    </div>
                    <div class="col-md-6 company_address">
                        <h4>Temasa Geçin</h4>
                        <p>500 Lorem Ipsum Dolor Sit,</p>
                        <p>22-56-2-9 Sit Amet, Lorem,</p>
                        <p>USA</p>
                        <p>Phone:(00) 222 666 444</p>
                        <p>Fax: (000) 123 456 78 0</p>
                        <p>Email: <a href="mailto:info@example.com">info@mycompany.com</a></p>
                        <p>Follow on: <a href="https://www.reddit.com">Reddit</a>, <a href="https://www.x.com">Twitter</a></p>
                    </div>
                    <div class="clearfix"></div>
                </div>


            </div>
        </div>
        </div>

</asp:Content>
