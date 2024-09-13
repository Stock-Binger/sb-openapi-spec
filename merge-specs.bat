@echo off
setlocal

REM Directory of OpenAPI files (current directory)
set SPEC_DIR=%cd%

REM Output merged file
set OUTPUT_FILE=%SPEC_DIR%\sb-openapi-spec.yml

REM Find all YAML files starting with sb-openapi*.yml (including sb-openapi-spec.yml)
set OPENAPI_FILES=
for %%F in (sb-openapi*.yml) do (
    set OPENAPI_FILES=!OPENAPI_FILES! %%F
)

REM Merge all files into sb-openapi-spec.yml
redocly join %OPENAPI_FILES% -o %OUTPUT_FILE%

REM Provide feedback to the user
echo OpenAPI files merged into %OUTPUT_FILE%

endlocal
