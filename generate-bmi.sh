#!/bin/bash
rm -rf target
java -jar cli-0.2.0.jar codegenerate -i contract/calculator/CalculatorRestEndpoint.yaml -o target2 -t provider --group-id com.demo --artifact-id calculator
java -jar cli-0.2.0.jar codegenerate -i contract/analyzer/AnalyzeRestEndpoint.yaml -o target2 -t provider --group-id com.demo --artifact-id analyzer
