module ApplicationHelper
    def full_title(page_title)
     base_title = ""
     if page_title.empty?
       base_title
     else
       "#{base_title} | #{page_title}"
     end
    end
    def message(random)
        message = {0=> 'You need to run away', 1=> 'You are thirsty.', 2=> 'You need to rest.', 3=> 'You need to focus.'}
        message[random]
      end
   end