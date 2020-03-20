<%@ Page Title="ToDo List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ToDo_List._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div class="card col-lg-6 offset-lg-3">
            <asp:ListView id="itens" runat="server" ItemType="ToDo_List.Models.Item" SelectMethod="getItens" DataKeyNames="ItemId">
                <EmptyDataTemplate>
                    <div class="font-weight-bold text-center p-3 mt-5">
                        Não existe nenhum item pendente na sua lista
                    </div>
                </EmptyDataTemplate>
                <ItemTemplate>
                        <div class="row p-1">
                            <div class="col-lg-1 col-md-6 font-weight-bold"><%# Container.DisplayIndex+1 %>.</div>
                            <div class="col-lg-5 col-md-6">
                                 <asp:TextBox ID="txtAtualizaNome" CssClass="font-weight-bold text-center"  BorderStyle="None" runat="server" Text="<%# Item.Nome %>"></asp:TextBox>
                            </div>
                            <div class="col-lg-1 col-md-3 offset-lg-4">
                                <asp:LinkButton ID="atualizaItem" CssClass="btn btn-success btn-sm mx-1" runat="server" OnClick="btnAtualizaOnClick" CommandName="<%# Item.ItemId %>">
                                    <i class="fas fa-edit fa-1x"></i>
                                </asp:LinkButton>
                            </div>
                            <div class="col-lg-1 col-md-3">
                                <asp:LinkButton ID="lkBtnRemoveItem" CssClass="btn btn-danger btn-sm mx-1" runat="server" OnClick="btnRemoverOnClick" CommandName="<%# Item.ItemId %>">
                                    <i class="fas fa-trash-alt"></i>
                                    <!--<span class="glyphicon glyphicon-remove-circle">X</span> -->
                                </asp:LinkButton>
                            </div>
                            <div class="col-lg-12">
                                <div style="border-bottom:1px solid #989898 ;" ></div>
                            </div>
                        </div>
                
                </ItemTemplate>
            </asp:ListView>
            <div class="row mt-5">
                <asp:TextBox ID="nome" CssClass="col-lg-6 text-center" BorderStyle="None" runat="server" Width="40" placeholder="Adicione uma nova tarefa"></asp:TextBox>
                <asp:LinkButton CssClass="btn btn-primary col-lg-1 offset-lg-5 btn-sm" runat="server" OnClick="btnAddOnClick" >
                    <i class="fas fa-plus-circle"></i>
                </asp:LinkButton>
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
