#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#

module Wallis
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.wallis.co.uk/webapp/wcs/stores/servlet/LogonForm?langId=-1&catalogId=33058&storeId=12557&krypto=xf5mdtz4WJO6XV9y38jM6yJBogGY%2F3Si%2FpWHbCSm%2Bb%2FO0EFSpR%2Brvd07kvXjq5PVMJAnlXQ4nwfn%0AjQQyf9FbWFzt8FvkRxltJ%2BaoavNdUBkevETKC9DXrYxEMUEe0RxwJUpC6%2FUFaKQqu%2BHPM63mj2yE%0AK65QmTwe74oday0LRNBUaHG3XlrluWVuYRpd9YSBhP2M89iasBgpQPtw5n3iVuh1KKyxesNPzzJD%0AuvH%2F%2BcOJ%2B8vIO2G4BKEAmHsPbKC%2BeRUwuR1JJrGk7UYayLuL%2BHAnDJRzX7bHcfXt62MiYyAQcTT9%0AM3SRSp9mzopxt0go1JHG%2BA9ZQmwyUR4X1XSrTLCJ%2FMOAk5ODo4MLh9DOZ8bZ0%2FsG14IrWdFwBdA2%0AXHQoudCZ1sXzgRCTS63STuJ1lcZQge19OiTy0DwNA2lhcYr7e9M81GFMa1M%2Bm0ovAKHeQ90YPHUe%0AYv7Y8ZcBtjnJuP8w%2FHPyTLcZ5hHsLbmnd5CX28d3pQoUuq29oIkhRoibdQPnOPZIB1H9YqElDOHS%0AGVe5SPP6G6mIxOi97E3O7ItYsZ3XEEdj77VLvHQ6Ucc3FOgAHZmxfjZnY%2FYmq8GQG8oIRl%2BtbYje%0AU8fApXr%2BIIVPLHAPge7NPMi6fAfiI9n%2Bk%2FJapOorKlaWet730UbCwMIV17V3mdMUnk6plN2Sgsw8%0ATJ9MHR2NHXeTEGsM09ke&ddkey=https:PreCheckout"
      direct_url URL
      
  	  text_field(:username, :id=>"login_email")
      text_field(:password, :id=>"password")  
  	  link(:login_submit, :id=>"login_submit")           
    end  
end

