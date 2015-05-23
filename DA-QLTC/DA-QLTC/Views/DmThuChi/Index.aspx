﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<DA_QLTC.Models.DM_THU_CHI>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        /*#tbl_ds_thu_chi tr > th {
            background-color:aliceblue;
        }*/
    </style>
    <div style="text-align: center; margin: 0px auto; padding-left: 100px">
        <h2 class="h2">Danh mục Thu/Chi</h2>
    </div>

 <p>
        <label class="glyphicon glyphicon-plus"></label>
        <%: Html.ActionLink("Thêm danh mục thu chi", "Create") %>
    </p>
<table id="tbl_ds_thu_chi" class="table table-hover table-bordered header-background" style="width: 1000px">
    <thead>
    <tr>
        <th style="width:300px">
           Tên danh mục
        </th>
        <th>
            Loại thu/chi
        </th>
        <th style="width:300px">
           Ghi chú
        </th>
        <th>
            Thao tác
        </th>
    </tr>
</thead>
    <tbody>
<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.TEN) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.DM_TU_DIEN.TEN) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.GHI_CHU) %>
        </td>
       <td style="margin:2px;width:180px">
                    <label class="glyphicon glyphicon-edit"></label>
                    <%: Html.ActionLink("Sửa", "Edit", new { id=item.ID }) %> 
            <label class="glyphicon glyphicon-align-justify"></label>
                    <%: Html.ActionLink("Chi tiết", "Details", new { id=item.ID }) %> 
            <label class="glyphicon glyphicon-trash"></label>
                    <%: Html.ActionLink("Xóa", "Delete", new { id=item.ID }) %>
                </td>
    </tr>
<% } %>
</tbody>
</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
