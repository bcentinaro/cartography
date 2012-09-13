require 'nokogiri'
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
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.urlset(:xmlns=>"http://www.sitemaps.org/schemas/sitemap/0.9"){
          @urls.each do |url|
            xml.url{
              xml.loc_ "#{@baseUrl}#{url[:url]}"
              unless url[:lastmod].nil?
                xml.lastmod url[:lastmod].to_s
              end
              unless url[:changefreq].nil?
                xml.changefreq url[:changefreq].to_s
              end
              unless url[:priority].nil?
                xml.priority url[:priority].to_s
              end
            }
          end
        }
      end

      return builder.to_xml
    end

    # writes an XML string of the sitemap to the specified file.
    def to_file(path)
      return 
    end

    #Adds a url to the array of urls.
    def add(url, lastmod = nil, changefreq = nil, priority = nil)
      @urls << {:url => url, :lastmod => lastmod, :changefreq => changefreq, :priority => priority}
    end
  end
end