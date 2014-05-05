# modified by baham  baham.co

require './plugins/post_filters'

module AppendFooterFilter
  def append(post)
     author = post.site.config['author']
     url = post.site.config['url']
     pre = post.site.config['original_url_pre']
     license = post.site.config['license_url']
     lic_name = post.site.config['license_name']
     post.content + %Q[<p class='post-footer' style="font-size:70%;" >
			<br/>
            <br/>
            #{pre or "The Original Link:"}
            <a href='#{post.full_url}'>#{post.full_url}</a><br/>
            <br/>
            If you want to reprint it, please do under the  <a href=#{license}>#{lic_name}</a>.
            
			
            </p>]
            #&nbsp;Posted at <a href='#{url}'>#{url}</a><br/>
            #&nbsp;Written by <a href='#{url}'>#{author}</a>
            #&nbsp;Keywords : {{ page.keywords }}
  end 
end

module Jekyll
  class AppendFooter < PostFilter
    include AppendFooterFilter
    def pre_render(post)
      post.content = append(post) if post.is_post?
    end
  end
end

Liquid::Template.register_filter AppendFooterFilter