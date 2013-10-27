class Download < ActiveRecord::Base
	has_attached_file 	:path,
						:storage => :dropbox,
						:dropbox_credentials => "#{Rails.root}/config/dropbox_config.yml",
						:dropbox_options => { :path => proc {"pdfs/#{id}_#{path.original_filename}" },
											  :unique_filename => true  
											}
end
