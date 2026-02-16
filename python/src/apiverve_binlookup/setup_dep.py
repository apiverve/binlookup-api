from setuptools import setup, find_packages

setup(
    name='apiverve_binlookup',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='BIN Lookup is a simple tool for looking up BIN number information. It returns information such as the bank, card type, and more based on the BIN number provided.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/binlookup?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
