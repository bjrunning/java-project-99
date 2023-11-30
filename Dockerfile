FROM gradle:8.4-jdk20

WORKDIR /

COPY / .

RUN gradle installDist

CMD ./build/install/app/bin/app --spring.profiles.active=production