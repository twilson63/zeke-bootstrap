# Zeke-Bootstrap

A zeke plugin for twitter bootstrap helpers:  

Example of twitter nav bar:

``` coffeescript
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

```