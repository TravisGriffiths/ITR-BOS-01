################################################################################
# Project Desgin: Creating a backend design. For your project, think of the 
# things that need to be saved over time in the database. Things that are only
# needed while a user is logged in, but not required afterwards probably does
# not need to be included. Once you have a list of the items that you need to 
# track between logins, think about what about them needs to be stored.
#
# Example: Application for tracking user expenses
# Need: User -> Name as string, Address as String, Birthday as Date
# Expenses: Expense -> Description as String, Date as Date, Amount as Float
# NOTE:
# 1) Note that for each of items we want to store, we are assigning a known
#    class to it.
# 2) None of the items should be of an enumerable class, i.e. Array or Hash,
#    usually the enumerable should be an entire item in and of itself, like
#    Expenses.
# 
# Now think of how these things relate to each other, try to use the phrases:
# 'has one'
# 'has many'
# 'belongs to' or
# 'has and belongs to many'
#
# For our example expenses application we could say that each User 'has many'
# Expenses, and each Expense 'belongs to' a single user.
#
# Example Result
# User -> Name as string, Address as String, Birthday as Date
# User has many Expenses
#
# Expenses: Expense -> Description as String, Date as Date, Amount as Float
# Expense belongs to a User
#
# 2) Build out a scaffold of one or more of these object using the:
#
#    rails generate scaffold Expenses title:string author:string price:float
#
#	 command. To review use this video: http://www.youtube.com/watch?v=USfKteP-eVo 
#    or look here: http://guides.rubyonrails.org/command_line.html
#    and feel free to search up your own supporting documentation online.
#		
# 3) Start laying out an example page or pages for your project in 
# raw HTML and CSS, make note using comments (<!-- HTML COMMENT -->) of where
# content currently being filled in as a static example would be dynamic. If 
# possible, relate these back to your persistant items named in the first part.
#
# 4) Stretch Goal: If you can, try to use some of javascript and ajax actions 
#    we started looking at in class.
#
################################################################################

