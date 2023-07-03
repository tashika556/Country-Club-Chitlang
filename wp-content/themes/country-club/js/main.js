var btn = $("#button");

$(window).scroll(function () {
  if ($(window).scrollTop() > 300) {
    btn.addClass("show");
  } else {
    btn.removeClass("show");
  }
});

btn.on("click", function (e) {
  e.preventDefault();
  $("html, body").animate({ scrollTop: 0 }, "300");
});
// top up btn end
$(".slider")
  .slick({
    autoplay: true,
    speed: 800,
    lazyLoad: "progressive",
    arrows: false,
    dots: false,
  })
  .slickAnimation();

// mobile menu start
$(document).ready(function () {
  //jquery for toggle sub menus
  $(".sub-btn").click(function () {
    $(this).next(".sub-menu").slideToggle();
    $(this).find(".dropdown").toggleClass("rotate");
  });

  //jquery for expand and collapse the sidebar
  $(".menu-btn").click(function () {
    $(".side-bar").addClass("active");
    $(".menu-btn").css("visibility", "hidden");
  });

  $(".close-btn").click(function () {
    $(".side-bar").removeClass("active");
    $(".menu-btn").css("visibility", "visible");
  });
});
// menu mobile end
// slider home end

$(".services_top-slider").slick({
  dots: false,
  arrow: false,
  infinite: true,
  autoplay: true,
  speed: 300,
  slidesToShow: 4,
  slidesToScroll: 1,
  responsive: [
    {
      breakpoint: 1199,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
      },
    },
    {
      breakpoint: 767,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
      },
    },
    {
      breakpoint: 556,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
      },
    },
  ],
});
$(".review-slider").slick({
  dots: false,
  arrow: false,
  infinite: true,
  autoplay: true,
  speed: 300,
  slidesToShow: 2,
  slidesToScroll: 1,
  responsive: [
    {
      breakpoint: 1199,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
      },
    },
    {
      breakpoint: 767,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
      },
    },
    {
      breakpoint: 556,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
      },
    },
  ],
});
// index slider end
$(".book_log-slider").slick({
  dots: false,
  arrow: false,
  infinite: true,
  autoplay: true,
  speed: 300,
  slidesToShow: 4,
  slidesToScroll: 1,
  responsive: [
    {
      breakpoint: 1199,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 1,
      },
    },
    {
      breakpoint: 767,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
      },
    },
    {
      breakpoint: 556,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
      },
    },
  ],
});
// index slider end

var a = 0;
$(window).scroll(function () {
  var oTop = $("#counter-box").offset().top - window.innerHeight;
  if (a == 0 && $(window).scrollTop() > oTop) {
    $(".counter").each(function () {
      var $this = $(this),
        countTo = $this.attr("data-number");
      $({
        countNum: $this.text(),
      }).animate(
        {
          countNum: countTo,
        },

        {
          duration: 850,
          easing: "swing",
          step: function () {
            //$this.text(Math.ceil(this.countNum));
            $this.text(Math.ceil(this.countNum).toLocaleString("en"));
          },
          complete: function () {
            $this.text(Math.ceil(this.countNum).toLocaleString("en"));
            //alert('finished');
          },
        }
      );
    });
    a = 1;
  }
});

// counter end
function removeScrollBarPushing() {
  const offsetY = document.documentElement.scrollTop;
  let i = 0;
  const time = setInterval(function () {
    if (i++ < 2) {
      clearInterval(time);
    }
    document.documentElement.scrollTop = offsetY;
  }, 1);
}

// open sidenav
document
  .getElementById("nav-toggle-btn")
  .addEventListener("click", function () {
    document.getElementById("sidenav").classList.add("show");
    removeScrollBarPushing();
  });
// close sidenav
document
  .querySelector("#sidenav .closebtn")
  .addEventListener("click", function () {
    document.getElementById("sidenav").classList.remove("show");
  });
// menu left end

var monthFormatter = new Intl.DateTimeFormat("en-us", { month: "long" });
var weekdayFormatter = new Intl.DateTimeFormat("en-us", { weekday: "long" });

