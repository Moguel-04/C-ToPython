FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY . .
RUN mkdir -p out && find src -name "*.java" > fuentes.txt && javac -encoding UTF-8 -d out @fuentes.txt
CMD ["java", "-Dfile.encoding=UTF-8", "-cp", "out", "traductor.ServidorWeb"]
