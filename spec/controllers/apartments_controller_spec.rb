require 'rails_helper'

describe ApartmentsController, type: :controller do
	describe "Apartments" do
		
		let!(:apt1) { FactoryBot.create(:Apartment, address: '4 E 51st St, New York, NY 10022', rent: 6170.0, beds: 2, bath: 2, sqft: 150000) }
		let!(:apt2) { FactoryBot.create(:Apartment, address: '61 E 77st St, New York, NY 10075', rent: 6981.0, beds: 1, bath: 2, sqft: 49000) }


		context 'An apartment listing has been added to the DB' do
	      		it 'should appear on the apartments page' do
	        		expect(page).to have_content(apt1.title)
	      		end
	    	end
		
	end
end
