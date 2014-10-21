module ApplicationHelper
      # Returns the full_title on a per-page basis.
    def full_title(page_title)
        base_title = "Annai Arts and Science College"
        if page_title.empty?
        base_title
        else
        "#{base_title} | #{page_title}"
        end
    end
   
end
