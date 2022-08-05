class ArticlesController < ActionController::Base
	def index
		url = ENV['PRISMIC_API_URL']
		token = ENV['PRISMIC_ACCESS_TOKEN_MASTER_N_RELEASE']
		api = Prismic.api(url, token)
		response = api.query(Prismic::Predicates.at("document.type", "privacy_policy"))
		@documents = response.results
	end
	def about
		url = ENV['PRISMIC_API_URL']
		token = ENV['PRISMIC_ACCESS_TOKEN_MASTER_N_RELEASE']
		api = Prismic.api(url, token)
		response = api.query(Prismic::Predicates.at("document.type", "about"))
		@documents = response.results
	end

end