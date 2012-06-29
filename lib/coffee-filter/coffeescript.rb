require 'haml'

module Coffee
  module Filter
    module Coffeescript
      include ::Haml::Filters::Base

      lazy_require 'coffee-script'

      def render_with_options(text, options)
        CoffeeScript.compile(text)
      end
    end
  end
end

