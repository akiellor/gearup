module Gearup
  module Context
    def asset_url asset
      depend_on_asset asset
      environment.find_asset(asset).digest_path
    end
  end
end

