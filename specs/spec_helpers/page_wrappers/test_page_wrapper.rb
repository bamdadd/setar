class TestPageWrapper
  def initialize(page)
    @page = page
  end

  def find_all(selector)
    @page.all(selector)
  end
end