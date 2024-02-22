<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="BlogDetay.aspx.cs" Inherits="DiziYorumProje.BlogDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE HTML>
    <html>
    <head>
        <link href="web/css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="web/css/style.css" rel='stylesheet' type='text/css' />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Personal Blog Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!----webfonts---->
        <link href='http://fonts.googleapis.com/css?family=Oswald:100,400,300,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic' rel='stylesheet' type='text/css'>
        <!----//webfonts---->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <!--end slider -->
        <!--script-->
        <script type="web/text/javascript" src="js/move-top.js"></script>
        <script type="web/text/javascript" src="js/easing.js"></script>
        <!--/script-->
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 900);
                });
            });
        </script>
        <!---->

    </head>
    <body>
        <div class="single">
            <div class="container">
                <div class="col-md-11 single-main">
                    <div class="single-grid">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <img src="<%# Eval("BLOGGORSEL") %>" alt="<%# Eval("BLOGBASLIK") %>" style="width: 100%; height: 440px" />
                                <h2 style="text-align: center; margin-top: 15px; font-weight: bold; color: red"><%# Eval("BLOGBASLIK") %></h2>
                                <p>
                                    <%# Eval("BLOGICERIK") %>
                                </p>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>

                    <div style="margin-top: 15%" class="content-form">
                        <h3>Yorumlar</h3>
                    </div>
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <ul class="comment-list">
                                <li>
                                    <img src="web/images/avatar.png" class="img-responsive" alt="">
                                    <div class="desc">
                                        <p style="font-weight: bolder"><%# Eval("KULLANICIAD") %> </p>
                                        :
                                        <p><%# Eval("YORUMICERIK") %> </p>
                                    </div>
                                    <div class="clearfix"></div>
                                </li>
                            </ul>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                    <div style="margin-top: 8%" class="content-form">
                        <h3>Yorum Yaz</h3>
                        <form runat="server">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Kullanıcı Adı" required=""></asp:TextBox>
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Mail" required=""></asp:TextBox>
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Yorum" TextMode="MultiLine" Height="150" required=""></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Yorum Yap" OnClick="Button1_Click" />
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </body>
    </html>
</asp:Content>
