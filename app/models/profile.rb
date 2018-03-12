class Profile < ApplicationRecord
	has_attached_file :picture,
	    :styles => {
	      :thumb => "100x100#",
	      :small  => "150x150>",
	      :medium => "200x200",
        :large => "400x400" }



  # Validate content type
  validates_attachment_content_type :picture, :content_type => /\Aimage/

  # Validate filename
  validates_attachment_file_name :picture, :matches => [/png\Z/, /jpe?g\Z/]

  # Explicitly do not validate
  do_not_validate_attachment_file_type :picture

end
