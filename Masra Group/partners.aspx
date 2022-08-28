<%@ Page Title="" Language="C#" MasterPageFile="~/admintema.Master" AutoEventWireup="true" CodeBehind="partners.aspx.cs" Inherits="Masra_Group.partners" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="page-wrapper">
                <div class="content container-fluid">
					<div class="row">
						<div class="col-sm-8">
							<h4 class="page-title">Partners </h4>
						</div>
						<div class="col-sm-4 text-right m-b-30">
							<a href="#" class="btn btn-primary rounded" data-toggle="modal" data-target="#add_designation"><i class="fa fa-plus"></i> Add New Partner</a>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="table-responsive">
								<table class="table table-striped custom-table m-b-0 datatable">
									<thead>
										<tr>
											<th>ID</th>
										
											<th> Image </th>
											<th class="text-right">Action</th>
								
                                            </tr>
									</thead>
									<tbody>
										   <% for (int i = 0; i < tblgetpartners.Rows.Count; i++)
                                               {%>
                                        <tr>
                                            <td> <%= tblgetpartners.Rows[i]["ID"] %></td>
										
											<td>
                                                <img src="<%= tblgetpartners.Rows[i]["Image"] %>"  alt="No image" height="40px" width="40px" /> </td>
											<td class="text-right">
												<div class="dropdown">
													<a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
													<ul class="dropdown-menu pull-right">
														<li><a href="./deletepartner.aspx?id=<%= tblgetpartners.Rows[i]["ID"] %>" title="Delete"><i class="fa fa-trash-o m-r-5"></i> Delete</a></li>
													</ul>
												</div>
											</td>
										</tr>
<%} %>							
									</tbody>
								</table>
							</div>
						</div>
					</div>
                </div>
			
          
            
      </div>
			
    
          
	
    
            <div id="add_designation" class="modal custom-modal fade" role="dialog">
				<div class="modal-dialog">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div class="modal-content modal-md">
						<div class="modal-header">
							<h4 class="modal-title">Add Category</h4>
						</div>
						<div class="modal-body">
							<form>
								
			                 	
                                    <div class="form-group ">
                            <label class="control-label">Category Image</label>
                            <asp:FileUpload ID="image" CssClass="form-control" runat="server"   />
                              </div>
								<div class="m-t-20 text-center">
									<asp:Button Text="Submit" OnClick="Addcategory" class="btn btn-primary"  runat="server" />
                                    </div>
							</form>
						</div>
					</div>
				</div>
			</div>

</asp:Content>
