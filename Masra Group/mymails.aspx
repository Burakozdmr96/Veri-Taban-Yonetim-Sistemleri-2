<%@ Page Title="" Language="C#" MasterPageFile="~/admintema.Master" AutoEventWireup="true" CodeBehind="mymails.aspx.cs" Inherits="Masra_Group.mymails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-wrapper">
                
          
                <div class="content container-fluid">
					<div class="row">
						<div class="col-sm-8">
							<h4 class="page-title">Added  Mails  </h4>
						</div>
							</div>
					<div class="row">
						<div class="col-md-12">
							<div class="table-responsive">
								<table class="table table-striped custom-table m-b-0 datatable">
									<thead>
										<tr>
											<th class="col-md-6">Number</th>
											<th class="col-md-6">New Mails </th>
										</tr>
									</thead>
									<tbody>
										<tr>
									   <% for (int i = 0; i < tblmymails.Rows.Count; i++)
                                               {%>
                                        <tr>
                                            <td><a class="avatar"><%=i+1%></a></td>
                                            <td><%=tblmymails.Rows[i]["Mail"] %></td>
											
										
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
