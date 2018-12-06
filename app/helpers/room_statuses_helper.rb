module RoomStatusesHelper
    def allow_to_admin_member
        if !current_member | current_member.name != "Admin"
            redirect_to :member_root
            return
        end
    end
end
