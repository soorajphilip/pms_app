module ApplicationHelper

  def toastr_flash
    flash.each_with_object([]) do |(type, message), flash_messages|
      type = 'success' if type == 'notice'
      type = 'error' if type == 'alert'
      text = "<script>toastr.#{type}('#{message}', '', { closeButton: true, progressBar: true, timeOut: 2500 })</script>"
      flash_messages << text.html_safe if message
    end.join("\n").html_safe
  end

  def active_link url
    'active' if current_page?(url)
  end
end
