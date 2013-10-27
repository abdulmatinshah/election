module Importer
   extend ActiveSupport::Concern

   

   module ClassMethods
    def to_csv(options={})
      CSV.generate(options) do |csv|
      csv << column_names
      all.each do |uc|
        csv << uc.attributes.values_at(*column_names)
      end
      end
    end

    def import(file)
    spreadsheet = open_sheet(file)
    header = spreadsheet.row(1)
    
    (2..spreadsheet.last_row).each do |i|
      row_hash = Hash[[header, spreadsheet.row(i)].transpose]
      uc = find_by_id(row_hash["id"]) || new
      uc.update row_hash
     end
   end


     def open_sheet(file)
    case File.extname(file.original_filename)
    when ".csv" then Roo::CSV.new(file.path)
    when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
    when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
    else raise "Unknown file type: #{file.original_filename}."
    end
  end 

   end #ClassMethods

end