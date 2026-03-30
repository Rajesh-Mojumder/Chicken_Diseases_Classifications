# 🐔 Chicken Disease Classification

> An AI-powered deep learning application to detect poultry diseases from fecal images using VGG16 CNN model.

---

## 👨‍💻 Developed By

**Rajesh Mojumder**
AI & Machine Learning Developer

---

## 📌 Project Overview

The **Chicken Disease Classification System** is an end-to-end machine learning application that automatically classifies chicken fecal images to detect whether a chicken is:

- ✅ **Healthy**
- ⚠️ **Coccidiosis** (a common poultry disease)

This project demonstrates a complete ML pipeline — from data ingestion and model training to web deployment using Flask and Docker.

---

## 🎯 Key Features

- 🔍 Automated disease detection from images
- 🧠 Deep Learning model using **VGG16** (Transfer Learning)
- 🌐 Flask-based web application
- 🐳 Dockerized for easy deployment
- 📊 Complete ML pipeline with DVC
- 🖥️ Clean and user-friendly UI

---

## 🛠️ Tech Stack

| Category | Technology |
|---|---|
| Language | Python 3.8 |
| Deep Learning | TensorFlow 2.12, Keras |
| Web Framework | Flask |
| Frontend | HTML, CSS, Bootstrap 4 |
| Model | VGG16 (Transfer Learning) |
| Pipeline | DVC |
| Containerization | Docker |
| Deployment | Render |

---

## 📁 Project Structure

```
Chicken_Diseases_Classifications/
│
├── src/
│   └── cnnClassifier/
│       ├── components/          # Core ML components
│       │   ├── data_ingestion.py
│       │   ├── prepare_base_model.py
│       │   ├── prepare_callbacks.py
│       │   ├── training.py
│       │   └── evaluation.py
│       ├── pipeline/            # Training & prediction pipelines
│       │   ├── stage_01_data_ingestion.py
│       │   ├── stage_02_prepare_base_model.py
│       │   ├── stage_03_training.py
│       │   ├── stage_04_evaluation.py
│       │   └── predict.py
│       ├── config/              # Configuration manager
│       ├── entity/              # Data classes
│       ├── utils/               # Helper functions
│       └── constants/
│
├── config/
│   └── config.yaml              # Project configuration
├── templates/
│   └── index.html               # Web UI
├── app.py                       # Flask application
├── main.py                      # Training pipeline runner
├── params.yaml                  # Model parameters
├── requirements.txt             # Dependencies
├── setup.py                     # Package setup
├── Dockerfile                   # Docker configuration
└── dvc.yaml                     # DVC pipeline
```

---

## ⚙️ Model Parameters

| Parameter | Value |
|---|---|
| Image Size | 224 x 224 x 3 |
| Batch Size | 16 |
| Epochs | 1 |
| Classes | 2 (Healthy / Coccidiosis) |
| Base Model | VGG16 (ImageNet weights) |
| Learning Rate | 0.01 |
| Augmentation | True |

---

## 🚀 How to Run Locally

### Step 1 — Clone the repository
```bash
git clone https://github.com/Rajesh-Mojumder/Chicken_Diseases_Classifications.git
cd Chicken_Diseases_Classifications
```

### Step 2 — Create and activate conda environment
```bash
conda create -n cnncls python=3.8 -y
conda activate cnncls
```

### Step 3 — Install dependencies
```bash
pip install -r requirements.txt
```

### Step 4 — Train the model
```bash
python main.py
```

### Step 5 — Run the web app
```bash
python app.py
```

### Step 6 — Open browser
```
http://localhost:5000
```

---

## 🐳 Run with Docker

```bash
docker build -t chicken-disease-classifier .
docker run -p 5000:5000 chicken-disease-classifier
```

Then open: `http://localhost:5000`

---

## 🔄 ML Pipeline Stages

```
Stage 1 → Data Ingestion        (Download & extract dataset)
Stage 2 → Prepare Base Model    (Load VGG16, add custom layers)
Stage 3 → Training              (Train the model)
Stage 4 → Evaluation            (Evaluate model performance)
```

---

## 🌐 How to Use the Web App

1. Open the web application in browser
2. Click **"Upload Image"** — select a chicken fecal image
3. Click **"Predict"**
4. View the result:
   - ✅ **Healthy** — No disease detected
   - ⚠️ **Coccidiosis** — Disease detected, consult a vet

---

## 📦 Requirements

```
tensorflow==2.12.0
pandas==1.5.3
numpy==1.23.5
Flask==2.2.5
Flask-Cors==3.0.10
matplotlib==3.7.1
scipy==1.10.1
dvc==2.58.2
python-box==6.0.2
pyYAML==6.0
tqdm==4.65.0
ensure==1.0.2
joblib==1.2.0
```

---

## 📄 License

This project is licensed under the **MIT License**.

---

## 🙏 Acknowledgements

- VGG16 model by **Oxford Visual Geometry Group**
- TensorFlow & Keras teams
- Dataset from open poultry disease research

---

*Jai Shree Krishna 🙏*
