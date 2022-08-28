<%@ Page Title="" Language="C#" MasterPageFile="~/admintema.Master" AutoEventWireup="true" CodeBehind="addnewpost.aspx.cs" Inherits="Masra_Group.addnewpost" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <br>
    <br>
    <br>
    <br>
            <div id="add_designation" class=" custom-modal " role="dialog">
				<div class="modal-dialog">
                    <a href="posts.aspx">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </a>
                        <div class="modal-content modal-md">
						<div class="modal-header">
							<h4 class="modal-title">Add New Post</h4>
						</div>
						<div class="modal-body">
							<form>
                                  
								<div class="form-group">
                                    
                         
									<label>Category <span class="text-danger">*</span></label>
                                    <asp:DropDownList runat="server" class="form-control" required=""   AutoPostBack="true" OnSelectedIndexChanged="GetSubCategoy"  ID="DCategory">
                                       
                                    </asp:DropDownList>

								</div>	
                                <div class="form-group">
									<label>Sub Category <span class="text-danger">*</span></label>
                                    <asp:DropDownList runat="server" class="form-control" required=""  ID="DSubCategory" >
                                      
                                    </asp:DropDownList>
                                   
                                </div>
								
								<div class="form-group">
									<label>Title (AR) <span class="text-danger">*</span></label>
									
                                    <asp:TextBox runat="server" dir="RTL"  class="form-control" required=""  ID="TitleAR" />
                                    </div>
                                <div class="form-group">
									<label> Description (AR) <span class="text-danger">*</span></label>
								 <CKEditor:CKEditorControl ContentsLangDirection="Rtl" runat="server"  required=""  ID="DescriptionAR" ></CKEditor:CKEditorControl>
                                </div>	
								<div class="form-group">
									<label>Title (EN) <span class="text-danger">*</span></label>
									
                                    <asp:TextBox runat="server"   class="form-control" required=""  ID="TitleEN" />
                                   </div>
                                <div class="form-group">
									<label> Description (EN) <span class="text-danger">*</span></label>
                                      
					
                                <CKEditor:CKEditorControl runat="server"  required=""  ID="DescriptionEN" ></CKEditor:CKEditorControl>
                                      
								</div>
                                
                             <div class="form-group ">
                            <label class="control-label">Post Image</label>
                            <asp:FileUpload ID="image" CssClass="form-control" runat="server" multiple=""  />
                              </div>
								
								<div class="m-t-20 text-center">
								
                                    <asp:Button Text="Submit" runat="server" OnClick="Submit" class="btn btn-primary" />
                                    </div>
							</form>
						</div>
					</div>
				</div>
			</div>
     	<script>
			CKEDITOR.replace( 'editor1' );
			CKEDITOR.replace( 'editor2' );
		</script>
</asp:Content>
