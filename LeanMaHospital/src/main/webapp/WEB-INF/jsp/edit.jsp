<%@ include file="header.jsp" %>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	  <div class="container-fluid">
	    <h3 class="navbar-brand">LeanMa Hospital</h3>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarText">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	          <a class="nav-link" aria-current="page" href="/homeAdmin">Dashboard</a>
	        </li>
	      </ul>
	      <ul class="navbar-nav navbar-right">
	      	<li class="nav-item">
	          <a class="nav-link" aria-current="page" href="/logout">Logout</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<div class="loginBox">
		<c:forEach items="${patient}" var="pt">
			<p class="textLogin"><b>Edit Data Pasien</b></p>
			<form:form action="ubahPatient" method="post" modelAttribute="p">
				<form:input path="nik" class="form_login" value="${pt.nik}" type="hidden"/>
				<form:input path="id" class="form_login" value="${pt.id}" type="hidden" />
				<form:input path="nama" class="form_login" value="${pt.nama}" required="required"/>
				<form:input path="umur" class="form_login" value="${pt.umur}" required="required"/>
				<form:input path="gender" class="form_login" value="${pt.gender}" required="required"/>
				<form:input path="penyakit" class="form_login" value="${pt.penyakit}"/>
				<input type="submit" value="Ubah" class="buttonLogin"/>
			</form:form>
		</c:forEach>
	</div>
</body>
</html>