require 'spec_helper'
require_relative '../pages/application'
require_relative '../../models/application'

RSpec.feature 'Application' do
  let(:application_page) { ::Pages::Application.new }

  before :example do
    preconfigured_test_application_id = -1
    ::Models::Application.find_by!(ApplicationId: preconfigured_test_application_id)
                         .update_attributes(Status: 87654)

    application_page.visit_page
  end

  scenario 'Check Status Spec' do
    expect(application_page).to have_content '87654'
  end
end