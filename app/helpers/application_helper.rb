module ApplicationHelper
  def devise_error_messages
    return "" if resource.errors.empty?
    html = ""
    messages = resource.errors.full_messages.each do |msg|
      html += <<-EOF
        <script>
          var emsg = "<span>#{msg}</span>"
          M.toast({html: emsg, classes: 'rounded'});
        </script>
      EOF
    end
    html.html_safe
  end

  def allow_to_admin_member
    if !current_member || current_member.id != 1
      redirect_to :member_root
    end
  end
end
