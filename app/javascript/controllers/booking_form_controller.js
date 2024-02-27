import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking-form"
export default class extends Controller {
  static targets = ["startForm", "endForm", "numberOfDays", "paintPrice", "priceTotal",
                    "priceResult", "priceReduction", "priceReductionDiv", "priceValue"]

  connect() {
    this.price()
  }

  price() {
    const endDateValue = this.endFormTarget.value
    const startDateValue = this.startFormTarget.value
    const startDate = new Date(startDateValue.split("-").reverse())
    const endDate = new Date(endDateValue.split("-").reverse())
    const differenceDate = Math.ceil(((endDate - startDate) / 86400000) + 1)

    const numberDays = this.numberOfDaysTarget
    const paintPrice = this.paintPriceTarget.innerText
    const priceResult = this.priceResultTarget
    const priceTotal = this.priceTotalTarget
    const priceReduction = this.priceReductionTarget
    const priceReductionDiv = this.priceReductionDivTarget

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
      priceReduction.innerText = "0"
      priceReductionDiv.classList.add("d-none")
      numberDays.innerText = "1"
      priceResult.innerText = paintPrice
      priceTotal.innerText = parseFloat(paintPrice) + 200
    }
    this.priceValueTarget.value = priceTotal.innerText
  }
}
