<%@ Page Title="ToDo List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ToDo_List._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div class="card col-lg-6 offset-lg-3">
            <asp:ListView id="itens" runat="server" ItemType="ToDo_List.Models.Item" SelectMethod="getItens" DataKeyNames="ItemId">
                <EmptyDataTemplate>
                    Não retornou nada ;(
                </EmptyDataTemplate>
                <ItemTemplate>
                        <div class="row">
                            <div class="col-lg-1 col-md-6 p-2 font-weight-bold text-center small"><%# Container.DisplayIndex+1 %>.</div>
                            <div class="col-lg-5 col-md-6 p-2 ">
                                 <asp:TextBox ID="atualizaNome" CssClass="font-weight-bold text-center"  BorderStyle="None" runat="server" Text="<%# Item.Nome %>"></asp:TextBox>
                            </div>
                            <div class="col-lg-1 col-md-3 offset-lg-4 text-right">
                                <asp:LinkButton ID="atualizaItem" CssClass="btn btn-success circle" runat="server" OnClick="atualizar" CommandName="<%# Item.ItemId %>">
                                    I
                                    <!--<span class="glyphicon glyphicon-remove-circle">X</span> -->
                                </asp:LinkButton>
                            </div>
                            <div class="col-lg-1 col-md-3  text-right">
                                <asp:LinkButton ID="removeItem" CssClass="btn btn-danger circle" runat="server" OnClick="remover" CommandName="<%# Item.ItemId %>">
                                    x
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
                <asp:LinkButton CssClass="btn btn-primary col-lg-1 offset-lg-5 text-right circle" runat="server" OnClick="teste" >
                    +
                </asp:LinkButton>
             </div>
        </div>
        
        
    </section>
</asp:Content>
