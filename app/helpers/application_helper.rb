module ApplicationHelper
	def copyright_generator
		DangeloViewTool::Renderer.copyright 'Ruby Tutorials', 'All rights reserved'
	end
end
