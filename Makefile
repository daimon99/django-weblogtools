
release: dist ## package and upload a release
	twine upload dist/* 

dist: clean ## builds source and wheel package
	python3 setup.py sdist
	python3 setup.py bdist_wheel
	ls -l dist

clean:	## 清扫现场
	-rm -rf build/ dist/ *egg-info/
