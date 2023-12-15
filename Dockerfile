FROM public.ecr.aws/nginx/nginx:mainline-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY sites /etc/nginx/sites
COPY conf.d/* /etc/nginx/conf.d
