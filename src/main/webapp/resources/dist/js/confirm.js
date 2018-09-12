$(document).on("click", "a.confirm", function (e) {
    e.preventDefault();
    if (confirm('Are you sure?')) {
        location.href = $(this).attr('href');
    }
});


// $(document).ready(function () { $('.datepic').datepicker({"format":"yyyy-mm-dd"
// });
// });