<jsp:include page="header.jsp"/>

<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Dashboard</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->

    <!-- /.row -->
    <div class="row">
        <a href="/generate">Clear and fill db</a>
        <br>
        DROP DATABASE IF EXISTS city_transport; CREATE DATABASE city_transport DEFAULT CHARACTER SET utf8mb4; USE
        city_transport;
        <!-- /.col-lg-4 -->
    </div>
    <!-- /.row -->
</div>
<!-- /#page-wrapper -->

<jsp:include page="footer.jsp"/>
