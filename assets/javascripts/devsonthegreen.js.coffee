scrollOptions = axis: 'xy', easing: 'easeInOutSine', duration: 1800

$ ->
  $('.js-scroll-menu').on 'click', 'li', (event)->
    target = $(event.currentTarget).data('target')
    $('.js-container').scrollTo(".#{target}", scrollOptions)

  $('.container .view').css 'width', $('html').css('width')
  $('.container .view').css 'height', $('html').css('height')

