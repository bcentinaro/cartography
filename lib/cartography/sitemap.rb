module Cartography
  class Sitemap
    def initialize(baseUrl, options = {})
      @options = {}
      @options.merge(options)
      @baseUrl = baseUrl
      @urls = {}
    end

    def to_s
      return ''
    end

    def to_file(path)
      return 
    end
  end
end