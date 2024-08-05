FROM python:3.9-slim

WORKDIR /app

COPY /apps /app

RUN pip3 install -r req.txt

EXPOSE 8888

CMD ["pip3","freeze"]

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--port=8888"]