module ApplicationHelper
  def markdown(content)
    renderer = Redcarpet::Render::HTML.new(hard_warp: true, filter_html: true)
    options = {
      autolink: true,
      no_intra_emphasis: true,
      disable_indente_code_brackets: true,
      fenced_code_blocks: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true,
    }
    Redcarpet::Markdown.new(renderer, options).render(content).html_safe
  end
end
