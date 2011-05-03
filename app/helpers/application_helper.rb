module ApplicationHelper
  # Creates a submit button with the given name with a cancel link
  # Accepts two arguments: Form object and the cancel link name
  def submit_or_cancel(form, name=t('general.cancel'))
    form.submit + " #{t('general.or')} " + link_to(name, 'javascript:history.go(-1);', :class => 'cancel')
  end
  
  def avatar_url(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      default_url = "#{root_url}images/guest.png"
      gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
      "http://gravatar.com/avatar/#{gravatar_id}.png?s=48&d=#{CGI.escape(default_url)}"
    end
  end
  
  def facebook_like
              content_tag :iframe, nil, :src => "http://www.facebook.com/plugins/like.php?href=#{CGI::escape(request.url)}&layout=standard&show_faces=true&width=450&action=like&font=arial&colorscheme=light&height=80", :scrolling => 'no', :frameborder => '0', :allowtransparency => true, :id => :facebook_like
            end
  
  def language_selector
    if I18n.locale == :en
      link_to "Pt", url_for(:locale => 'pt-br')
    else
      link_to "En", url_for(:locale => 'en')
    end
  end
end