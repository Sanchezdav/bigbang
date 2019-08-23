require "bigbang/version"
require "bigbang/array"

module Bigbang
  class Application
    def call(env)
      `echo debug > debug.txt`;
      [200, {'Content-Type' => 'text/html'},
        ["Hello from big bang framework!"]]
    end
  end
end
