require 'test/unit'
require 'cartography'

class TestSitemap < Test::Unit::TestCase
  def testAdd
    assert_nothing_raised do
      item = Cartography::Sitemap.new('http://google.com')
      item.add('/search.json')
    end
  end
end