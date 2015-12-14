require 'json'

class BS
  get '/' do
    'Battle Ships server salutes you!'
  end

  get '/login.json' do
    puts "User ##{params[:user_id]} logged in."
    content_type :json
    
    {:user_id => params[:user_id],:rooms => {
      :reactor => {
          :slots => [101, 234, 31],
          :upgrades => { :battery => { :level => 1 }, :generator => { :level => 2 }, :conductor => { :level => 3 } }
        },
      :cabin => {
          :slots => [439, 273, 105],
          :upgrades => { :radar => { :level => 3 }, :scan_cycle => { :level => 3 }, :target_lock => { :level => 2 } }
        },
      :engine => {
          :slots => [79, 22, 102],
          :upgrades => { :turbine => { :level => 3 }, :afterburner => { :level => 3 }, :gears => { :level => 2 } }
        },
      :armory => {
          :slots => [34, 987, 10],
          :upgrades => { :ammo_factory => { :level => 3 }, :gun_powder_factory => { :level => 3 }, :reloading_mechanism => { :level => 2 } }
        },
      :saloon => {
          :slots => [304, 209, 555],
          :upgrades => { :chef => { :level => 3 }, :ale => { :level => 3 }, :striptease => { :level => 2 } }
        }
      }
    }.to_json
  end
end
