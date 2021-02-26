module HomeHelper

  def get_user_places(user_id)
    shared_places = User.find(user_id).shares
    received_places = Share.where(receipient_id: user_id)
    shares = shared_places + received_places
    return shares
  end
end
