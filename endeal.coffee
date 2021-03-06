root = global ? window

if root.Meteor.isClient
    # Routes
    Router.route '/', ->
        this.render 'page'
        this.render 'intro', {to: 'content'}

    Router.route '/products', ->
        this.render 'page'
        this.render 'products', {to: 'content'}

    Router.route '/about', ->
        this.render 'page'
        this.render 'about', {to: 'content'}


    Router.route '/connect', ->
        this.render 'page'
        this.render 'connect', {to: 'content'}

    Router.route '/jobs', ->
        this.render 'page'
        this.render 'jobs', {to: 'content'}

    Router.route '/products/patron', ->
        this.render 'page'
        this.render 'patron', {to: 'content'}

    Router.route '/products/patron/privacy-policy', ->
        this.render 'page'
        this.render 'patronPrivacyPolicy', {to: 'content'}

    Router.route '/products/patron/terms-of-service', ->
        this.render 'page'
        this.render 'patronTermsOfService', {to: 'content'}

    Router.route '/products/vendor', ->
        this.render 'page'
        this.render 'vendor', {to: 'content'}
        this.render 'vendorSummary', {to: 'tabSummary'}
        this.render 'vendorFeatures', {to: 'tabFeatures'}
        this.render 'vendorHardware', {to: 'tabHardware'}
        this.render 'vendorPrice', {to: 'tabPrice'}
        this.render 'vendorHelp', {to: 'tabHelp'}

    Router.route '/products/vendor/privacy-policy', ->
        this.render 'page'
        this.render 'patronPrivacyPolicy', {to: 'content'}

    Router.route '/products/vendor/terms-of-service', ->
        this.render 'page'
        this.render 'patronTermsOfService', {to: 'content'}

    # Document Ready
    Template.page.rendered = ->
        $(".button-collapse").sideNav()

    Template.intro.rendered = ->
        $('.slider').slider({full_width: true})

    Template.patron.rendered = ->
        $('.slider').slider({full_width: false,height:563})
        $('.materialboxed').materialbox()

    Template.vendor.rendered = ->
        $('ul.tabs').tabs()
        $('.slider').slider({full_width: false,height:563})

    Template.jobs.rendered = ->
        $('.collapsible').collapsible({accordion:false})
