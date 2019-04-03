$(document).on('turbolinks:load', function() {
	$('.new-link').on('ajax:success', function(e) {
		$('.new').html(e.detail[2].responseText)
	})
	$('.list').on('ajax:success', '.edit-link', function(e) {
		$(this).closest('.list-item').find('.edit').html(e.detail[2].responseText)
	})

	$('.new').on('ajax:success', 'form', function(e) {
		$('.list').append(e.detail[2].responseText)
		$(this).remove()
	})
	$('.list').on('ajax:success', 'form', function(e) {
		$(this).closest('.list-item').replaceWith(e.detail[2].responseText)
	})
	$('.list, .new').on('click', '.cancel-link', function() {
		$(this).closest('form').remove()
	})
	$('.list').on('ajax:success', '.delete-link', function() {
		$(this).closest('.list-item').remove()
	})
})
