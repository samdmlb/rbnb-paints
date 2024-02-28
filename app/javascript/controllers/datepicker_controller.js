import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";


// Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = ["startDate", "endDate"];

  connect() {
    this.initFlatpickr();
  }

  initFlatpickr() {
    const reservedDates = this.data.get("reservedDates");
    const disabledDates = reservedDates ? JSON.parse(reservedDates) : [];

    flatpickr(this.startDateTarget, {
      dateFormat: "d-m-Y",
      disable: disabledDates,
      minDate: "today",
    });

    flatpickr(this.endDateTarget, {
      dateFormat: "d-m-Y",
      disable: disabledDates,
      minDate: "today",
    });
  }
}
