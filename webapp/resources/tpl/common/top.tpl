
      <div class="navbar-inner">
        <div class="container-fluid">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="<%=url%>"><%=title%></a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <% _.each(nav,function(li){%>
              
              <li><a href="<%=li.url%>"><%=li.title%></a></li>
              <% })%>
            </ul>
          </div>
        </div>
      </div>
