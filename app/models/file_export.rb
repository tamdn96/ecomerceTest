class FileExport < ApplicationRecord
  mount_uploader :file, FileUploaderUploader
end
