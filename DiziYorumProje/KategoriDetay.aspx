﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="DiziYorumProje.KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="content-grids">
            <div class="col-md-8">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="content-grid">
                            <div class="content-grid-info">
                                <img src="<%# Eval("BLOGGORSEL") %>" alt="<%# Eval("BLOGBASLIK") %>" style="width: 650px; height: 300px" />
                                <div class="post-info">
                                    <h4><a href="BlogDetay.Aspx?BLOGID=<%# Eval("BLOGID") %>"><%# Eval("BLOGBASLIK") %></a>  <%# Eval("BLOGTARIH") %> / 27 Comments</h4>
                                    <p><%# Eval("BLOGICERIK").ToString().Length > 200 ? Eval("BLOGICERIK").ToString().Substring(0, 200) + "..." : Eval("BLOGICERIK").ToString() %></p>
                                    <a href="BlogDetay.Aspx?BLOGID=<%# Eval("BLOGID") %>"><span></span>Devamını Oku</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="true" ForeColor="IndianRed"></asp:Label>
            </div>


            <div class="col-md-2">
            </div>

            <div class="col-md-2">
                <div class="recent">
                    <h3>SON BLOGLAR</h3>
                    <ul>
                        <asp:Repeater ID="Repeater3" runat="server">
                            <ItemTemplate>
                                <li><a href="BlogDetay.Aspx?BLOGID=<%# Eval("BLOGID") %>"><%# Eval("BLOGBASLIK") %> </a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="comments">
                    <h3>SON YORUMLAR</h3>
                    <ul>
                        <asp:Repeater ID="Repeater4" runat="server">
                            <ItemTemplate>
                                <li><a href="#"><%# Eval("YORUMICERIK") %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="clearfix"></div>
                <div class="archives">
                    <h3>ARŞİVLER</h3>
                    <ul>
                        <li><a href="#">OCAK 2024</a></li>
                        <li><a href="#">ŞUBAT 2024</a></li>
                        <li><a href="#">MART 2024</a></li>
                    </ul>
                </div>
                <div class="categories">
                    <h3>KATEGORİLER</h3>
                    <ul>
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <li><a href="KategoriDetay.Aspx?KATEGORIID=<%# Eval("KATEGORIID") %>"><%# Eval("KATEGORIAD") %> </a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

</asp:Content>
