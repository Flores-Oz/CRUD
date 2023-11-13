<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site1.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="CRUDCHAFA.Pages.Create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Agrega estilos según sea necesario */
        .image-button {
            background-color: transparent;
            border: none;
            padding: 0;
            cursor: pointer;
            background-image: url('..IMG/eliminar.png');
            background-size: cover; /* Puedes ajustar según tus necesidades */
            width: 50px; /* Ancho de la imagen */
            height: 50px; /* Altura de la imagen */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container col-xxl-8 px-4 py-5">
        <div class="container py-5">
            <h2 class="pb-2 border-bottom">Create</h2>
            <div class="col">
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered"
                        AllowPaging="True" PageSize="9" OnPageIndexChanging="GridView1_PageIndexChanging" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                        <Columns>
                            <asp:TemplateField HeaderText="Campo 1">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("[Campo 1]") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("[Campo 1]") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Campo 2">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("[Campo 2]") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("[Campo 2]") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Campo 3">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("[Campo 3]") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("[Campo 3]") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Campo 4">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("[Campo 4]") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("[Campo 4]") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Campo 5">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("[Campo 5]") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("[Campo 5]") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Campo 6">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("[Campo 6]") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("[Campo 6]") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Campo 7">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("[Campo 7]") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("[Campo 7]") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Opciones">
                                <EditItemTemplate>
                                    <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Cancel" ImageUrl="~/IMG/error.png" />
                                    <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        Editar
                                    </button>
                                    <asp:Button ID="Button3" runat="server" CommandName="Update" Text="Actualizar" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Edit" ImageUrl="~/IMG/marco(1).png" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerSettings Mode="NumericFirstLast" PageButtonCount="3" />
                        <PagerStyle CssClass="page-item active" HorizontalAlign="Right" />
                    </asp:GridView>
                </div>
            </div>
            <br />
            <div class="col-lg-6">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#Modal">
                    Ingresar Datos</button>
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
                    <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </div>

    <%--///////////--%>
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel2">Modal title</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    ¿Esta Seguro de Editar Esto?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Understood</button>
                    <asp:Button ID="Button2" runat="server" Text="Understood" CommandName="Update" OnClick="Button2_Click" />
                </div>
            </div>
        </div>
    </div>


</asp:Content>
