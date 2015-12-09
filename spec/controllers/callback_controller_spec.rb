require 'rails_helper'

RSpec.describe CallbackController, type: :controller do

  it 'should show index' do
    get :index
    expect(response).to have_http_status(:ok)
  end

  it 'should render a JavaScript callback' do
    get :calling, formats: [:js]

    expect(response.body).to eq('endOfExec();')
  end

end
