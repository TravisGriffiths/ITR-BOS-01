// Generated by CoffeeScript 1.3.3
var Books, CurrentPage, Scanner;

jQuery(function() {
  window.scanner = new Scanner();
  window.book_obj = new Books();
  window.pager = new CurrentPage();
  scanner.add_scanner(book_obj.scan());
  book_obj.layouts();
  return pager.update(pager.page);
});

Scanner = (function() {

  Scanner.prototype.scanners = {};

  function Scanner() {
    window.layouts = {};
    window.scanners = this.scanners;
    jQuery('body').off();
    jQuery('body').on('dom:change', function() {
      var key, scan, _results;
      _results = [];
      for (key in scanners) {
        scan = scanners[key];
        _results.push(scan());
      }
      return _results;
    });
  }

  Scanner.prototype.add_scanner = function(scanner) {
    return this.scanners[scanner.key] = scanner.scanner;
  };

  Scanner.prototype.scan = function() {
    var key, scanner, _ref, _results;
    _ref = this.scanners;
    _results = [];
    for (key in _ref) {
      scanner = _ref[key];
      _results.push(scanner());
    }
    return _results;
  };

  return Scanner;

})();

CurrentPage = (function() {

  CurrentPage.prototype.page = 'books#index';

  function CurrentPage() {
    window.pager = this;
    jQuery('body').on('books:add', function(e) {
      return window.pager.update('books#add');
    });
    jQuery('body').on('books:edit', function(e) {
      return window.pager.update('books#edit');
    });
    jQuery('body').on('books:remove', function(e) {
      return window.pager.update('books#remove');
    });
    jQuery('body').on('books:search', function(e) {
      return window.pager.update('books#search');
    });
  }

  CurrentPage.prototype.update = function(page) {
    var controller, method, _ref;
    this.page = page;
    jQuery('body').trigger("page:update");
    _ref = page.split('#'), controller = _ref[0], method = _ref[1];
    switch (controller) {
      case "books":
        return book_obj.update(method);
      case "author":
        debugger;
    }
  };

  return CurrentPage;

})();

Books = (function() {

  function Books() {}

  Books.prototype.update = function(method) {
    switch (method) {
      case 'index':
        return book_obj.index();
      case 'search':
        return book_obj.search();
      case 'remove':
        return book_obj.remove();
    }
  };

  Books.prototype.index = function() {
    return jQuery.get("/books.json", function(data) {
      var book_index_template;
      book_index_template = _.template(layouts["books:index"]);
      jQuery("#main_target").html(book_index_template({
        books: data
      }));
      return jQuery('body').trigger('dom:change');
    });
  };

  Books.prototype.search = function() {
    if (!(jQuery("#search_box").length > 0)) {
      jQuery("body").append(layouts["books:search"]);
    }
    jQuery('body').trigger('dom:change');
    jQuery("body").on("page:update", function() {
      return jQuery("#search_box").remove();
    });
    return jQuery("body").on("books:submit_search", function(e) {
      if (!_.isEmpty(jQuery("#title_search").val())) {
        return jQuery.get("/books/search", {
          search_term: jQuery("#title_search").val()
        }, function(data) {
          var result_template;
          jQuery("#search_results").remove();
          result_template = _.template(layouts["books:search_results"]);
          return jQuery("#search_box").append(result_template({
            books: data
          }));
        });
      }
    });
  };

  Books.prototype.remove = function() {
    /*
    			For PUT or DELETE routes, use POST with an extra _method: 'DELETE'
    			or _method: 'PUT' to get proper routing
    */
    return jQuery.post("/books/remove", {
      _method: 'DELETE'
    }, function(data, status) {
      debugger;
    });
  };

  Books.prototype.layouts = function() {
    layouts['books:index'] = "<h1>Book Index</h1>\n<ul>\n <% _.each(books, function(book) { %>\n 	 <li id=\"book_id_<%= book.id %>\" > <%= book.title %></li> \n <%})%>\n</ul>\n\n<p></p>\n<span id='add_book' class='button'>Add Book</span>\n<span id='edit_book' class='button'>Edit Book</span>\n<span id='remove_book' class='button'>Remove Book</span>\n<span id='search_book' class='button'>Search Books</span>";
    layouts['books:search'] = "<div id='search_box'>\n	<h3>Search Books by Title:</h3>\n	<input type=\"text\" id=\"title_search\">\n	<span class='button' id='submit_search'>Search Titles</span>\n</div>";
    return layouts['books:search_results'] = "<div id='search_results'>\n	<ul>\n	 <% _.each(books, function(book) { %>\n	 	 <li id=\"book_id_<%= book.id %>\" > <%= book.title %></li> \n	 <%})%>\n	</ul>\n</div>";
  };

  Books.prototype.scan = function() {
    return {
      key: 'books',
      scanner: function() {
        jQuery("#add_book").off();
        jQuery("#add_book").click(function() {
          return jQuery('body').trigger('books:add');
        });
        jQuery("#edit_book").off();
        jQuery("#edit_book").click(function() {
          return jQuery('body').trigger('books:edit');
        });
        jQuery("#remove_book").off();
        jQuery("#remove_book").click(function() {
          return jQuery('body').trigger('books:remove');
        });
        jQuery("#search_book").off();
        jQuery("#search_book").click(function() {
          return jQuery('body').trigger('books:search');
        });
        jQuery("#submit_search").off();
        return jQuery("#submit_search").click(function() {
          return jQuery('body').trigger('books:submit_search');
        });
      }
    };
  };

  return Books;

})();
