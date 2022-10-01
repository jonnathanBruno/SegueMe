WickedPdf.config ||= {}
WickedPdf.config.merge!({
  :exe_path => "#{Rails.root}/bin/wkhtmltopdf.exe",
  formats: [:pdf]
}) 

#WickedPdf.config = {
#  :exe_path => "#{Rails.root}/bin/wkhtmltopdf.exe",
#  formats: [:pdf]
#}