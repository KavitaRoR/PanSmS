WickedPdf.config = {
    :wkhtmltopdf => '/home/dipali/Downloads/fedena-v2.3-bundle-linux/pdfbin/wkhtmltopdf-i386', 
    :layout => "pdf.html",
    :margin => {    :top=> 40,
                    :bottom => 20,
                    :left=> 30,
                    :right => 30},
    :header => {:html => { :template=> 'layouts/pdf_header.html'}},
    :footer => {:html => { :template=> 'layouts/pdf_footer.html'}},
    :exe_path => "#{RAILS_ROOT}/wkhtmltopdf/wkhtmltopdf.exe"
}
