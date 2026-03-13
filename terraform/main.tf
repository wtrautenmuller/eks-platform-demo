apiVersion: v1
kind: Service

metadata:
  name: api-secret-service

spec:
  selector:
    app: api-secret-demo

  ports:
  - port: 80
    targetPort: 8080

  type: LoadBalancer