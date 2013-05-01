# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery(->

	window.scanner = new Scanner()
	window.book_obj = new Books()
	window.pager = new CurrentPage()


	#Add in the appropriate scanners
	scanner.add_scanner(book_obj.scan())

	#Create all the templates
	book_obj.layouts()

	pager.update(pager.page) #start with the default page
)


class Scanner

	scanners: {}

	constructor: ->
		window.layouts = {}
		window.scanners = @scanners
		jQuery('body').off()
		jQuery('body').on('dom:change', ->
			for key, scan of scanners
				scan()
		)

	add_scanner: (scanner) ->
		@scanners[scanner.key] = scanner.scanner

	scan: ->
		for key, scanner of @scanners
			scanner()

class CurrentPage

	page: 'books#index'

	constructor: ->
		window.pager = @
		jQuery('body').on('books:add', (e) -> 
			window.pager.update('books#add')	
		)
		jQuery('body').on('books:edit', (e) -> 
			window.pager.update('books#edit')
		)
		jQuery('body').on('books:remove', (e) -> 
			window.pager.update('books#remove')
		)
		jQuery('body').on('books:search', (e) -> 
			window.pager.update('books#search')
		)

	update: (page) ->
		@page = page
		jQuery('body').trigger("page:update")
		[controller, method] = page.split('#')
		switch controller
		  when "books" then book_obj.update(method)
		  when "author" then debugger


class Books

	update: (method) ->
		switch method 
			when 'index' then book_obj.index()
			when 'search' then book_obj.search()
			when 'remove' then book_obj.remove()

	index: ->
		jQuery.get("/books.json", (data) ->
			book_index_template = _.template(layouts["books:index"])
			jQuery("#main_target").html(
				book_index_template({books: data})
			)
			jQuery('body').trigger('dom:change')
		)

	search: ->
		jQuery("body").append(layouts["books:search"]) unless jQuery("#search_box").length > 0
		jQuery('body').trigger('dom:change')
		jQuery("body").on("page:update", ->
			jQuery("#search_box").remove()
		)
		jQuery("body").on("books:submit_search", (e) ->
			unless _.isEmpty(jQuery("#title_search").val())
				jQuery.get("/books/search", {search_term: jQuery("#title_search").val()}, (data) ->
					jQuery("#search_results").remove() #get rid of old results
					result_template = _.template(layouts["books:search_results"])
					jQuery("#search_box").append(result_template({books: data}))
				)
		)

	remove: ->
		###
			For PUT or DELETE routes, use POST with an extra _method: 'DELETE'
			or _method: 'PUT' to get proper routing
		###
		jQuery.post("/books/remove", { _method:'DELETE'}, (data, status) ->
			debugger;
		)

	layouts: ->
		layouts['books:index'] = """
		<h1>Book Index</h1>
		<ul>
		 <% _.each(books, function(book) { %>
		 	 <li id="book_id_<%= book.id %>" > <%= book.title %></li> 
		 <%})%>
		</ul>

		<p></p>
		<span id='add_book' class='button'>Add Book</span>
		<span id='edit_book' class='button'>Edit Book</span>
		<span id='remove_book' class='button'>Remove Book</span>
		<span id='search_book' class='button'>Search Books</span>
		"""
		layouts['books:search'] = """
		<div id='search_box'>
			<h3>Search Books by Title:</h3>
			<input type="text" id="title_search">
			<span class='button' id='submit_search'>Search Titles</span>
		</div>
		"""
		layouts['books:search_results'] = """
		<div id='search_results'>
			<ul>
			 <% _.each(books, function(book) { %>
			 	 <li id="book_id_<%= book.id %>" > <%= book.title %></li> 
			 <%})%>
			</ul>
		</div>
		"""

	scan: ->
		{
			key: 'books',
			scanner: ->
				jQuery("#add_book").off()
				jQuery("#add_book").click( -> jQuery('body').trigger('books:add'))
				jQuery("#edit_book").off()
				jQuery("#edit_book").click( -> jQuery('body').trigger('books:edit'))
				jQuery("#remove_book").off()
				jQuery("#remove_book").click( -> jQuery('body').trigger('books:remove'))
				jQuery("#search_book").off()
				jQuery("#search_book").click( -> jQuery('body').trigger('books:search'))
				jQuery("#submit_search").off()
				jQuery("#submit_search").click( -> jQuery('body').trigger('books:submit_search'))
		}