var dates = [];
dates[0] = new Date(); // defaults to today
dates[1] = addDays(dates[0], 31);

var currentDate = 0; // index into dates[]
var previousDate = 1;

var datesBoxes = $(".date-picker-date");
var displayBoxes = $(".date-picker-display");

// sensible default just in case jQuery doesn't kick in
// makes sure that the experience is still usable, and when $(window).width() returns then this variable is updated to the correct value
var windowWidth = 300;
var colourPickerWidth = 300;

// set up dates
$(document).ready(function () {
  // will work the same the first time as every other
  updateDatePicker();

  // update dates shown to correct dates
  $(datesBoxes[0]).text(getDateString(dates[0]));
  $(datesBoxes[1]).text(getDateString(dates[1]));

  $(displayBoxes[0]).text(
    dates[0].getDate() + " " + monthFormatter.format(dates[0]).slice(0, 3)
  );
  $(displayBoxes[1]).text(
    dates[1].getDate() + " " + monthFormatter.format(dates[1]).slice(0, 3)
  );
});

// add event listeners
$(document).ready(function () {
  // has to be applied each time, as it's removed when calendar is reset
  applyDateEventListener();

  $(".date-picker-date").click(function (e) {
    // if active, toggle picker off and return
    var currentlyActive = $(this).hasClass("active");
    if (currentlyActive) {
      $(this).removeClass("active");
      hideDatePicker();
      return;
    }

    $(".date-picker-date").removeClass("active");
    $(this).addClass("active");

    // update currentDate
    previousDate = currentDate;
    if ($(this)[0].id == "date-picker-date-first") {
      currentDate = 0;
    } else {
      currentDate = 1;
    }

    // update calendar
    showDatePicker(e);
    updateDatePicker();
  });
 

  $("#date-picker-next-month").click(function () {
    changeMonth("Next");
  });

  $("#date-picker-previous-month").click(function () {
    changeMonth("Previous");
  });

  $("#date-picker-exit").click(function () {
    hideDatePicker();
  });

  $(document).click(function (e) {
    var target = $(e.target);
    var clickedOnPicker = target.closest("#date-picker-modal").length;
    var clickedOnDate = target.closest(".date-picker-date").length;
    var isPreviousOrNext =
      target.hasClass("previous-month") || target.hasClass("next-month");

    if (!(clickedOnPicker || clickedOnDate || isPreviousOrNext)) {
      hideDatePicker();
    }
  });
});

