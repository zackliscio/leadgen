json.array!(@prospects) do |prospect|
  json.extract! prospect, :id, :company_name, :contact, :contact_email, :contact_title, :company_description, :company_url, :company_image_url, :company_bcorp_url, :responded
  json.url prospect_url(prospect, format: :json)
end
