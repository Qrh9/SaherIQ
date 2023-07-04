FROM jepthoniq/jepthon:slim-buster

#clonning repo 
RUN git clone https://github.com/Qrh9/SaherAr.git /root/SHRU
#working directory 
WORKDIR /root/SHRU

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/SHRU/bin:$PATH"

CMD ["python3","-m","SHRU"]
