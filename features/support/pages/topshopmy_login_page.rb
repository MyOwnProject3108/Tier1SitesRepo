#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Topshopmy
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://my.topshop.com/webapp/wcs/stores/servlet/LogonForm?langId=-1&catalogId=35113&storeId=13088&krypto=1%2BMUUV55jMjnRUIZdSdTNA%2Bf3eO7EGOkWy%2FB6Hqr5kUauTqUjPVctubLrLN3Htc6XfXXjn1Udw7h%0AsnTxmlUCYNYVWW9YWDZcUUFGaYd8IL3RBMwXvMDp4TwHNrBq8aAZkodDpYo5hpm4sXLas%2Bntr7Kn%0ApOwK7KKPz9i4BQEEJYPVmepcTZB1lkCiRs%2BFU8FuFwHWkrbSocpf3kw07iO2HluMezK9IYjW4qNJ%0ASSPb5zsj1c8GrThotUnMrCTWOxs7%2FFOespDazFwgTolLvF0Mwrxuwnk7Yhv4T%2B5INfkBQG%2Btwcnj%0ACDmxhkLxBWYUdUR0OHjP7gf%2Fpe7dejr0rt5MwhBaMHauT3en6wGfz8E4xOD9XYIXregxVaVhru76%0AdkqE3NWOGXPSeVTz5uJCrqHk7qtyD1CPxc9ct2QaMYoFqmfuR1ozMYGCp%2FQVLnPri0%2BTNZW1sJ54%0AuzGL6Ec4y4PowwM1cEsuCPiR3FGLUB0BfRNL9mQn6Nt4pfyT2LfOAmDbulzAMevAaxGmAvatDbV0%0AsmWm4mqVmTbWHZnNqFlEmW%2FjDDvl22W0zhHtAywqxhjeAThPqGYB9RXV9uBk%2BzEFaIORU2eiO5tL%0AP77Jp2f6RwD%2FEQWTqpfoz3e987DagTxKSLLhTVKgpoX0aDvOS5neMEfFDFr6wrmjLBlndHHOVnbg%0AdG1lCoHJRVDiHwB8090sWgs%2BlWU8eWOxNIfx4NobOBolaZCJTaVd6R%2BQ4Xomj8iB%2B%2FDOhfJOKwHC%0A%2BLZaQL2W&ddkey=https:PreCheckout"
      direct_url URL
      
  	  text_field(:username, :id=>"login_email")
      text_field(:password, :id=>"password")  
  	  link(:login_submit, :id=>"login_submit")           
    end  
end