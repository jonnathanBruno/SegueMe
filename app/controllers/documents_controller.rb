class DocumentsController < ApplicationController
    def download_pdf
        send_file(
          "#{Rails.root}/public/quadrante2015.pdf",
          filename: "QUADRANTE_SEGUE_ME_2015.pdf",
          type: "application/pdf"
        )
    end
    def index
    end
end
