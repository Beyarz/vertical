prepend = (id, content) =>
  document.getElementById(id).innerHTML = content

prepend('nav',
"""<div class="container is-fluid" style="padding-left:1rem;padding-top:1rem;">
  <nav class="breadcrumb">
    <ul>
      <li class="is-active"><a href="https://github.com/Beyarz/vertical">Github</a></li>
      <li><a class="grey" href="https://github.com/Beyarz/vertical">Beyar</a"></li>
    </ul>
  </nav>
</div>"""
)

prepend('hero',
"""<div class="container" id="logo">
  <h1 class="title">Vertical</h1>
  <h2 class="subtitle">New verticle line every second...</h2>
</div>"""
)
