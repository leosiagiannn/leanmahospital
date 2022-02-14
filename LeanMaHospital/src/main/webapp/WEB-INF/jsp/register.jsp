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
	          <a class="nav-link active" aria-current="page" href="/home">Dashboard</a>
	        </li>
	      </ul>
	      <ul class="navbar-nav navbar-right">
	      	<li class="nav-item">
	          <a class="nav-link" aria-current="page" href="/login">Login</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<div class="loginBox">
		<p class="textLogin"><b>Isi Data Diri</b></p>
		<form:form action="daftar" method="post" modelAttribute="patient">
			<label><b>Nik</b></label>
			<form:input path="nik" class="form_login" placeholder="Nomor Induk Kependukan ..." required="required"/>
			<label><b>Nama</b></label>
			<form:input path="nama" class="form_login" placeholder="Nama Penduduk ..." required="required"/>
			<label><b>Umur</b></label>
			<form:input path="umur" class="form_login" placeholder="Umur Penduduk ..." required="required"/>
			<label><b>Gender</b></label>
			<form:input path="gender" class="form_login" placeholder="Jenis Kelamin ..." required="required"/>
			<label><b>Penyakit</b></label>
			<form:input path="penyakit" class="form_login" placeholder="Riwayat Penyakit ..."/>
			<input type="submit" value=Daftar class="buttonLogin"/>
		</form:form>
	</div>
</body>
</html>