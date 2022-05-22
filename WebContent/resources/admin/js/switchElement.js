$(function () {
  "use strict";
  $("body").click(function (e) {
    if (e.target.closest(".switch-btn")) {
      let switchBtn = e.target.closest(".switch-btn");
      let dataTarget = switchBtn.getAttribute("data-n-switch-target");
      let dataLink = switchBtn.getAttribute("data-link");

      let listSwitchElement = $(".switch-element");

      listSwitchElement.each(function () {
        if (this.getAttribute("data-link") === dataLink) {
          if (this.getAttribute("data-n") !== dataTarget) {
            this.classList.add("invisible", "position-absolute");
          } else this.classList.remove("invisible", "position-absolute");
        }
      });
    }
  });
});
