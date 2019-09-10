module ApplicationHelper

  def copyright_generator
    SkeezyViewTool::Renderer.copyright 'Scott Young', 'All rights reserved'
  end

end
