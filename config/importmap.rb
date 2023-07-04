# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin "jquery", to: "https://ga.jspm.io/npm:jquery@3.7.0/dist/jquery.js"
pin "aos", to: "https://ga.jspm.io/npm:aos@2.3.4/dist/aos.js"
pin "slick", to: "https://ga.jspm.io/npm:slick@1.12.2/index.js"
pin "gsap", to: "https://ga.jspm.io/npm:gsap@3.12.2/index.js"

pin_all_from "app/javascript/controllers", under: "controllers"
pin_all_from "app/javascript/custom", under: "custom"
