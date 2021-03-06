# frozen_string_literal: true

require 'solidus_core'
require 'solidus_shipstation'

module SolidusShipstation
  class Engine < Rails::Engine
    include SolidusSupport::EngineExtensions

    isolate_namespace ::Spree

    engine_name 'solidus_shipstation'

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
