<%@ Page Title="" Language="C#" MasterPageFile="~/admintema.Master" AutoEventWireup="true" CodeBehind="postdelete.aspx.cs" Inherits="Masra_Group.postdelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br>
    <br>
    <br>
    <br>
    <div id="delete_designation" class=" custom-modal " role="dialog">
				<div class="modal-dialog">
					<div class="modal-content modal-md">
						<div class="modal-header">
							<h4 class="modal-title">Delete post</h4>
						</div>
						<div class="modal-body card-box">
							<p>Are you sure want to delete this?</p>
							<div class="m-t-20 text-left">
								<a href="./posts.aspx" class="btn btn-default" data-dismiss="modal">Close</a>
                               <asp:Button Text="Delete" type="submit" OnClick="Submit" class="btn btn-danger" runat="server" />
                                </div>
						</div>
					</div>
				</div>
			</div>
</asp:Content>
