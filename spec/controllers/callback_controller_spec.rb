require 'rails_helper'

RSpec.describe CallbackController, type: :controller do

  it 'should show index' do
    get :index
    expect(response).to have_http_status(:ok)
  end

end
