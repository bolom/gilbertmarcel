# Theme configuration file
# ========================
# This file is used for all theme configuration.
# It's where you define everything that's editable in Spina CMS.
Spina::Theme.register do |theme|
  # All views are namespaced based on the theme's name
  theme.name = "default"
  theme.title = "Default theme"

  # Parts
  # Define all editable parts you want to use in your view templates
  #
  # Built-in part types:
  # - Line
  # - MultiLine
  # - Text (Rich text editor)
  # - Image
  # - ImageCollection
  # - Attachment
  # - Option
  # - Repeater
  theme.parts = [
    {
      name: "text",
      title: "Body",
      hint: "Your main content",
      part_type: "Spina::Parts::Text"
    },
    {
      name: "journal_image",
      title: "Journal Image",
      hint: "Your image",
      part_type: "Spina::Parts::Image"
    },
    {
      name: "journal_preview_description",
      title: "Journal Preview Description",
      hint: "Preview Description",
      part_type: "Spina::Parts::Text"
    },
    {
      name: "journal_description",
      title: "Journal Description",
      hint: "Journal Description",
      part_type: "Spina::Parts::Text"
    },
    {
      name: "description",
      title: "Art Gallery Description",
      hint: "Art Gallery Description",
      part_type: "Spina::Parts::Text"
    },
    {
      name: "image",
      title: "Art Gallery Image",
      part_type: "Spina::Parts::Image"
    },
    {
      name: "description_1",
      title: "Art Description #1",
      hint: "Art Description #1",
      part_type: "Spina::Parts::Text"
    },
    {
      name: "image_1",
      title: "Art Image #1",
      part_type: "Spina::Parts::Image"
    },
    {
      name: "description_2",
      title: "Art Description #2",
      hint: "Art Description #2",
      part_type: "Spina::Parts::Text"
    },
    {
      name: "image_2",
      title: "Art Image #2",
      part_type: "Spina::Parts::Image"
    },
    {
      name: "description_3",
      title: "Art Description #3",
      hint: "Art Description #3",
      part_type: "Spina::Parts::Text"
    },
    {
      name: "image_3",
      title: "Art Image #3",
      part_type: "Spina::Parts::Image"
    },
    {
      name: "art_image",
      title: "Art Big Picture",
      part_type: "Spina::Parts::Image"
    },
    {
      name: "art_description",
      title: "Art Big Picture Description",
      part_type: "Spina::Parts::Text"
    },
  ]

  # View templates
  # Every page has a view template stored in app/views/my_theme/pages/*
  # You define which parts you want to enable for every view template
  # by referencing them from the theme.parts configuration above.
  theme.view_templates = [
    {name: "homepage", title: "Homepage", parts: %w[text]},
    {name: "journal_items", title: 'Journal', parts: %w(journal_preview_description journal_description journal_image)},
    {name: "art_preview_items", title: 'Art Preview', parts: %w(description_1 image_1 description_2 image_2 description_3 image_3)},
    {name: "art_gallery_items", title: 'Art Gallery', parts: %w(description image)},
    {name: "art_big_picture", title: 'Art Big Picture', parts: %w(art_description art_image)},
    {name: "show", title: "Page", parts: %w[text]}
  ]

  # Custom pages
  # Some pages should not be created by the user, but generated automatically.
  # By naming them you can reference them in your code.
  theme.custom_pages = [
    {name: "homepage", title: "Homepage", deletable: false, view_template: "homepage"},
    {name: 'journal_items', title: "Journal", deletable: true, view_template: "journal_items"},
    {name: 'art_preview_items', title: "Art Preview", deletable: true, view_template: "art_preview_items"},
    {name: 'art_gallery_items', title: "Art Gallery", deletable: true, view_template: "art_gallery_items"},
    {name: 'art_big_picture', title: "Art Big Picture", deletable: true, view_template: "art_big_picture"}
  ]

  # Navigations (optional)
  # If your project has multiple navigations, it can be useful to configure multiple
  # navigations.
  theme.navigations = [
    {name: "main", label: "Main navigation"}
  ]

  # Layout parts (optional)
  # You can create global content that doesn't belong to one specific page. We call these layout parts.
  # You only have to reference the name of the parts you want to have here.
  theme.layout_parts = []

  # Resources (optional)
  # Think of resources as a collection of pages. They are managed separately in Spina
  # allowing you to separate these pages from the 'main' collection of pages.
  theme.resources = [
    {name: 'journal_items', label: "Journal", view_template: "journal_items", slug: "journal"},
    {name: 'art_preview_items', label: "Art Preview", view_template: "art_preview_items", slug: "art_preview_items"},
    {name: 'art_gallery_items', label: "Art Gallery", view_template: "art_gallery_items", slug: "art_gallery_items"},
    {name: 'art_big_picture', label: "Art Big Picture", view_template: "art_big_picture", slug: "art_big_picture"}
  ]

  # Plugins (optional)
  theme.plugins = []

  # Embeds (optional)
  theme.embeds = %w(button youtube vimeo)
end
