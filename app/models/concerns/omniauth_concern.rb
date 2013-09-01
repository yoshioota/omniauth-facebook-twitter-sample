# coding: utf-8

class OmniauthConcern

  def self.handle_omniauth_callback(current_user, auth)
    ua = update_by_omniauth(auth)
    user = user_update_by_user_oauth(current_user, ua)
    [ua, user]
  end

  def self.update_by_omniauth(auth)
    ua       = UserOauth.where(provider: auth['provider'], uid: auth['uid']).first_or_initialize
    ua.value = auth.to_json
    ua.save!
    ua
  end

  def self.user_update_by_user_oauth(current_user, ua)
    if current_user
      user = current_user
      user.user_oauths << ua
    else
      unless user = ua.user
        user_params = {
            #name:    ua.value_hash['info']['name'],
            # first_name: ua.value_hash['info']['first_name'],
            # last_name:  ua.value_hash['info']['last_name'],
            email:    ua.value_hash['info']['email'] || "#{Time.now.to_f.to_s.gsub('.','')}@example.com",
            password: 'test2test'
        }
        user = ua.build_user(user_params)
        user.save!
        ua.save!
      end
    end
    user
  end

end
