Spina::Account.create([
  {name: "Gilbert Marcel", address: nil, postal_code: nil, city: nil, phone: nil, email: nil, preferences: {"theme"=>"default"}, robots_allowed: false, json_attributes: {"en_content"=>[]}, en_content: []}
])
Spina::Page.create([
  {show_in_menu: true, slug: nil, deletable: false, title: 'Home page', name: "homepage", skip_to_first_child: false, view_template: "homepage", layout_template: nil, draft: false, link_url: nil, ancestry: nil, position: 1, active: true, resource_id: nil, json_attributes: {"en_content"=>[]}, ancestry_depth: 0, ancestry_children_count: nil, en_content: []},
  {show_in_menu: true, slug: nil, deletable: true, title: 'Journal items', name: "journal_items", skip_to_first_child: false, view_template: "journal_items", layout_template: nil, draft: false, link_url: nil, ancestry: nil, position: 2, active: true, resource_id: nil, json_attributes: {"en_content"=>[]}, ancestry_depth: 0, ancestry_children_count: nil, en_content: []},
  {show_in_menu: true, slug: nil, deletable: true, title: 'Art preview items', name:  "art_preview_items", skip_to_first_child: false, view_template: "art_preview_items", layout_template: nil, draft: false, link_url: nil, ancestry: nil, position: 3, active: true, resource_id: nil, json_attributes: {"en_content"=>[]}, ancestry_depth: 0, ancestry_children_count: nil, en_content: []},
  {show_in_menu: true, slug: nil, deletable: true, title: 'Art gallery items', name: "art_gallery_items", skip_to_first_child: false, view_template: "art_gallery_items", layout_template: nil, draft: false, link_url: nil, ancestry: nil, position: 4, active: true, resource_id: nil, json_attributes: {"en_content"=>[]}, ancestry_depth: 0, ancestry_children_count: nil, en_content: []},
  {show_in_menu: true, slug: nil, deletable: true, title: 'Art big picture', name: "art_big_picture", skip_to_first_child: false, view_template: "art_big_picture", layout_template: nil, draft: false, link_url: nil, ancestry: nil, position: 5, active: true, resource_id: nil, json_attributes: {"en_content"=>[]}, ancestry_depth: 0, ancestry_children_count: nil, en_content: []}
])
Spina::Resource.create([
  {name: "journal_items", label: "Journal", view_template: "journal_items", order_by: nil, slug: {"en"=>"journal"}},
  {name: "art_preview_items", label: "Art Preview", view_template: "art_preview_items", order_by: nil, slug: {"en"=>"art_preview_items"}},
  {name: "art_gallery_items", label: "Art Gallery", view_template: "art_gallery_items", order_by: nil, slug: {"en"=>"art_gallery_items"}},
  {name: "art_big_picture", label: "Art Big Picture", view_template: "art_big_picture", order_by: nil, slug: {"en"=>"art_big_picture"}}
])
Spina::User.create([
  {name: "admin", email: "admin@domain.com", password_digest: "$2a$12$kIO0pyx8Ckc.Va475c8r1ug1fqCZzlKzQcjL77kKZq6FJi3XMW0GO", admin: true, last_logged_in: nil, password_reset_token: "1CLoHjb98ZjFUPtoqoZ4hmdc", password_reset_sent_at: nil}
])
Spina::Page::Translation.create([
  {spina_page_id: 1, locale: "en", title: "Homepage", menu_title: nil, description: nil, seo_title: nil, materialized_path: "/", url_title: nil},
  {spina_page_id: 2, locale: "en", title: "Journal", menu_title: nil, description: nil, seo_title: nil, materialized_path: "/journal", url_title: nil},
  {spina_page_id: 3, locale: "en", title: "Art Preview", menu_title: nil, description: nil, seo_title: nil, materialized_path: "/art-preview", url_title: nil},
  {spina_page_id: 4, locale: "en", title: "Art Gallery", menu_title: nil, description: nil, seo_title: nil, materialized_path: "/art-gallery", url_title: nil},
  {spina_page_id: 5, locale: "en", title: "Art Big Picture", menu_title: nil, description: nil, seo_title: nil, materialized_path: "/art-big-picture", url_title: nil}
])
