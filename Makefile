RACO=~/.cache/racket/bin/raco

.PHONY: build
build:
	$(RACO) pollen render content
	$(RACO) pollen publish content dist

.PHONY: netlify-buildbot-setup
netlify-buildbot-setup:
	curl -L https://mirror.racket-lang.org/installers/7.3/racket-minimal-7.3-x86_64-linux.sh > /tmp/racket.sh
	bash /tmp/racket.sh --in-place --dest ~/.cache/racket --create-dir
	$(RACO) pkg install --batch --auto pollen
