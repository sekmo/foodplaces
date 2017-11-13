$(document).on 'turbolinks:load', ->
  return unless page.controller() == 'restaurants' &&
    (page.action() == 'new' || page.action() == 'edit')
  $('#add-dish-link').on 'click', (e) ->
    e.preventDefault()
    fields = $(this).attr('data-fields')
    new_id = (new Date).getTime()
    regexp = new RegExp('new_dishes', 'g')
    $(this).before fields.replace(regexp, new_id)
    return
