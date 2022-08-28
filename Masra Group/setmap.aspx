<%@ Page Title="" Language="C#" MasterPageFile="~/admintema.Master" AutoEventWireup="true" CodeBehind="setmap.aspx.cs" Inherits="Masra_Group.setmap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



            
	<br />
	<br />
	<br />
	<br />
    
            <div id="add_designation" class=" custom-modal " role="dialog">
				<div class="modal-dialog">
                    <div class="modal-content modal-md">
						<div class="modal-header">
							<h4 class="modal-title">Add Social</h4>
						</div>
						<div class="modal-body">
							<form>
                            
								<div class="form-group">
									<label>Map URL* <span class="text-danger">*</span></label>
							        <asp:TextBox  ID="Map" class="form-control" required=""  runat="server"  />
                                    </div>	
								<div class="m-t-20 text-center">
									<asp:Button Text="Submit" OnClick="Submit"  class="btn btn-primary"  runat="server" />
                                    </div>
							</form>
						</div>
					</div>
				</div>
			</div>

</asp:Content>
