FROM amazoncorretto:latest
LABEL authors="vova"

# Uses clousurecompiler to build js bundle

WORKDIR /app


COPY closure-compiler-v20200719.jar /app/closure-compiler.jar

COPY lib /app/lib

COPY minify.sh /app/minify.sh

ENTRYPOINT ["/app/minify.sh"]