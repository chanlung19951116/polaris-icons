$LOAD_PATH.unshift(File.expand_path("../../lib", __FILE__))

require "polaris_icons"

require "minitest/autorun"
require "mocha/minitest"
require "minitest/reporters"

require 'test_helper/fixtures'
require 'test_helper/temporary'

Minitest::Reporters.use!(Minitest::Reporters::SpecReporter.new)
