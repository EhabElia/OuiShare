class FaqsController < ApplicationController
  include AutoHtml
  def index
    @faq_page = @current_language.faq_page
    @faq_page.text = auto_html(@faq_page.text) { html_escape; image; youtube(:width => 400, :height => 250); link(:target => "_blank", :rel => "nofollow"); simple_format }
  end
end
