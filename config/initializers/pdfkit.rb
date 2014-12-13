ActionController::Base.asset_host = Proc.new { |source, request|
  if request.env["REQUEST_PATH"].include? ".pdf"
    "file://#{Rails.root.join('app/assets/stylesheets/bootstrap_and_customization.css.scss')}"
  else
    "#{request.protocol}#{request.host_with_port}"
  end
}