// called on initialising (set to today) and then every time the month changes or on moving between dates
function updateDatePicker(changeMonth = false) {
  var datePicker = $("#date-picker");
  var curDate = dates[currentDate]; // shorthand

  // check if it needs to update
  // updates if changed month directly (changeMonth) or if switched to other .date-picker-date and month is different (differentMonth)
  var differentMonth = checkChangedMonth();
  if (changeMonth === false && differentMonth === false) {
    return;
  }

  updatePickerMonth();

  // clear out all tr instances other than the header row
  // really just removing all rows and appending header row straight back in
  var headerRow = `
    <tr id="date-picker-weekdays">
      <th>S</th>
      <th>M</th>
      <th>T</th>
      <th>W</th>
      <th>T</th>
      <th>F</th>
      <th>S</th>
    </tr>`;
  // clear all rows
  datePicker.contents().remove();
  datePicker.append(headerRow);

  var todayDate = curDate.getDate();
  var firstOfMonth = new Date(curDate.getFullYear(), curDate.getMonth(), 1);
  var firstWeekday = firstOfMonth.getDay(); // 0-indexed; 0 is Sunday, 6 is Saturday
  var lastMonthToInclude = firstWeekday; // happily, this just works as-is.
  var firstOfNextMonth = addMonths(firstOfMonth, 1);
  var lastOfMonth = addDays(firstOfNextMonth, -1).getDate();

  var openRow = "<tr class='date-picker-calendar-row'>";
  var closeRow = "</tr>";
  var currentRow = openRow;

  // Add in as many of last month as required
  if (lastMonthToInclude > 0) {
    var lastMonthLastDay = addDays(firstOfMonth, -1);
    var lastMonthDays = lastMonthLastDay.getDate();
    var lastMonthStartAdding = lastMonthDays - lastMonthToInclude + 1;

    addToCalendar(lastMonthStartAdding, lastMonthDays, 0, "previous-month");
  }

  addToCalendar(1, 7 - lastMonthToInclude, lastMonthToInclude, true);

  currentRow = openRow;

  var counter = 7;
  var addedFromCurrentMonth = 7 - firstWeekday + 1;

  addToCalendar(addedFromCurrentMonth, lastOfMonth, counter, true);

  counter = lastMonthToInclude + lastOfMonth;
  var nextMonthToInclude = counter % 7 === 0 ? 0 : 7 - (counter % 7);

  addToCalendar(1, nextMonthToInclude, counter, "next-month");

  applyDateEventListener();

  updateDateShown();

  function checkChangedMonth() {
    var differentMonth = false;

    if (currentDate !== previousDate) {
      if (
        dates[0].getMonth() !== dates[1].getMonth() ||
        dates[0].getYear() !== dates[1].getYear()
      ) {
        differentMonth = true;
      }
    }

    return differentMonth;
  }

  function addToCalendar(start, end, counter, cellClass) {
    var currentMonth = cellClass === true ? true : false;

    for (var i = start; i <= end; i++) {
      counter += 1;
      if (i === todayDate && currentMonth) {
        currentRow += `<td class="active">${i}</td>`;
      } else if (cellClass && !currentMonth) {
        currentRow += `<td class="${cellClass}">${i}</td>`;
      } else {
        currentRow += `<td>${i}</td>`;
      }
      if (counter % 7 === 0) {
        datePicker.append(currentRow + closeRow);
        currentRow = openRow;
      }
    }
  }
}

function updatePickerMonth() {
  var monthName = monthFormatter.format(dates[currentDate]);
  var year = dates[currentDate].getFullYear();
  var dateText = monthName + " " + year;
  $("#date-picker-month").text(dateText);
}

function dateSelected(currentDay) {
  var activeDate = $($(".date-picker-date.active")[0]);

  dates[currentDate].setDate(currentDay);
  updateDateShown();
}

function changeMonth(direction) {
  var increment = direction === "Next" ? 1 : -1;

  dates[currentDate] = addMonths(dates[currentDate], increment);

  updatePickerMonth();

  updateDatePicker(true);
}

function showDatePicker(e) {
  var pxFromTop = $(".date-picker-date").offset().top;
  var datePicker = $("#date-picker-modal");
  datePicker.css("top", pxFromTop + 40);

  var rightEdge = e.pageX + colourPickerWidth;
  var overflowWidth = rightEdge - windowWidth;
  if (overflowWidth > 0) {
    datePicker.css("left", e.pageX - overflowWidth);
  } else {
    datePicker.css("left", e.pageX);
  }

  $("#date-picker-modal").removeClass("hidden-2");
}

function hideDatePicker() {
  $(".date-picker-date").removeClass("active");
  $("#date-picker-modal").addClass("hidden-2");
}

function applyDateEventListener() {
  $("#date-picker td").click(function () {
    $("#date-picker td").removeClass("active");
    $(this).addClass("active");

    currentDay = $(this).text();

    dateSelected(currentDay);

    if ($(this).hasClass("previous-month")) {
      changeMonth("Previous");
    } else if ($(this).hasClass("next-month")) {
      changeMonth("Next");
    } else {
      hideDatePicker();
    }
  });
}

$(document).ready(function () {
  updateWidths();
});

$(window).resize(function () {
  updateWidths();
});

function updateWidths() {
  windowWidth = $(window).width();
}

function addDays(date, days) {
  var result = new Date(date);
  result.setDate(result.getDate() + days);
  return result;
}

