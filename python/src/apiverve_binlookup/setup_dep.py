from setuptools import setup, find_packages

setup(
    name='apiverve_binlookup',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='BIN Lookup is a BIN checker API: send the first 6 to 8 digits of a payment card and get the card brand, type (debit or credit), issuing bank and country of issuance back as JSON. Check incoming cards at checkout before you charge them.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/binlookup?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
