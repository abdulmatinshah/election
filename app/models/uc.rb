class Uc < ActiveRecord::Base
  include Importer
  
  has_many :candidates
  has_many :stations
  has_many :villages
  
  accepts_nested_attributes_for :candidates

  scope :teh, -> (i) { where(tehsil_id: i) }
  scope :rural, -> { where(type_id: 1)}
  scope :urban, -> { where(type_id: 2)}

#def self.to_csv(options={})
  #   CSV.generate(options) do |csv|
  #     csv << column_names
  #     all.each do |uc|
  #       csv << uc.attributes.values_at(*column_names)
  #     end
  #   end
  # end
  # def self.import(file)
  #   spreadsheet = open_sheet(file)
  #   header = spreadsheet.row(1)
  #   (2..spreadsheet.last_row).each do |i|
  #     row_hash = Hash[[header, spreadsheet.row(i)].transpose]
  #     uc = find_by_id(row_hash["id"]) || new
  #     uc.update row_hash
     
  #    end
  # end
      # raise row_hash['id'].inspect if row_hash["uc"] != nil
      


    #__________________________________________  next unless row_hash["uc"] != nil
      #      uc = find_by_id(row_hash["id"]) || new
      #      uc.name = row_hash["uc"]
      #      uc.id = row_hash["id"]
      #     uc.save# id = row_hash.delete("id")
      # # __________________________________________
       
       # raise uc.inspect
     
      
      # uc = find_by_id(row_hash["id"]) || new
      # uc.update row_hash
    

    # ----- WHORKING CSV IMPORT METHOD -------------------------
    # CSV.foreach(file.path, headers: true) do |row|
    #   uc = find_by_id(row["id"]) || new
    #   uc.update row.to_hash
    # end
    # ----- END WHORKING CSV IMPORT METHOD -------------------------

      # speadsheet = open_sheet(file)
      # header = speadsheet.row(1)
      # (2..speadsheet.last_row).each do |i|
      #   row = Hash[[header, speadsheet.row(i)].transpose]
      #   id = row.delete('S.No.').to_i
      #   council = find_by_id(1) || new
      #   council.attributes = row.to_hash.slice(*accessible_attributes)
      #   raise council.attributes
      #   council.save
      #   raise  'saved'
      #   # council.attributes = row.to_hash.slice(*accessible_attributes)
      # end
     
    # ------ above methods can be added to import _________________
  
end
