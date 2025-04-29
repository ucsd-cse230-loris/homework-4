build:
	cd lf && make && cd ..
	cd plf && make && cd ..

clean:
	cd lf && make clean && cd ..
	cd plf && make clean && cd ..

autograde:
	cd lf && make autograde && cd ..
	cd plf && make autograde && cd ..

turnin:
	git add .
	git commit -m "turnin"
	git push -u origin main

.PHONY: clean autograde turnin build
