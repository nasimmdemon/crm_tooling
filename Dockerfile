# Use the official Cirrus CI Flutter image
FROM cirrusci/flutter:stable

# Set working directory
WORKDIR /app

# Copy the current directory into the container
COPY . .

# Install dependencies (if needed)
RUN flutter pub get

# Expose port for Flutter web
EXPOSE 8080

# Default command to create and run a Flutter app
CMD ["/bin/bash", "-c", "flutter create . && flutter run -d web-server --web-port=8081 --web-hostname=0.0.0.0"]


