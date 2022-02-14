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
					Daftar Pasien Rumah Sakit
				</center>
			</h1>
			<table id="example" class="table table-striped table-bordered" style="width:100%">
				<thead class="bg-dark">
					<tr class="text-light text-center">
						<th>NIK</th>
						<th>Nama</th>
						<th>Umur</th>
						<th>Aksi</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${patients}" var="patient">
						<tr>
							<td>${patient.nik}</td>
							<td>${patient.nama}</td>
							<td>${patient.umur}</td>
							<td>
								<center>
									<button type="button" class="btn btn-success" 
									onClick="location.href='/detail/${patient.id}'">
			          					Detail <i class="fas fa-info-circle"></i>
			          				</button> |
			          				<button type="button" class="btn btn-danger" 
									onClick="location.href='/delete/${patient.id}'">
			          					Hapus <i class="fas fa-trash-alt"></i>
			          				</button> |
			          				<button type="button" class="btn btn-primary" 
									onClick="location.href='/update/${patient.id}'">
			          					Edit <i class="fas fa-edit"></i>
			          				</button>
								</center>
							</td>
			          	</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>