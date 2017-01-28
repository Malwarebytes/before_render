module RailsBeforeRender
  module BeforeRenderInstance
    extend ActiveSupport::Concern

    def self.prepended(base)
      base.class_eval { define_callbacks :render }
    end

    def render(*opts, &blk)
      run_callbacks(:render) { super }
    end

  end
end

ActionController::Base.prepend RailsBeforeRender::BeforeRenderInstance
