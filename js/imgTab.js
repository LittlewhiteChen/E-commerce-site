// JavaScript Document
jQuery.extend(jQuery.easing, {
	easeInQuad: function(x, t, b, c, d) {
		return c * (t /= d) * t + b
	},
	easeOutQuad: function(x, t, b, c, d) {
		return -c * (t /= d) * (t - 2) + b
	},
	easeInOutQuad: function(x, t, b, c, d) {
		if ((t /= d / 2) < 1) return c / 2 * t * t + b;
		return -c / 2 * ((--t) * (t - 2) - 1) + b
	},
	easeInCubic: function(x, t, b, c, d) {
		return c * (t /= d) * t * t + b
	},
	easeOutCubic: function(x, t, b, c, d) {
		return c * ((t = t / d - 1) * t * t + 1) + b
	},
	easeInOutCubic: function(x, t, b, c, d) {
		if ((t /= d / 2) < 1) return c / 2 * t * t * t + b;
		return c / 2 * ((t -= 2) * t * t + 2) + b
	},
	easeInQuart: function(x, t, b, c, d) {
		return c * (t /= d) * t * t * t + b
	},
	easeOutQuart: function(x, t, b, c, d) {
		return -c * ((t = t / d - 1) * t * t * t - 1) + b
	},
	easeInOutQuart: function(x, t, b, c, d) {
		if ((t /= d / 2) < 1) return c / 2 * t * t * t * t + b;
		return -c / 2 * ((t -= 2) * t * t * t - 2) + b
	},
	easeInQuint: function(x, t, b, c, d) {
		return c * (t /= d) * t * t * t * t + b
	},
	easeOutQuint: function(x, t, b, c, d) {
		return c * ((t = t / d - 1) * t * t * t * t + 1) + b
	},
	easeInOutQuint: function(x, t, b, c, d) {
		if ((t /= d / 2) < 1) return c / 2 * t * t * t * t * t + b;
		return c / 2 * ((t -= 2) * t * t * t * t + 2) + b
	},
	easeInSine: function(x, t, b, c, d) {
		return -c * Math.cos(t / d * (Math.PI / 2)) + c + b
	},
	easeOutSine: function(x, t, b, c, d) {
		return c * Math.sin(t / d * (Math.PI / 2)) + b
	},
	easeInOutSine: function(x, t, b, c, d) {
		return -c / 2 * (Math.cos(Math.PI * t / d) - 1) + b
	},
	easeInExpo: function(x, t, b, c, d) {
		return (t == 0) ? b : c * Math.pow(2, 10 * (t / d - 1)) + b
	},
	easeOutExpo: function(x, t, b, c, d) {
		return (t == d) ? b + c : c * (-Math.pow(2, -10 * t / d) + 1) + b
	},
	easeInOutExpo: function(x, t, b, c, d) {
		if (t == 0) return b;
		if (t == d) return b + c;
		if ((t /= d / 2) < 1) return c / 2 * Math.pow(2, 10 * (t - 1)) + b;
		return c / 2 * (-Math.pow(2, -10 * --t) + 2) + b
	},
	easeInCirc: function(x, t, b, c, d) {
		return -c * (Math.sqrt(1 - (t /= d) * t) - 1) + b
	},
	easeOutCirc: function(x, t, b, c, d) {
		return c * Math.sqrt(1 - (t = t / d - 1) * t) + b
	},
	easeInOutCirc: function(x, t, b, c, d) {
		if ((t /= d / 2) < 1) return -c / 2 * (Math.sqrt(1 - t * t) - 1) + b;
		return c / 2 * (Math.sqrt(1 - (t -= 2) * t) + 1) + b
	},
	easeInElastic: function(x, t, b, c, d) {
		var s = 1.70158;
		var p = 0;
		var a = c;
		if (t == 0) return b;
		if ((t /= d) == 1) return b + c;
		if (!p) p = d * .3;
		if (a < Math.abs(c)) {
			a = c;
			var s = p / 4
		} else var s = p / (2 * Math.PI) * Math.asin(c / a);
		return -(a * Math.pow(2, 10 * (t -= 1)) * Math.sin((t * d - s) * (2 * Math.PI) / p)) + b
	},
	easeOutElastic: function(x, t, b, c, d) {
		var s = 1.70158;
		var p = 0;
		var a = c;
		if (t == 0) return b;
		if ((t /= d) == 1) return b + c;
		if (!p) p = d * .3;
		if (a < Math.abs(c)) {
			a = c;
			var s = p / 4
		} else var s = p / (2 * Math.PI) * Math.asin(c / a);
		return a * Math.pow(2, -10 * t) * Math.sin((t * d - s) * (2 * Math.PI) / p) + c + b
	},
	easeInOutElastic: function(x, t, b, c, d) {
		var s = 1.70158;
		var p = 0;
		var a = c;
		if (t == 0) return b;
		if ((t /= d / 2) == 2) return b + c;
		if (!p) p = d * (.3 * 1.5);
		if (a < Math.abs(c)) {
			a = c;
			var s = p / 4
		} else var s = p / (2 * Math.PI) * Math.asin(c / a);
		if (t < 1) return -.5 * (a * Math.pow(2, 10 * (t -= 1)) * Math.sin((t * d - s) * (2 * Math.PI) / p)) + b;
		return a * Math.pow(2, -10 * (t -= 1)) * Math.sin((t * d - s) * (2 * Math.PI) / p) * .5 + c + b
	},
	easeInBack: function(x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158;
		return c * (t /= d) * t * ((s + 1) * t - s) + b
	},
	easeOutBack: function(x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158;
		return c * ((t = t / d - 1) * t * ((s + 1) * t + s) + 1) + b
	},
	easeInOutBack: function(x, t, b, c, d, s) {
		if (s == undefined) s = 1.70158;
		if ((t /= d / 2) < 1) return c / 2 * (t * t * (((s *= (1.525)) + 1) * t - s)) + b;
		return c / 2 * ((t -= 2) * t * (((s *= (1.525)) + 1) * t + s) + 2) + b
	},
	easeInBounce: function(x, t, b, c, d) {
		return c - jQuery.easing.easeOutBounce(x, d - t, 0, c, d) + b
	},
	easeOutBounce: function(x, t, b, c, d) {
		if ((t /= d) < (1 / 2.75)) {
			return c * (7.5625 * t * t) + b
		} else if (t < (2 / 2.75)) {
			return c * (7.5625 * (t -= (1.5 / 2.75)) * t + .75) + b
		} else if (t < (2.5 / 2.75)) {
			return c * (7.5625 * (t -= (2.25 / 2.75)) * t + .9375) + b
		} else {
			return c * (7.5625 * (t -= (2.625 / 2.75)) * t + .984375) + b
		}
	},
	easeInOutBounce: function(x, t, b, c, d) {
		if (t < d / 2) return jQuery.easing.easeInBounce(x, t * 2, 0, c, d) * .5 + b;
		return jQuery.easing.easeOutBounce(x, t * 2 - d, 0, c, d) * .5 + c * .5 + b
	}
});
(function($) {
	$.anythingSlider = function(el, options) {
		var base = this;
		base.$el = $(el);
		base.el = el;
		base.currentPage = 1;
		base.timer = null;
		base.playing = false;
		base.$el.data("AnythingSlider", base);
		base.init = function() {
			base.options = $.extend({}, $.anythingSlider.defaults, options);
			base.$tWrapper = base.$el.find('> div').css('overflow', 'hidden');
			base.$slider = base.$tWrapper.find('> ul');
			base.$items = base.$slider.find('> li');
			base.$single = base.$items.filter(':first');
			if (base.options.buildNavigation) base.buildNavigation();
			base.singleWidth = base.$single.outerWidth();
			base.pages = base.$items.length;
			base.$items.filter(':first').before(base.$items.filter(':last').clone().addClass('cloned'));
			base.$items.filter(':last').after(base.$items.filter(':first').clone().addClass('cloned'));
			base.$items = base.$slider.find('> li');
			base.buildNextBackButtons();
			if (base.options.autoPlay) {
				base.playing = !base.options.startStopped;
				base.buildAutoPlay();
			};
			if (base.options.pauseOnHover) {
				base.$el.hover(function() {
					base.clearTimer();
				}, function() {
					base.startStop(base.playing);
				});
			}
			if ((base.options.hashTags == true && !base.gotoHash()) || base.options.hashTags == false) {
				base.setCurrentPage(1);
			};
		};
		base.gotoPage = function(page, autoplay) {
			if (autoplay !== true) autoplay = false;
			if (!autoplay) base.startStop(false);
			if (typeof(page) == "undefined" || page == null) {
				page = 1;
				base.setCurrentPage(1);
			};
			if (page > base.pages + 1) page = base.pages;
			if (page < 0) page = 1;

			var dir = page < base.currentPage ? -1 : 1,
				n = Math.abs(base.currentPage - page),
				left = base.singleWidth * dir * n;
			base.$tWrapper.filter(':not(:animated)').animate({
				scrollLeft: '+=' + left
			}, base.options.animationTime, base.options.easing, function() {
				if (page == 0) {
					base.$tWrapper.scrollLeft(base.singleWidth * base.pages);
					page = base.pages;
				} else if (page > base.pages) {
					base.$tWrapper.scrollLeft(base.singleWidth);
					page = 1;
				};
				base.setCurrentPage(page);

			});
		};
		base.setCurrentPage = function(page, move) {
			if (base.options.buildNavigation) {
				base.$nav.find('.cur').removeClass('cur');
				$(base.$navLinks[page - 1]).addClass('cur');
			};
			if (move !== false) base.$tWrapper.scrollLeft(base.singleWidth * page);
			base.currentPage = page;
		};
		base.goForward = function(autoplay) {
			if (autoplay !== true) autoplay = true;
			base.gotoPage(base.currentPage + 1, autoplay);
		};
		base.goBack = function(autoplay) {
			if (autoplay !== true) autoplay = true;
			base.gotoPage(base.currentPage - 1, autoplay);
		};
		base.gotoHash = function() {
			if (/^#?panel-\d+$/.test(window.location.hash)) {
				var index = parseInt(window.location.hash.substr(7));
				var $item = base.$items.filter(':eq(' + index + ')');
				if ($item.length != 0) {
					base.setCurrentPage(index);
					return true;
				};
			};
			return false;
		};
		base.buildNavigation = function() {
			base.$nav = $("<div id='thumbNav'></div>").appendTo(base.$el);
			base.$items.each(function(i, el) {
				var index = i + 1;
				var $a = $("<a href='#'></a>");
				$a.click(function(e) {
					autoplay = true;
					base.gotoPage(index, autoplay);
					e.preventDefault();
				});
				base.$nav.append($a);
			});
			base.$navLinks = base.$nav.find('> a');
		};
		base.buildNextBackButtons = function() {
			var $forward = $('<a class="arrow forward" style="display:none;"><div></div></a>'),
				$back = $('<a class="arrow back" style="display:none;"><div></div></a>');
			$back.click(function(e) {
				base.goBack();
				e.preventDefault();
			});
			$forward.click(function(e) {
				base.goForward();
				e.preventDefault();
			});
			base.$tWrapper.after($back).after($forward);
		};
		base.buildAutoPlay = function() {
			base.$startStop = $("<a href='#' id='start-stop' style='display:none;'></a>").html(base.playing ? base.options.stopText : base.options.startText);
			base.$el.append(base.$startStop);
			base.$startStop.click(function(e) {
				base.startStop(!base.playing);
				e.preventDefault();
			});
			base.startStop(base.playing);
		};


		base.startStop = function(playing) {
			if (playing !== true) playing = false;
			base.playing = playing;
			if (base.options.autoPlay) base.$startStop.toggleClass("playing", playing).html(playing ? base.options.stopText : base.options.startText);
			if (playing) {
				base.clearTimer();
				base.timer = window.setInterval(function() {
					base.goForward(true);
				}, base.options.delay);
			} else {
				base.clearTimer();
			};
		};
		base.clearTimer = function() {
			if (base.timer) window.clearInterval(base.timer);
		};
		base.setHash = function(hash) {
			if (typeof window.location.hash !== 'undefined') {
				if (window.location.hash !== hash) {
					window.location.hash = hash;
				};
			} else if (location.hash !== hash) {
				location.hash = hash;
			};
			return hash;
		};
		base.init();
	};
	$.anythingSlider.defaults = {
		easing: "swing",
		autoPlay: true,
		startStopped: false,
		delay: 5000,
		animationTime: 1000,
		hashTags: true,
		buildNavigation: true,
		pauseOnHover: true,
		startText: "",
		stopText: "",
		navigationFormatter: null
	};
	$.fn.anythingSlider = function(options) {
		if (typeof(options) == "object") {
			return this.each(function(i) {
				(new $.anythingSlider(this, options));
				options.hashTags = false;
			});
		} else if (typeof(options) == "number") {

			return this.each(function(i) {
				var anySlide = $(this).data('AnythingSlider');
				if (anySlide) {
					anySlide.gotoPage(options);
				}
			});
		}
	};

})(jQuery);

function formatText(index, panel) {
	return index + "";
}
$(function() {
	$('.anythingSlider').anythingSlider({
		easing: "easeInOutExpo",
		autoPlay: true,
		delay: 5000,
		startStopped: false,
		animationTime: 1000,
		hashTags: true,
		buildNavigation: true,
		pauseOnHover: true,
		navigationFormatter: formatText
	});

	$("#slide-jump").click(function() {
		$('.anythingSlider').anythingSlider(6);
	});
});
$(document).ready(function(e) {
	$(".anythingSlider").mouseover(function() {
		$(".forward").show();
		$(".back").show();
	});
	$(".anythingSlider").mouseout(function() {
		$(".forward").hide();
		$(".back").hide();
	});
});