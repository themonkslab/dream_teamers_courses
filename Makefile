gen:
	dart lib/json_generator.dart

format:
	dart format --line-length=80 .

codegen:
	dart pub run build_runner build --delete-conflicting-outputs
