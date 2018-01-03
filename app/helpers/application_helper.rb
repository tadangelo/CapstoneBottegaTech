module ApplicationHelper
	def copyright_generator
		DangeloViewTool::Renderer.copyright '&nbsp Ruby Tutorials, ', ' &nbsp All rights reserved.'
	end
end
