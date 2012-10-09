# Zeke-Bootstrap

A zeke plugin for twitter bootstrap helpers:  

# How to Install

``` sh
npm install zeke --save
npm install zeke-bootstrap --save
```

# Usage

In you application require zeke and zeke-bootstrap, then use the use method to add the zeke-bootstrap plugin to your zeke coffeekup compiler.

``` coffeescript
zeke = require('zeke')
zb = require('zeke-bootstrap')

zeke.use(zb) # this inserts the bootstrap plugin into the zeke compiler

```

Example of twitter nav bar:

``` coffeescript
zeke.render ->
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

# More Info

[See Zeke](http://twilson63.github.com/zeke/)

## Tests

``` sh
npm test
``` 

## License

MIT/X11.

## contribute

everyone is welcome to contribute with patches, bugfixes and new features

1. create an [issue](https://github.com/twilson63/zeke-bootstrap/issues) on github so the community can comment on your idea
2. fork `zeke` in github
3. create a new branch `git checkout -b my_branch`
4. create tests for the changes you made
5. make sure you pass both existing and newly inserted tests
6. commit your changes
7. push to your branch `git push origin my_branch`
8. create a pull request

## Thanks

* [Nodejitsu](http://github.com/flatiron/broadway) - For Broadway!
* [Kris Windham](https://github.com/gradus) - For keeping CoffeeKup alive
* [Maurice Machado](https://github.com/mauricemach) - For creating CoffeeKup
* [Mark Hahn](https://github.com/mark-hahn) - For putting together solid beginners documentation
* Open Source Community