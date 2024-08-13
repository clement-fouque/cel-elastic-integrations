install:
	go install -v github.com/elastic/mito/cmd/mito@latest

test:
	@PACKAGE=$(PACKAGE) mito -cfg integrations/$(PACKAGE)/cfg.yaml -data integrations/$(PACKAGE)/state.json integrations/$(PACKAGE)/src.cel

# Prevent make from interpreting the parameter as a target
%:
	@: