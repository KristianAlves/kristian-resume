class Project < ApplicationRecord
	has_attached_file :image,
	    :styles => {
	      :thumb => "100x100#",
	      :small  => "150x150>",
	      :medium => "200x200#" }



  # Validate content type
  validates_attachment_content_type :image, :content_type => /\Aimage/

  # Validate filename
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]

  # Explicitly do not validate
  do_not_validate_attachment_file_type :image

end
