require 'csv'

class Companies::UsersController < ApplicationController
  include ZipTricks::RailsStreaming

  def index
    @company = Company.find(params[:company_id])

    file_name = "#{@company.name.parameterize}_#{Time.zone.now.to_i}.zip"
    send_file_headers! filename: file_name

    zip_tricks_stream do |zip|
      zip.write_deflated_file('users.csv') do |sink|
        CSV(sink) do |csv_write|
          csv_write << User.column_names

          @company.users.find_each do |user|
            csv_write << user.attributes.values
          end
        end
      end
    end
  end
end
