<%@ Page Title="" Language="C#" MasterPageFile="~/admintema.Master" AutoEventWireup="true" CodeBehind="addmail.aspx.cs" Inherits="Masra_Group.addmail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="page-wrapper">
                
          
                <div class="content container-fluid">
					<div class="row">
						<div class="col-sm-8">
							<h4 class="page-title">New Mails  </h4>
						</div>
							</div>
					<div class="row">
						<div class="col-md-12">
							<div class="table-responsive">
								<table class="table table-striped custom-table m-b-0 datatable">
									<thead>
										<tr>
											<th>Number</th>
											<th class="col-md-5">New Mails </th>
											<th class="text-right">Action</th>
										</tr>
									</thead>
									<tbody>
										<tr>
									   <% for (int i = 0; i < tblmail.Rows.Count; i++)
                                               {%>
                                        <tr>
                                            <td><a class="avatar"><%=i+1%></a></td>
                                            <td><%=tblmail.Rows[i]["Mail"] %></td>
											
											<td class="text-right">
												<div class="dropdown">
													<a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
													<ul class="dropdown-menu pull-right">
														<li><a href="./addmymail.aspx?id=<%= tblmail.Rows[i]["ID"] %>" data-toggle="modal"  title="Added"><i class="fa fa-pencil m-r-5"></i>Added</a></li>
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
			
    
    
</asp:Content>
