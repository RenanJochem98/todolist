<%@ Page Title="ToDo List - Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ToDo_List.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div class="card col-lg-6 offset-lg-3">
            <div class="row p-4">
                <i class="fas fa-user"></i>
                <asp:TextBox ID="txtLogin" CssClass="font-weight-bold text-center"  BorderStyle="None" runat="server" placeholder="Login" Text=""></asp:TextBox>
            </div>
             <div class="col-lg-12">
                <div style="border-bottom:1px solid #989898 ;" ></div>
            </div>
            <div class="row p-4">
                <i class="fas fa-key"></i>
                <asp:TextBox ID="txtSenha" CssClass="font-weight-bold text-center"  BorderStyle="None" runat="server" placeholder="Senha" Text=""></asp:TextBox>
            </div>
            <div class="row p-4  offset-lg-9">
                <asp:LinkButton ID="lkBtnLogin" CssClass="btn btn-primary  px-3" runat="server" OnClick="btnDoLogin">
                    <i class="fas fa-paper-plane"></i>
                    <span>Entrar</span>
                </asp:LinkButton>
            </div>
            
        </div>
    </section>
</asp:Content>
