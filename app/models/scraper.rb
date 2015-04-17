require 'capybara/poltergeist'
require 'capybara/dsl'

class Scraper
  include Capybara::DSL

  def initialize
    Capybara.register_driver :poltergeist_crawler do |app|
      Capybara::Poltergeist::Driver.new(app, {
        :js_errors => false,
        :inspector => false,
        phantomjs_logger: open('/dev/null')
      })
    end
    Capybara.default_wait_time = 3
    Capybara.run_server = false
    Capybara.default_driver = :poltergeist_crawler
    page.driver.headers = {
      "DNT" => 1,
      "User-Agent" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36"
    }
  end

  # handy to peek into what the browser is doing right now
  def screenshot(name="screenshot")
    page.driver.render("public/#{name}.jpg",full: true)
  end

  # find("path") and all("path") work ok for most cases. Sometimes I need more control, like finding hidden fields
  def doc
    Nokogiri.parse(page.body)
  end
 
end