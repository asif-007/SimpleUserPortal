<%--
  Created by IntelliJ IDEA.
  User: Asif
  Date: 3/26/2021
  Time: 2:05 AM
--%>


<meta name="layout" content="admin"/>

<title> User List </title>

<h3 class="text-center"> User List </h3>
<hr>


<!-- DataTables Example -->
<div class="card mb-3">
    <div class="card-header">

    %{--Actions--}%
    <span class="float-right">

    %{--Search Panel --}%
    <div class="btn-group">
        <g:form controller="admin" action="index" method="GET">
            <div class="input-group" id="search-area">
                <g:select name="colName" class="form-control" from="[firstName: 'First Name', lastName: 'Last Name', email: 'Email']" value="${params?.colName}" optionKey="key" optionValue="value"/>
                <g:textField name="colValue" class="form-control" value="${params?.colValue}"/>
                <span class="input-group-btn">
                    <button class="btn btn-default" type="submit">Search</button>
                </span>
            </div>
        </g:form>
    </div>
        <i class="fas fa-table"></i></div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Birthday</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${userList}" var="info">
                    <tr>
                        <td>${info?.firstName}</td>
                        <td>${info?.lastName}</td>
                        <td>${info?.address}</td>
                        <td>${info?.email}</td>
                        <td>${info?.phone}</td>
                        <td>${info?.birthDate.getDateString()}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
            %{--Pagination Area--}%
            <div class="paginate">
                <g:paginate total="${total ?: 0}" />
            </div>
        </div>
    </div>
</div>