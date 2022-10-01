WickedPdf.config ||= {}
WickedPdf.config.merge!({
  layout: "pdf.html.erb"
}) 

#WickedPdf.config = {
#  :exe_path => "#{Rails.root}/bin/wkhtmltopdf.exe",
#  layout: "pdf.html.erb"
#}