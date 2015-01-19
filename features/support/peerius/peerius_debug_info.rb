module PeeriusDebugInfo
  include PageObject
   
    # Returns the tracking page type for the page
    def tracked_as
    # Sometimes debug doesnt show up on the initial load of the page
    # if it's not there refresh the page - added by Tom
    unless @browser.td(:id => 'trackInfo').exists?
    @browser.refresh
    end
    # Sometimes if we refresh search/checkout page it pops up an alert box
    # If alert box popped up, click ok and 'resend the value' - added by Tom
    if !ENV["WINHEADLESS"]
      if @browser.alert.exists? 
      @browser.alert.ok
      end
    end
      begin    
      @browser.td(:id => 'trackInfo').wait_until_present(60)
      return @browser.td(:id => 'trackInfo').text 
      
      rescue Watir::Wait::TimeoutError
       #  @browser.refresh
       #Implicit wait for browser
      browser.driver.manage.timeouts.implicit_wait = 10
      return @browser.td(:id => 'trackInfo').text 
    end
    end

     # Returns an array of the recs that appear in the debug info 
    def debug_recs
        index = 1
        recs = []

        while @browser.td(:id, "rec"+index.to_s+"RefCode").exists? do
            recs.push(index)
            index += 1
        end

        return recs
    end
 
 
	def debug_widget_name
	 return @browser.h2(:xpath => "//*[@id='peeriusDebug']/table[2]/tbody/tr[1]/th/h2").text
	end
end
