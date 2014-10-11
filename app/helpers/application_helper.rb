module ApplicationHelper
  def form_errors(form_model, model_name="form")
    render :partial => "layouts/form_errors", :locals => {:form_model => form_model, :model_name => model_name}
  end
  
  def page_title
    if @page_title.present?
      raw "#{@site_title} - #{@page_title}"
    else
      @site_title
    end
  end
  
  def page_description
    if @page_description.present?
      raw @page_description
    else
      raw "#{@site_tagline_lower} Add your own face to the gallery for free."
    end
  end
  
  def blurb
    if @blurb.present?
      @blurb
    else
      "#{@site_tagline_lower}"
    end
  end
end
