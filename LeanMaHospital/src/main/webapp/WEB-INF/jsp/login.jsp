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
	          <a class="nav-link" aria-current="page" href="/home">Dashboard</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<div class="loginBox"> 
		<p class="textLogin"><b>Login Here</b></p>
		<form:form action="masuk" method="post" modelAttribute="user">
				<label><b>Username</b></label>
				<form:input path="username" class="form_login" placeholder="Username ..." required="required"/>
				<label><b>Password</b></label>
				<form:input path="password" type="password" class="form_login" placeholder="Password ..." required="required"/>
				<input type="submit" value="Login" class="buttonLogin" />
		</form:form>
	</div>
</body>
</html>