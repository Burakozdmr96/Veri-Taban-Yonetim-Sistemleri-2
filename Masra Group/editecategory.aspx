<%@ Page Title="" Language="C#" MasterPageFile="~/admintema.Master" AutoEventWireup="true" CodeBehind="editecategory.aspx.cs" Inherits="Masra_Group.editecategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="add_designation" class=" custom-modal " role="dialog">
				<div class="modal-dialog">
                    <br />
                    <br />
                    <br />
                    <br />
                    <a href="./addcategory.aspx">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					</a>
                    <div class="modal-content modal-md">
						<div class="modal-header">
							<h4 class="modal-title">Add Category</h4>
						</div>
						<div class="modal-body">
							<form method="post">
								<div class="form-group">
									<label>Category(AR)* <span class="text-danger">*</span></label>
								<asp:TextBox  ID="categoryAR" class="form-control" required=""  runat="server"  />
                                    </div>	
			                   <div class="form-group">
									<label>Category(EN)* <span class="text-danger">*</span></label>
								<asp:TextBox  ID="CategoryEN" class="form-control" required=""  runat="server"  />
                               </div>								
								<div class="m-t-20 text-center">
									<asp:Button Text="Edite" OnClick="Updatecategory" class="btn btn-primary"  runat="server" />
                                    </div>
							</form>
						</div>
					</div>
				</div>
			</div>
        
</asp:Content>
