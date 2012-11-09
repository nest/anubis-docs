# ZYV

MARKDOWN = markdown

OUTDIR = html

SOURCES = \
	README.mkd \
	gsoc-report/README.mkd \
	infra-server/backup-strategy.mkd \
	infra-server/future-plans.mkd \
	infra-server/host-partitioning.mkd \
	infra-server/setup-guide.mkd \
	infra-server/hardware.mkd \
	infra-server/virtualization.mkd \

TARGETS = $(SOURCES:%.mkd=$(OUTDIR)/%.html)

all: $(TARGETS)

$(OUTDIR)/%.html: %.mkd
	mkdir -p `dirname "$@"`
	$(MARKDOWN) "$<" > "$@"

clean:
	rm -rf "$(OUTDIR)"

.PHONY: all clean
