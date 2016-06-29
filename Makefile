dist: node_modules
	npm run dist

node_modules: package.json
	npm install

clean:
	rm -Rf ./dist

distclean: clean
	rm -Rf ./node_modules ./app/node_modules ./.nvm

dev: node_modules
	./node_modules/.bin/electron ./app

test: node_modules
	./node_modules/.bin/jshint ./app

ci: test dist

encryptenv:
	travis encrypt-file .travis.env --add

.PHONY: dist clean distclean dev test ci
