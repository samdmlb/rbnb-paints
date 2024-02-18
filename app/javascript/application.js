// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";
import "@popperjs/core";
import "bootstrap";

(function () {

  const startYear = document.getElementById("booking_start_date_1i")
  const startMonth = document.getElementById("booking_start_date_2i")
  const startDay = document.getElementById("booking_start_date_3i")
  const endYear = document.getElementById("booking_end_date_1i")
  const endMonth = document.getElementById("booking_end_date_2i")
  const endDay = document.getElementById("booking_end_date_3i")

  const formTableau = [startYear, startMonth, startDay, endYear, endMonth, endDay]
  formTableau.forEach((element) => element.addEventListener("click", bookingPrices, false))


  function bookingPrices() {
    const startDate = new Date(startYear.value, startMonth.value - 1, startDay.value)
    const endDate = new Date(endYear.value, endMonth.value - 1, endDay.value)
    const differenceDate = Math.ceil(((endDate - startDate) / 86400000) + 1)

    const numberDays = document.getElementById("number-of-days")
    const paintPrice = document.getElementById("paint-price").innerText
    const priceResult = document.getElementById("price-result")
    const priceTotal = document.getElementById("price-total")
    const priceReduction = document.getElementById("price-reduction")
    const priceReductionDiv = document.getElementById("price-reduction-div")

    if (endDate > startDate) {
      numberDays.innerText = differenceDate
      priceResult.innerText = differenceDate * paintPrice

      if (differenceDate > 9) {
        const priceReductionValue = Math.ceil(priceResult.innerText * 0.1)
        priceReduction.innerText = priceReductionValue
        priceReductionDiv.classList.remove("d-none")
        priceTotal.innerText = (differenceDate * paintPrice) - priceReductionValue + 200
      } else {
        priceReduction.innerText = "0"
        priceReductionDiv.classList.add("d-none")
        priceTotal.innerText = (differenceDate * paintPrice) + 200
      }

    } else {
      numberDays.innerText = "1"
      priceResult.innerText = paintPrice
      priceTotal.innerText = parseFloat(paintPrice) + 200
    }
    document.getElementById('price_value').value = priceTotal.innerText
  }

  bookingPrices()

})();
