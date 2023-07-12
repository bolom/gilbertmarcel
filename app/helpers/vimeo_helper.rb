module VimeoHelper
  def extract_vimeo_id(url)
    url.split("/").last
  end
end
