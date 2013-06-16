 <section>
                    <h2>相关技术</h2>
                    <ul>
                      <li><a href="http://www.w3school.com.cn/html/index.asp">html</a></li>
                      <li><a href="http://www.w3school.com.cn/css/index.asp">css</a></li>
                      <li><a href="http://www.w3school.com.cn/js/index.asp">JavaScript</a></li>
                      <li><a href="http://www.w3school.com.cn/html5/index.asp">html5</a></li>
                      <li><a href="http://www.w3school.com.cn/css3/index.asp">css3</a></li>
                      <li><a href="http://www.lesscss.net/">less</a></li>
                      <li><a href="http://coffeescript.org/">CoffeeScript</a></li>
                      <li><a href="http://www.nodejs.org/">nodejs</a></li>
                      <li><a href="http://gruntjs.com/">grunt</a></li>
                    </ul>
                    <p>我喜欢使用<a href="http://www.sublimetext.com/2">sublime text 2</a>来编辑，不喜欢笨重的Dreamweaver。</p>
                  </section>
                 
                  <section>
                    <h2>代码组织结构</h2>
                    <strong>好的代码组织结构是非常有必要的！</strong>
                    <p>为了和服务器更好的结合，前端的结构是开发的根本！一个好的结构可以事半功倍。</p>
                    <p>采用<a href="https://github.com/seajs/seajs">seajs</a>加载的基础结构如下:</p>
<pre class="prettyprint">
  project/      项目主目录
  ├── coffee/   CofeeScript 编写目录
  │   ├── config.coffee 根目录配置文件（seajs）所有页面可以读取
  │   ├── src/  自定义源码文件，可以放一些通用的工具与插件(coffee的)
  │   │    ├── utils/   工具
  │   │    ├── widgets/ 插件
  ├── less/
  │   ├── animate/  css3动画（less）
  │   ├── bootstrap/ bootstrap样式文件（less）
  │   ├── font-awesome/ font-awesome样式文件（less）
  │   └── css/ 该目录会编译成css 所以要编译的css全部放入该目录
  └── Gruntfile.coffee grunt配置文件
  │   
  └── webapp/ 
      ├── resources/ 资源目录
      │   ├── font/ 字体目录
      │   ├── img/ 图片目录
      │   ├── lib/ 类库目录 如：jquery
      │   ├── tpl/ 模板目录
      │   └── seajs/ 
      └── index.html
</pre>
                  </section>
                  
                  <p><strong>源码：</strong><a href="">1</a></p>
                </div>
                