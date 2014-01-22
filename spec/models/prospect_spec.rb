# == Schema Information
#
# Table name: prospects
#
#  id                  :integer          not null, primary key
#  company_name        :string(255)
#  contact             :string(255)
#  contact_email       :string(255)
#  contact_title       :string(255)
#  company_description :text
#  company_url         :string(255)
#  company_image_url   :text
#  company_bcorp_url   :string(255)
#  responded           :boolean
#  created_at          :datetime
#  updated_at          :datetime
#

require 'spec_helper'

describe Prospect do
  pending "add some examples to (or delete) #{__FILE__}"
end
