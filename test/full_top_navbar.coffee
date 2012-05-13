assert = require 'assert'
z = require 'zeke'
z.use require '../'
z.init() unless z.initialized

htmlf = (html) -> html.replace /(\n\s+|\n+)/g, ''

result = z.render ->
  topbar ->
    navbar_inner ->
      container ->
        collaspeBtn()
        brandLink '#index', 'CodeRetreatChs'
        div '.nav-collaspe', ->
          ul '#nav.nav', ->
            pageLink '#index', 'Home'
            pageLink '#about', 'About'
            pageLink '#sponsors', 'Sponsors'
            pageLink '#schedule', 'Schedule'
            pageLink '#faq', 'FAQ'
            li '.divider-vertical', ''
            dropdownMenu '#contact', 'Contact', [
              { href: 'http://twitter.com/coderetreatchs', label: '@coderetreatchs' }
              { href: 'mailto://coderetreat@jackhq.com', label: 'coderetreat@jackhq.com' }
              { href: 'tel:843.606.0637', label: '843.606.0637' }
            ]
          a '#btn-sign-up.btn.pull-right', href: 'http://coderetreatchs.eventbrite.com/', 'Register'

output = '''
<div id="navbar" class="navbar navbar-fixed-top">
 <div class="navbar-inner">
   <div class="container">
     <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
       <span class="icon-bar"></span>
       <span class="icon-bar"></span>
       <span class="icon-bar"></span>
     </a>
     <a class="brand pw page-link" href="#index">CodeRetreatChs</a>

     <div class="nav-collapse">
       <ul id="nav" class="nav">
         <li><a class="page-link" href="#index">Home</a></li>
         <li><a class="page-link href="#about"">About</a></li>
         <li><a class="page-link" href="#sponsors">Sponsors</a></li>
         <li><a class="page-link" href="#schedule">Schedule</a></li>
         <li><a class="page-link" href="#faq">FAQ</a></li>
         <li class="divider-vertical"></li>
         <li class="dropdown closed">
             <a href="#contact" class="dropdown-toggle" data-toggle="dropdown">
               Contact
               <b class="caret"></b>
             </a>
             <ul class="dropdown-menu">
               <li>
                 <a href="http://twitter.com/coderetreatchs">@coderetreatchs</a>
               </li>
               <li>
                 <a href="mailto://coderetreat@jackhq.com">coderetreat@jackhq.com</a>
               </li>
               <li>
                 <a href="tel:843.606.0637">843.606.0637</a>
               </li>
             </ul>
         </li>
       </ul>
       <a id="btn-sign-up" class="btn pull-right" href="http://coderetreatchs.eventbrite.com/">Register</a>
     </div>
   </div>
 </div>
</div>
'''
assert.equal result.length, htmlf(output).length