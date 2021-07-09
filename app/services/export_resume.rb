# frozen_string_literal: true

require 'zip'
class ExportResume
  def initialize(user, position, zip_name)
    @user = user
    @position = position
    @zip_name = zip_name
  end

  def generate
    applicants = @position.applicants

    files = []
    applicants.each do |applicant|
      files << save_files_on_server(applicant)
    end

    create_temporary_zip_file(files)
  end

  def save_files_on_server(applicant)
    temp_folder = File.join(Rails.root.join('tmp', 'resumes'))
    FileUtils.mkdir_p(temp_folder) unless Dir.exist?(temp_folder)

    filename = "#{applicant.name.parameterize}-#{applicant.resume.filename}"
    filepath = File.join(temp_folder, filename)
    File.open(filepath, 'wb') { |f| f.write(applicant.resume.download) }
    filepath
  end

  def create_temporary_zip_file(filepaths)
    temp_file = File.open(Rails.root.join('tmp', @zip_name), 'wb')

    begin
      # zip todos os arquivos
      Zip::OutputStream.open(temp_file) { |zos| }

      Zip::File.open(temp_file, Zip::File::CREATE) do |zip|
        filepaths.each do |filepath|
          filename = File.basename filepath
          zip.add(filename, filepath)
        end
      end
    ensure
      temp_file.close
      filepaths.each { |filepath| FileUtils.rm(filepath) }
    end
  end
end
