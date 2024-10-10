<p align="center">
  <a href="https://laravel.com" target="_blank">
    <img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo">
  </a>
</p>

<p align="center">
  <a href="https://github.com/laravel/framework/actions">
    <img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status">
  </a>
  <a href="https://packagist.org/packages/laravel/framework">
    <img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads">
  </a>
  <a href="https://packagist.org/packages/laravel/framework">
    <img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version">
  </a>
  <a href="https://packagist.org/packages/laravel/framework">
    <img src="https://img.shields.io/packagist/l/laravel/framework" alt="License">
  </a>
</p>

## About the File Management System

The File Management System is a web application built with Laravel that provides a RESTful API for managing files and directories. This backend allows users to efficiently upload, organize, and access files, serving as a robust solution for personal or team projects. The frontend of this application is developed using Vue.js, providing a seamless user experience.

### Key Features

- **Directory Management**: API endpoints to create, rename, and delete directories to organize files.
- **File Uploads**: Simple API for uploading files to specific directories.
- **File Downloading**: API endpoints for downloading files directly from the application.
- **Search Functionality**: API for searching files within the directory structure.
- **File Metadata**: APIs to retrieve file details such as type, size, and upload date.

## How It Works

1. **Directory Structure**: Users can create a hierarchy of directories through the API for better file organization.
2. **File Operations**: 
   - Users can upload files to any directory via the API.
   - Files can be downloaded or deleted as required through respective endpoints.
3. **Search and Filter**: Users can utilize API endpoints to search for specific files and filter results based on criteria such as file type or upload date.

## How to Run the File Management System Backend

### Prerequisites

- PHP >= 8.2
- Composer
- Laravel >= 10
- Database (MySQL)

### Installation Steps

1. **Clone the Repository**
   ```bash
   git clone https://github.com/benedictgodhana/file-management-system_backend.git
   cd file-management-system_backend
