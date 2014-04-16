# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

onAuthorize ->
  updateLoggedIn()
  $("#output").empty()
  Trello.members.get "me", (member) ->
    $("#fullName").text member.fullName
    $cards = $("<div>").text("Loading Cards...").appendTo("#output")
    
    # Output a list of all of the cards that the member 
    # is assigned to
    Trello.get "members/me/cards", (cards) ->
      $cards.empty()
      $.each cards, (ix, card) ->
        $("<a>").attr(
          href: card.url
          target: "trello"
        ).addClass("card").text(card.name).appendTo $cards
        return

      return

    return

  return

updateLoggedIn ->
  isLoggedIn = Trello.authorized()
  $("#loggedout").toggle not isLoggedIn
  $("#loggedin").toggle isLoggedIn

logout ->
  Trello.deauthorize()
  updateLoggedIn()

Trello.authorize
  interactive: false
  success: onAuthorize

$("#connectLink").click ->
  alert "hooray"
  Trello.authorize
    type: "popup"
    success: onAuthorize

$("#disconnect").click logout
