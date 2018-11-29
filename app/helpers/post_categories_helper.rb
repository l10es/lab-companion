module PostCategoriesHelper
    def allow_to_admin_member
        if !current_member || current_member.name != "admin"
            redirect_to :member_root
            return
        end
    end
end
