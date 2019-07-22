require "application_system_test_case"

class AuctionsTest < ApplicationSystemTestCase
  setup do
    @auction = auctions(:one)
  end

  test "visiting the index" do
    visit auctions_url
    assert_selector "h1", text: "Auctions"
  end

  test "creating a Auction" do
    visit auctions_url
    click_on "New Auction"

    fill_in "Collectible", with: @auction.collectible_id
    fill_in "Current bidding", with: @auction.current_bidding
    fill_in "Number of bidding", with: @auction.number_of_bidding
    fill_in "Previous bidding", with: @auction.previous_bidding
    click_on "Create Auction"

    assert_text "Auction was successfully created"
    click_on "Back"
  end

  test "updating a Auction" do
    visit auctions_url
    click_on "Edit", match: :first

    fill_in "Collectible", with: @auction.collectible_id
    fill_in "Current bidding", with: @auction.current_bidding
    fill_in "Number of bidding", with: @auction.number_of_bidding
    fill_in "Previous bidding", with: @auction.previous_bidding
    click_on "Update Auction"

    assert_text "Auction was successfully updated"
    click_on "Back"
  end

  test "destroying a Auction" do
    visit auctions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Auction was successfully destroyed"
  end
end
