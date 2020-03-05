class HeaderPage

    include PageObject
    h2(:welcome_message, id: 'welcome_message')
    div(:heading, class: %w[col text-right])
end