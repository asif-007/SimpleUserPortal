<%--
  Created by IntelliJ IDEA.
  User: Asif
  Date: 3/26/2021
  Time: 6:05 PM
--%>

%{--Include partial Layout--}%
<meta name="layout" content="partial"/>

<title> Login Form </title>

<div class="container-fluid mt-5">
    <div class="row">
        <div class="col-4 offset-4">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center"> Login Panel </h3>
                    <hr>
                    <g:form controller="user" action="doLogin" >
                        <div class="form-group">
                            <label> Email address </label>
                            <g:textField type="email" name="email" class="form-control" placeholder="Enter email" />
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <g:passwordField type="password"  name="password" class="form-control" placeholder="Password"/>
                        </div>
                        <g:submitButton class="btn btn-outline-success btn-block" name="Login" value="${g.message(code: "login")}"/><br>
                        <g:link controller="User" action="login" class="btn btn-outline-success btn-block" > <g:message code="cancel"/> </g:link>
                    </g:form>
                    <br>
                    <h6 class="text-center"> Are you new hear? <g:link controller="User" action="create"> Register hear </g:link></h6>
                </div>
            </div>
        </div>
    </div>
</div>