from os import environ
import re

id_pattern = re.compile(r'^.\d+$')

ADMIN = [int(admin) if id_pattern.search(admin) else admin for admin in environ.get('ADMIN', '').split()]







