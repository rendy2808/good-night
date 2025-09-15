class ClockInRepository
  class << self
    def create(user_id, clock_in_type)
      ClockIn.create!(user_id: user_id, clock_in_type: clock_in_type.to_sym)
    end

    def where_user_id_last(user_id)
      ClockIn.where(user_id: user_id).order(created_at: :desc).first
    end

    def where_user_id(user_id)
      ClockIn.where(user_id: user_id).order(created_at: :desc)
    end
  end
end
