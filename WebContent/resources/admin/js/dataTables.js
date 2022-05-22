$(document).ready(function() {
	$("#my-data-table").DataTable();
	let tableWrapper = $("#my-data-table_wrapper");
	tableWrapper.children(".row").first().addClass("mb-2");

	let dataTableLength = $("#my-data-table_length");
	let pagination = $("#my-data-table_paginate");
	let searchBar = $("#my-data-table_filter");
	$("#my-data-table_info").remove();

	pagination.addClass("d-flex justify-content-end");
	dataTableLength
		.children("label")
		.contents()
		.filter((_, el) => el.nodeType === 3)
		.remove();
	dataTableLength
		.children("label")
		.children("select")
		.removeClass("form-select-sm");
	searchBar.addClass("d-flex justify-content-end");
	searchBar
		.children("label")
		.contents()
		.filter((_, el) => el.nodeType === 3)
		.remove();
	searchBar.children("label").addClass("input-group w-50");
	searchBar.children("label").children("input").removeClass("form-control-sm");
	searchBar
		.children("label")
		.prepend(
			`<span class="input-group-text bg-primary border-primary text-white" id="basic-addon2"><i class="fa-regular fa-magnifying-glass"></i></span>`
		);
	document.onclick = function(e) {
		if (e.target.classList.contains("btn-range-filter")) {
			const blockRangeFilter = e.target.parentElement;
			const rangeFilterRight = blockRangeFilter.querySelector(
				".range-filter-right"
			);
			rangeFilterRight.classList.toggle("show-flex");
		} else if (e.target.classList.contains("td-time-table")) {
			e.target.classList.toggle("bg-info");
		}
	};
	$("#my-data-table_filter").append(` <button
                      type="button"
                      class="btn btn-primary btn-create ms-1"
                      data-bs-toggle="modal"
                      data-bs-target="#modal-create"
                    >
                      <i class="bi bi-plus-circle"></i>
                      <span class="text-white"></span>
                    </button>`);
});
