import setuptools

with open("README.md", "r", encoding="utf-8") as f:
    long_description = f.read()


__version__ = "0.0.0"

REPO_NAME = "Chicken-Disease-Classification--Project"
AUTHOR_USER_NAME = "rajesh"
SRC_REPO = "cnnClassifier"
AUTHOR_EMAIL = "rajesh.mojumder@g.bracua.ac.bd"


setuptools.setup(
    name=SRC_REPO,
    version=__version__,
    author="RAJESH MOJUMDER",
    author_email= "rajesh.mojumder@g.bracu.ac.bd",
    description="A small python package for CNN app",
    long_description=long_description,
    long_description_content="text/markdown",
    url=f"https://github.com/{AUTHOR_USER_NAME}/{REPO_NAME}",
    project_urls={
        "Bug Tracker": f"https://github.com/{AUTHOR_USER_NAME}/{REPO_NAME}/issues",
    },
    package_dir={"": "src"},
    packages=setuptools.find_packages(where="src")
)