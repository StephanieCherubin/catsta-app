class Cat < ActiveRecord::Base
  @@url_base = 'http://thecatapi.com/api'
  api_key = 'MjM5MTgy'

  def self.get_cats
    # class method
    # @@ is class variable
    # @ is an instance variable
		url = @@url_base + "/images/get?format=xml&results_per_page=40"
		return HTTParty.get(url).parsed_response["response"]["data"]["images"]["image"]
	end
end
