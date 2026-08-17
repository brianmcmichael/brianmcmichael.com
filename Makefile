# brianmcmichael.com — a single static page.
# No build step; the site is plain files served as-is.

PORT ?= 8000

.PHONY: serve open help

## serve: run the site locally at http://localhost:$(PORT)
serve:
	@echo "Serving on http://localhost:$(PORT)  (Ctrl-C to stop)"
	@python3 -m http.server $(PORT)

## open: open the local site in the default browser
open:
	@xdg-open http://localhost:$(PORT) >/dev/null 2>&1 || \
	 open http://localhost:$(PORT) >/dev/null 2>&1 || \
	 echo "Open http://localhost:$(PORT) in your browser."

## help: list available targets
help:
	@grep -E '^## ' $(MAKEFILE_LIST) | sed 's/^## /  /'
