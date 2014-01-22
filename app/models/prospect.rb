class Prospect < ActiveRecord::Base

	def self.import(file)
	  spreadsheet = Roo::Spreadsheet.open(file.path, extension: :xlsx)
	  header = spreadsheet.row(1)
	  (2..spreadsheet.last_row).each do |i|
	    row = Hash[[header, spreadsheet.row(i)].transpose]
	    prospect = find_by_company_name(row["company_name"]) || new
	    prospect.attributes  = { 
	    	:company_name => row["company_name"], 
	    	:company_description => row["company_description"], 
	    	:company_image_url=>row["company_image_url"],
	    	:company_bcorp_url=>row["company_bcorp_url"] 
	    }
	    prospect.save!
	  end
	end
end
