# renovate: datasource=github-releases depName=microsoft/ApplicationInsights-Java
ARG APP_INSIGHTS_AGENT_VERSION=3.6.1
ARG PLATFORM=""
# Application image

FROM hmctspublic.azurecr.io/base/java${PLATFORM}:21-distroless

COPY lib/applicationinsights.json /opt/app/
COPY build/libs/labs-jordankainos.jar /opt/app/

EXPOSE 8080
CMD [ "labs-jordankainos.jar" ]
