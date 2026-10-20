from setuptools import setup, find_packages

setup(
    name='apiverve_binlookup',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='BIN Lookup checks the first six digits of a payment card to return card brand, type, issuing bank, and country of issuance. Pass a card BIN to inspect whether incoming cards are debit, credit, or prepaid.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/binlookup?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
