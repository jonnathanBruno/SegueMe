class DocumentsController < ApplicationController
    def download_pdf_2015
        send_file(
          "#{Rails.root}/public/quadrante2015.pdf",
          filename: "QUADRANTE_SEGUE_ME_2015.pdf",
          type: "application/pdf"
        )
    end

    def download_pdf_2016
      send_file(
        "#{Rails.root}/public/quadrante2016.pdf",
        filename: "QUADRANTE_SEGUE_ME_2016.pdf",
        type: "application/pdf"
      )
    end

    def download_pdf_2017
      send_file(
        "#{Rails.root}/public/quadrante2017.pdf",
        filename: "QUADRANTE_SEGUE_ME_2017.pdf",
        type: "application/pdf"
      )
    end

    def download_pdf_2018
      send_file(
        "#{Rails.root}/public/quadrante2018.pdf",
        filename: "QUADRANTE_SEGUE_ME_2018.pdf",
        type: "application/pdf"
      )
    end

    def download_pdf_2019
      send_file(
        "#{Rails.root}/public/quadrante2019.pdf",
        filename: "QUADRANTE_SEGUE_ME_2019.pdf",
        type: "application/pdf"
      )
    end

    def download_pdf_2022
      send_file(
        "#{Rails.root}/public/quadrante2022.pdf",
        filename: "QUADRANTE_SEGUE_ME_2022.pdf",
        type: "application/pdf"
      )
    end

    def index
    end
end
