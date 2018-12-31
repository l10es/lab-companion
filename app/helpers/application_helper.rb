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
    if !current_member || current_member.role.id != 1
      redirect_to :member_root
    end
  end

  def allow_to_correct_member
    @member = Member.find(params[:id])
    if current_member.role.id != 1
      unless  current_member.id == @member.id
        redirect_to :member_root
      end
    end
  end

  def active_member!
    if !current_member || current_member.status.id != 1
      redirect_to :member_root
    end
  end
end
