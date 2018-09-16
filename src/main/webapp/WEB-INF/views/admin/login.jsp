<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:include page="../header.jsp"/>

<%--<div id="page-wrapper">--%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Login</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Login
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">

                        <form role="form" action="/login" method="post">
                            <sec:csrfInput />
                            <div class="form-group">
                                <label> User Name : <input type="text" name="username"/> </label>
                            </div>
                            <div class="form-group">
                                <label> Password: <input type="password" name="password"/> </label>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Sign In"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../footer.jsp"/>