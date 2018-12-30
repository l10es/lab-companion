module MarkdownHelper

  class HTMLwithCoderay < Redcarpet::Render::HTML
    def block_code(code, language)
        language = language.split(':')[0]

        case language.to_s
        when 'py'
          lang = 'python'
        when 'rb'
            lang = 'ruby'
        when 'yml'
            lang = 'yaml'
        when 'css'
            lang = 'css'
        when 'html'
            lang = 'html'
        when ''
            lang = 'md'
        else
            lang = language
        end

        CodeRay.scan(code, lang).div
    end
  end

  def markdown(text)
    html_renderer = HTMLwithCoderay.new(filter_html: true, hard_wrap: true)
    options = {
        filter_html: true,
        hard_wrap: true,
        space_after_headers: true
    }

    extensions = {
      autolink: true,
      fenced_code_blocks: true,
      lax_spacing: true,
      no_intra_emphasis: true,
      strikethrough: true,
      superscript: true,
      tables: true
    }
    # renderer = Redcarpet::Render::HTML.new(options)
    @markdown = Redcarpet::Markdown.new(html_renderer, extensions)
    @markdown.render(text).html_safe
  end
end