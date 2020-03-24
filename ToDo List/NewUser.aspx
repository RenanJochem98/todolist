<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewUser.aspx.cs" Inherits="ToDo_List.NewUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div class="card col-lg-6 offset-lg-3">
            <div class="row p-4">
                <i class="fas fa-user"></i>
                <asp:TextBox ID="txtNome" CssClass="font-weight-bold text-center"  BorderStyle="None" runat="server" placeholder="Nome" Text=""></asp:TextBox>
            </div>
             <div class="col-lg-12">
                <div style="border-bottom:1px solid #989898 ;" ></div>
            </div>
            <div class="row p-4">
                <i class="fas fa-user"></i>
                <asp:TextBox ID="txtEmail" CssClass="font-weight-bold text-center"  BorderStyle="None" runat="server" placeholder="Email" Text=""></asp:TextBox>
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
                    <asp:LinkButton ID="btnBack" CssClass="btn btn-danger  px-3" runat="server" OnClick="BtnBackToInitPage">
                        <i class="fas fa-arrow-left"></i>
                        <span>Voltar</span>
                    </asp:LinkButton>
                </div>
                <div class="row p-4  offset-lg-5">
                    <asp:LinkButton ID="btnCreateNewUser" CssClass="btn btn-success px-3" runat="server" OnClick="BtnCreateNewUser">
                        <i class="fas fa-user-plus"></i>
                        <span>Novo</span>
                    </asp:LinkButton>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
