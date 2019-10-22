require 'rest-client'
require 'json'

class App
	def initialize
		@http = 'https://translate.yandex.net/api/v1.5/tr.json/translate'
		@key = 'trnsl.1.1.20191022T160047Z.5c685ce004f7e2ce.5c4ebf2db268fdd48bcab9ae14d5f0c002897b61'
		puts 'Texto para traduzir'
		@text = gets
		puts 'Sigla do idioma'
		@lang = gets.chomp
		puts 'Sigla do idioma da tradução'
		@lang += "-" + gets.chomp
		@response = get_response

		generate_file

	end

	def get_response
		response = RestClient.get @http, {
			params: {
				key: @key,
				text: @text,
				lang: @lang,
			}
		}
		return response
	end

	def get_translation
		JSON.parse(@response)['text']
	end

	def generate_file
		file = File.open(Time.now.to_s, 'w') do |f|
			f.puts get_translation
		end
	end
end

app = App.new