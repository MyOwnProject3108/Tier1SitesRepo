module Smartmanager
    class FirstLoginPage
      include PageObject
      include PeeriusHelper

      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/login.page"
      direct_url URL
	  div(:page_identifier, :id => "loginForm")

	  def tracked_as
	   return "FirstLoginPage"
	  end
    end
end

