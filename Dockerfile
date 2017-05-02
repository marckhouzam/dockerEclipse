FROM openjdk

WORKDIR /tmp
RUN wget http://mirror.csclub.uwaterloo.ca/eclipse/eclipse/downloads/drops4/S-4.7M6-201703082000/eclipse-SDK-4.7M6-linux-gtk-x86_64.tar.gz -O eclipse.tar.gz && \
    tar -xzf eclipse.tar.gz && \
    rm eclipse.tar.gz && \
    mv eclipse /usr/local/bin

ENTRYPOINT ["/usr/local/bin/eclipse/eclipse"]
    
#COPY org.eclipse.cdt.repo/target/org.eclipse.cdt.repo.zip /tmp
