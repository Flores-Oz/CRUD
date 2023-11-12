<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site1.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="CRUDCHAFA.Pages.Create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container col-xxl-8 px-4 py-5">
        <div class="container py-5">
            <h2 class="pb-2 border-bottom">Create</h2>
            <div class="col">
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered">
                    </asp:GridView>
                </div>
            </div>
            <br />
            <div class="col-lg-6">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#Modal">
                    Ingresar Datos
                </button>

            </div>
        </div>
    </div>
    <%--//////////--%>
    <!-- Modal -->
    <div class="modal fade" id="Modal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable">
            <div class="modal-content">


                <!-- Modal Header -->
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>


                <!-- Modal body -->
                <div class="modal-body">

                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label1" runat="server" Text="Campo 1"></asp:Label>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label2" runat="server" Text="Campo 2"></asp:Label>
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label3" runat="server" Text="Campo 3"></asp:Label>
                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label4" runat="server" Text="Campo 4"></asp:Label>
                            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label5" runat="server" Text="Campo 5"></asp:Label>
                            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label6" runat="server" Text="Campo 6"></asp:Label>
                            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label7" runat="server" Text="Campo 7"></asp:Label>
                            <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>

                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <asp:Button ID="Button1"  CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
