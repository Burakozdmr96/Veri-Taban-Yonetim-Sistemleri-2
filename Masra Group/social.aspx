<%@ Page Title="" Language="C#" MasterPageFile="~/admintema.Master" AutoEventWireup="true" CodeBehind="social.aspx.cs" Inherits="Masra_Group.social" %>
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
									<label>Facebook URL* <span class="text-danger">*</span></label>
							        <asp:TextBox  ID="Facbook" class="form-control" required=""  runat="server"  />
                                    </div>	
			                   <div class="form-group">
									<label>TWitter URL* <span class="text-danger">*</span></label>
								<asp:TextBox  ID="Twitter" class="form-control" required=""  runat="server"  />
                               </div>	
                
                                <div class="form-group">
									<label>Google URL* <span class="text-danger">*</span></label>
							        <asp:TextBox  ID="Google" class="form-control" required=""  runat="server"  />
                                    </div>	
			                   <div class="form-group">
									<label>Insatagram URL* <span class="text-danger">*</span></label>
								<asp:TextBox  ID="Instagram" class="form-control" required=""  runat="server"  />
                               </div>
                              <div class="form-group">
									<label>Youtube URL* <span class="text-danger">*</span></label>
								<asp:TextBox  ID="Youtube" class="form-control" required=""  runat="server"  />
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
