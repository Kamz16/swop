import jQuery from "jquery";
import "jquery-ui/ui/effect.js";

(function ($) {

  $(document).on("change", "#reverse-selection", function () {
    const isChecked = $(this).is(":checked"); // true if checked, false if unchecked
    $(this).closest(".checkbox").next(".control-group").find(".controls input:checkbox").prop("checked", isChecked);
  });

})(jQuery);