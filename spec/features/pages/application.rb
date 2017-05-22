module Pages
	class Application
		include RSpec::Matchers
		include Capybara::DSL

		def visit_page
			visit 'http://localhost:50058/Application/Index'
			expect(self).to have_content 'There are 2 many applications currently!'
		end
	end
end