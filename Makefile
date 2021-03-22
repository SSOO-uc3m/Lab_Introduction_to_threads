.PHONY: clean All

All:
	@echo "----------Building project:[ Exercise_02 - Debug ]----------"
	@cd "Exercise_02" && "$(MAKE)" -f  "Exercise_02.mk"
clean:
	@echo "----------Cleaning project:[ Exercise_02 - Debug ]----------"
	@cd "Exercise_02" && "$(MAKE)" -f  "Exercise_02.mk" clean
