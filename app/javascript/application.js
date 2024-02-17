// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";
import "@popperjs/core";
import "bootstrap";

const startYear = document.getElementById("booking_start_date_1i")
const startMonth = document.getElementById("booking_start_date_2i")
const startDay = document.getElementById("booking_start_date_3i")
const endYear = document.getElementById("booking_end_date_1i")
const endMonth = document.getElementById("booking_end_date_2i")
const endDay = document.getElementById("booking_end_date_3i")

const formTableau = [startYear, startMonth, startDay, endYear, endMonth, endDay]
formTableau.forEach((element) => element.addEventListener("click", numberOfDays, false))

function numberOfDays() {
  const startDate = new Date(startYear.value, startMonth.value - 1, startDay.value)
  const endDate = new Date(endYear.value, endMonth.value - 1, endDay.value)
  const dateDifference = Math.ceil(((endDate - startDate) / 86400000) + 1)

  const numberDays = document.getElementById("number-of-days")
  const priceResult = document.getElementById("price-result")
  const priceTotal = document.getElementById("price-total")

  if (endDate > startDate) {
    numberDays.innerText = dateDifference
    priceResult.innerText = dateDifference * paintPrice
    priceTotal.innerText = (dateDifference * paintPrice) + 200
  } else {
    numberDays.innerText = "1"
    priceResult.innerText = paintPrice
    priceTotal.innerText = paintPrice + 200
  }
}
