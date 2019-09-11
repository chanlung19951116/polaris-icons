require 'test_helper'
require 'fileutils'
require 'yaml'

module PolarisIcons
  class SwiftInterfaceGeneratorTest < MiniTest::Test
    include TestHelper::Fixtures
    include TestHelper::Temporary

    def setup
      super
      @subject = SwiftInterfaceGenerator.new
    end

    def test_generate
      # Given
      xcassets_path = File.join(@tmp_dir, "PolarisIcons.xcassets")
      FileUtils.touch(xcassets_path)
      @subject.expects(:swiftgen_available?).returns(true)
      PolarisIcons.expects(:execute).with do |*args|
        swiftgen_config_path = args.pop
        valid_arguments = args == ["swiftgen", "config", "run", "--config"]
        valid_config = swiftgen_config_valid?(swiftgen_config_path, xcassets_path: xcassets_path)

        valid_config && valid_arguments
      end

      # Then
      @subject.generate(asset_catalogs_dir: @tmp_dir)
    end

    def swiftgen_config_valid?(path, xcassets_path:)
      content = YAML.load_file(path)
      expected = {
        "xcassets" => {
          "inputs" => [xcassets_path],
          "outputs" => [
            {
              "templateName" => "swift4",
              "output" => File.join(File.dirname(xcassets_path), "PolarisIcons.swift"),
              "params" => {
                "enumName" => "PolarisIcons"
              }
            }
          ]
        }
      }
      return content == expected
    end
  end
end
