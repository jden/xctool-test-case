workspace = xctool-test-case.xcworkspace
scheme = xctool-test-case
xct = xctool -workspace $(workspace) -scheme $(scheme)

all: workspace

build: workspace
	$(xct) build

workspace: $(workspace)

$(workspace):
	pod install

dev: workspace
	open $(workspace)

xcodebuild: workspace
	echo "2 tests should run, 2 tests should pass"
	xcodebuild -workspace $(workspace) -scheme $(scheme) -sdk iphonesimulator test
	echo "2 tests should have run, 2 tests should have passed"


xctool: workspace
	echo "2 tests should run, 2 tests should pass"
	$(xct) -sdk iphonesimulator test
	echo "2 tests should have run, 2 tests should have passed"

clean:
	$(xct) clean
	rm -rf $(workspace)
	rm -rf Pods
	rm -rf build