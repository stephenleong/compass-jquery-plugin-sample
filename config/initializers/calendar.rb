require 'jquery/calendar'

ActionView::Helpers::AssetTagHelper.register_javascript_expansion :calendar => ['jquery.calendar.min']

ActionView::Base.send :include, Eventually::Helpers::UiEventHelper
