# FUNCTIONNABILITY
# TESTABILITY
# UNDERSTANDABILITY
# OO DESIGN @ BUSINESS LOGIC

# SCRIPTFILE --------------------------
require 'csv'
require 'byebug'
require 'faker'

# MVC --------------------------
require_relative 'views'
require_relative 'models'
require_relative 'controllers'

controller = KennelController.new
controller.run