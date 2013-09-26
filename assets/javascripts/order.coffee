$ ->

  $('.get-price').bind 'click', ->
    $('.modal-overlay').unbind 'click'
    $('.modal-overlay').bind 'click', ->
      hide_order_form_with_bg()

    show_order_form()

  $('.order-button').bind 'click', ->


    name = $(@).parent().find('input[name=username]')
    if name.val().length < 2
      name.css 'border', '1px solid red'
      return false
    else
      name.css 'border', 'none'

    phone = $(@).parent().find('input[name=phone]')
    if phone.val().length < 7
      phone.css 'border', '1px solid red'
      return false
    else
      name.css 'border', 'none'

    email = $(@).parent().find('input[name=email]')
    if email.val().length < 7
      email.css 'border', '1px solid red'
      return false
    else
      name.css 'border', 'none'

    $.post '/orders.json', {'order[username]': $('input[name=username]').val(), 'order[phone]': $('input[name=phone]').val(), 'order[email]': $('input[name=email]').val()}, (data) =>


    name.val('')
    phone.val('')
    email.val('')

    alert('Ваш заказ отправлен, мы вам скоро позвоним!')

    false