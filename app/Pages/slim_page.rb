class SlimPage

  def initialize app
    @app = app
    @layout = true
  end

  def from_template(template_id)
    @template = template_id
    self
  end

  def displaying content
    @content = content
    self
  end

  def has_content?
    !@content.nil?
  end

  def render
    if has_content?
      @app.slim(@template, :locals => @content, :layout => @layout)
    else
      @app.slim(@template, :layout => @layout)
    end
  end

  def without_layout
    @layout = false
    self
  end

  def get_content
    @content
  end

end