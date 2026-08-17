@echo off
echo ==========================================
echo CI Jenkins Demo - Tool Verification
echo ==========================================
java -version
javac -version
git --version
mvn -version
ant -version
gradle -version
echo ==========================================
echo All tool checks completed.
echo ==========================================
pause
