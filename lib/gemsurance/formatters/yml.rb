module Gemsurance
  module Formatters
    class Yml < Base
      def format
        @extension = "yml"
        ERB.new(File.read(output_path), trim_mode: '-').result(binding)
      end
    end
  end
end