function addMonths(date, months) {
  var result = new Date(date);
  result.setMonth(result.getMonth() + months);
  return result;
}

function getDateString(date) {
  var year = date.getFullYear();

  var month = (1 + date.getMonth()).toString();
  month = month.length > 1 ? month : "0" + month;

  var day = date.getDate().toString();
  day = day.length > 1 ? day : "0" + day;

  return day + "/" + month + "/" + year;
}

function updateDateShown() {
  var formattedDate = getDateString(dates[currentDate]);
  var updateDateBox = $(datesBoxes[currentDate]);

  var updateDisplayBox = $(displayBoxes[currentDate]);
  var dayAndMonth =
    dates[currentDate].getDate() +
    " " +
    monthFormatter.format(dates[currentDate]).slice(0, 3);

  updateDateBox.text(formattedDate);
  updateDisplayBox.text(dayAndMonth);
}
// date end

$(document).ready(function () {
  $("#myModal").modal("show");
});
// NOTICE POPUP END
// slider down start
$(function () {
  $(".scroll-down").click(function () {
    $("html, body").animate(
      { scrollTop: $("section#about").offset().top },
      "slow"
    );
    return false;
  });
});
// slider down end

$(document).ready(function () {
  window.addEventListener("scroll", function () {
    var header = document.querySelector(".header");
    header.classList.toggle("sticky-bar", window.scrollY > 50);
  });
});

// NAVE SCROOL end

// slider down start
$(function () {
  $(".scroll-down").click(function () {
    $("html, body").animate(
      { scrollTop: $("section.about").offset().top },
      "slow"
    );
    return false;
  });
});
// slider down end

$(function () {
  new WOW().init();
});
// wow

class readMore {
  constructor() {
    this.content = ".readmore__content";
    this.buttonToggle = ".readmore__toggle";
  }

  bootstrap() {
    this.setNodes();
    this.init();
    this.addEventListeners();
  }

  setNodes() {
    this.nodes = {
      contentToggle: document.querySelector(this.content),
    };

    this.buttonToggle = this.nodes.contentToggle.parentElement.querySelector(
      this.buttonToggle
    );
  }

  init() {
    const { contentToggle } = this.nodes;

    this.stateContent = contentToggle.innerHTML;

    contentToggle.innerHTML = `${this.stateContent.substring(0, 800)}...`;
  }

  addEventListeners() {
    this.buttonToggle.addEventListener("click", this.onClick.bind(this));
  }

  onClick(event) {
    const targetEvent = event.currentTarget;
    const { contentToggle } = this.nodes;

    if (targetEvent.getAttribute("aria-checked") === "true") {
      targetEvent.setAttribute("aria-checked", "false");
      contentToggle.innerHTML = this.stateContent;
      this.buttonToggle.innerHTML = "Show Less";
    } else {
      targetEvent.setAttribute("aria-checked", "true");
      contentToggle.innerHTML = `${this.stateContent.substring(0, 800)}...`;
      this.buttonToggle.innerHTML = "Show more";
    }
  }
}

const initReadMore = new readMore();
initReadMore.bootstrap();
//about read more end
$(".akf-button").click(function (e) {
  // Remove any old one
  $(".ripple").remove();

  // Setup
  var posX = $(this).offset().left,
    posY = $(this).offset().top,
    buttonWidth = $(this).width(),
    buttonHeight = $(this).height();

  // Add the element
  $(this).prepend("<span class='ripple'></span>");

  // Make it round!
  if (buttonWidth >= buttonHeight) {
    buttonHeight = buttonWidth;
  } else {
    buttonWidth = buttonHeight;
  }

  // Get the center of the element
  var x = e.pageX - posX - buttonWidth / 2;
  var y = e.pageY - posY - buttonHeight / 2;

  // Add the ripples CSS and start the animation
  $(".ripple")
    .css({
      width: buttonWidth,
      height: buttonHeight,
      top: y + "px",
      left: x + "px",
    })
    .addClass("rippleEffect");
});

// btn end
