FROM public.ecr.aws/lambda/nodejs:16

ARG STAGE

COPY build/ build/
COPY config/ config/
COPY database/ database/
COPY node_modules/ node_modules/
COPY public/ public/
COPY src/ src/
COPY .env${STAGE:+.${STAGE}} .env
COPY package.json .

CMD ["src/app.handler"]