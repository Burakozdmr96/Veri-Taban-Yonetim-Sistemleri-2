<%@ Page Title="" Language="C#" MasterPageFile="~/admintema.Master" AutoEventWireup="true" CodeBehind="deleteslider.aspx.cs" Inherits="Masra_Group.deleteslider" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div id="delete_designation" class="custom-modal" >
				<div class="modal-dialog">
					<div class="modal-content modal-md">
						<div class="modal-header">
							<h4 class="modal-title">Delete </h4>
						</div>
						<div class="modal-body card-box">
							<p>Are you sure want to delete this?</p>
							<div class="m-t-20 text-left">
								<a href="./slider.aspx" class="btn btn-default" data-dismiss="modal">Close</a>
                                <asp:Button runat="server" type="submit" class="btn btn-danger" Text="Delete" OnClick="Submit"  />
							</div>
						</div>
					</div>
				</div>
			</div>
</asp:Content>
