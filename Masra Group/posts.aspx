<%@ Page Title="" Language="C#" MasterPageFile="~/admintema.Master" AutoEventWireup="true" CodeBehind="posts.aspx.cs" Inherits="Masra_Group.posts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="page-wrapper">
                
          
                <div class="content container-fluid">
					<div class="row">
						<div class="col-sm-8">
							<h4 class="page-title">Posts </h4>
						</div>
						<div class="col-sm-4 text-right m-b-30">
							<a href="./addnewpost.aspx" class="btn btn-primary rounded" ><i class="fa fa-plus"></i> Add New Post</a>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="table-responsive">
								<table class="table table-striped custom-table m-b-0 datatable">
									<thead>
										<tr>
											<th>ID</th>
											<th>Title </th>
											<th>Image  </th>
											<th>Category  </th>
											<th>SubCategory  </th>
											<th class="text-right">Action</th>
										</tr>
									</thead>
									<tbody>
										<tr>
									   <% for (int i = 0; i < tblProducts.Rows.Count; i++)
                                               {%>
                                        <tr>
                                        <td><a class="avatar"><%=i+1%></a></td>
											<td><%= tblProducts.Rows[i]["Title"] %></td>
											<td><img src=" <%= tblProducts.Rows[i]["Image"] %>" height="20px" width="40px"></td>
                                            <%=   tblcategory = Masra_Group.Functions.GetCategory(tblProducts.Rows[i]["CategoryID"].ToString())%>
                                            <%=    tblSubcategory = Masra_Group.Functions.GetSubCategory(tblProducts.Rows[i]["SubID"].ToString()) %>
                                            <%if (tblcategory.Rows.Count > 0)
                                                { %> <td><%=  tblcategory.Rows[0]["Name"]%></td> <%}else{%><td></td><%} %>
                                            


                                            <%if (tblSubcategory.Rows.Count > 0)
                                                { %> <td><%=  tblSubcategory.Rows[0]["Name"]%></td> <%}else{%><td></td><%} %>
                                            <td class="text-right">
												<div class="dropdown">
													<a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
													<ul class="dropdown-menu pull-right">
														<li><a href="./editepost.aspx?id=<%= tblProducts.Rows[i]["ID"] %>" data-toggle="modal"  title="Edit"><i class="fa fa-pencil m-r-5"></i> Edit</a></li>
														<li><a href="./postdelete.aspx?id=<%= tblProducts.Rows[i]["ID"] %>" title="Delete"><i class="fa fa-trash-o m-r-5"></i> Delete</a></li>
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
