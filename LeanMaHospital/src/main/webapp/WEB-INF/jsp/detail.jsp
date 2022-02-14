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
	          <a class="nav-link active" aria-current="page" href="/homeAdmin">Dashboard</a>
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
	<div class="container">
		<div class="p-3">
			<h1 class="alert-default pb-3">
				<center>
					Detail Pasien
				</center>
			</h1>
			<table border="0" cellpadding="5">
				<c:forEach items="${patient}" var="p">
					<div class="m-4">
						<div class="card" style="width: 30rem;">
						  <div class="card-body">
						    <h5 class="card-title">Pasien</h5>
						    <div><text class="card-text">Nomor Induk Kependudukan : ${p.nik}</text></div>
						    <div><text class="card-text">Nama Pasien : ${p.nama}</text></div>
						    <div><text class="card-text">Umur Pasien : ${p.nik}</text></div>
						    <div><text class="card-text">Jenis Kelamin : ${p.gender}</text></div>
						    <div><text class="card-text">Riwayat Penyakit : ${p.penyakit}</text></div>
						  </div>
						</div>
					</div>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>