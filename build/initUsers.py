#!/usr/bin/env python

import os, sys, django

# set up django evironment
sys.path.append('../code')
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'auth.settings')
django.setup()

# create users
from django.contrib.auth import get_user_model
from allauth.account.models import EmailAddress

# pylint: disable=unbalanced-tuple-unpacking
_, userEmail, userPassword, testEmail, testPassword = sys.argv

User = get_user_model()
userSetUp = User.objects.filter(email=userEmail)

# only add if user has not be created - applicable to prod releases only
if not userSetUp.exists():
    # create super user account
    User.objects.create_superuser(userEmail, userPassword, first_name='Admin', last_name='User')

    # create test user account profile 
    testuser = User.objects.create_user(testEmail, testPassword, first_name='Test', last_name='User')

    EmailAddress.objects.create(user = testuser, email = testEmail, primary=True, verified=True)