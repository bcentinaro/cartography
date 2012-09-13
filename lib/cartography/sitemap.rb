module Cartography
  class Sitemap
    def initialize(baseUrl, options = {})
      @options = {}
      @options.merge(options)
      @baseUrl = baseUrl
      @urls = []
    end

    # Returns an XML string of the sitemap
    def to_s
      return ''
    end

    # writes an XML string of the sitemap to the specified file.
    def to_file(path)
      return 
    end

    #Adds a url to the array of urls.
    def add(url, lastmod, changefreq, priority)
      @urls << {:url => url, :lastmod => lastmod, :changefreq => changefreq, :priority => priority}
    end
  end
end