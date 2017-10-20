module ReverseMarkdown
  module Converters
    class Ol < Base
      def convert(node, state = {})
        ol_count = state.fetch(:ol_count, 0) + 1
        children_content = treat_children(node, state.merge(ol_count: ol_count))
        "\n\n#{children_content}\n\n"  
      end
    end

    register :ol, Ol.new
    register :ul, Ol.new
  end
end
