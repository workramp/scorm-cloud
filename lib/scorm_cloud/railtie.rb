require 'rails'
require 'scorm_cloud/scorm_rails_helpers'

class ScormCloud::Railtie < Rails::Railtie

	config.scorm_cloud = ActiveSupport::OrderedOptions.new

	initializer "scorm_cloud.scorm_rails_helpers" do
    ActiveSupport.on_load(:action_controller) do
      ActionController::Base.send :include, ScormCloud::ScormRailsHelpers
    end
	end

end

