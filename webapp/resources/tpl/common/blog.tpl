                  <a href="#" class="author">
                    <img src="resources/img/author/excalibur.jpeg" alt="">
                  </a>
                <header>
                  <a class="title" href="#"><%=title%></a>
                  <div class="blogPs">
                    2013年6月9日 by
                    <a href="#">excalibur</a>
                  </div>
                  <div class="commons">
                    <a href="<%=commentUrl%>"><span><%=commentNum%></span><i class="icon-comments"></i></a>
                  </div>
                </header>
                 <div class="intro">
                  <p><%=intro%></p>
                </div>
                <div class="content <%if(!show){%>hide<%}%>">
                  <%=contentTpl%>
                </div>
                <div class="toolbar">
                  <span class="<%if(show){%>hide<%}%>"><a href="">详细全文<i class="icon-circle-arrow-right"></i></a></span>
                  <span class="pull-right <%if(!show){%>hide<%}%>"><a href="">返回目录<i class="icon-circle-arrow-left"></i></a></span>
                </div>
