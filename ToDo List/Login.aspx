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
                <asp:TextBox ID="txtSenha" CssClass="font-weight-bold text-center"  BorderStyle="None" runat="server" placeholder="Senha" Text="" TextMode="Password"></asp:TextBox>
            </div>
            <div class="row">
                <div class="row p-4 ml-2 col-lg-4">
                    <asp:LinkButton ID="btnNewUser" CssClass="btn btn-success  px-3" runat="server" OnClick="BtnNewUser">
                        <i class="fas fa-user-plus"></i>
                        <span>Novo</span>
                    </asp:LinkButton>
                </div>
                <div class="row p-4  offset-lg-5">
                    <asp:LinkButton ID="btnLogin" CssClass="btn btn-primary  px-3" runat="server" OnClick="btnDoLogin">
                        <i class="fas fa-paper-plane"></i>
                        <span>Entrar</span>
                    </asp:LinkButton>
                </div>
            </div>
            <div class="row mt-2">
                <asp:Label ID="errorLbl" Visible="false" CssClass="col-lg-9 text-center font-weight-bold" runat="server"></asp:Label>
                <asp:LinkButton ID="lkBtnHideWarning" Visible="false" CssClass="btn btn-warning col-lg-1 offset-lg-2 btn-sm" runat="server" OnClick="btnHideWarning" >
                    <i class="fas fa-check-circle"></i>
                </asp:LinkButton>
            </div>
            
        </div>
    </section>
</asp:Content>
