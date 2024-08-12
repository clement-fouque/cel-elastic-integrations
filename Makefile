PACKAGE=github_securityadvisories

install:
	go install -v github.com/elastic/mito/cmd/mito@latest

test:
	mito -cfg integrations/$(PACKAGE)/cfg.yaml -data integrations/$(PACKAGE)/state.json integrations/$(PACKAGE)/src.cel