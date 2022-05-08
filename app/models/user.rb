class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable



         def self.import(file)
          spreadsheet = open_spreadsheet(file)
          headers = spreadsheet.row(1)
          spreadsheet.each_with_index do |row, idx|
  next if idx == 0 # skip header
  # create hash from headers and cells
  user_data = Hash[[headers, row].transpose]
  if User.exists?(email: user_data['email'])
    puts "User with email '#{user_data['email']}' already exists"
    next
  end
  
  user = User.new(user_data)
  user.password = SecureRandom.urlsafe_base64
  puts "Saving User with email #{user.email}"
  user.save!
end 
        end
        
        def self.open_spreadsheet(file)
          case File.extname(file.original_filename)
           when '.csv' then Roo::Csv.new(file.path)
           when '.xls' then Roo::Excel.new(file.path)
           when ".xlsx" then Roo::Excelx.new(file.path)
           else raise "Unknown file type: #{file.original_filename}"
          end
        end
end
