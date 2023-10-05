"""Get token from Trakt.tv using oauth"""
from __future__ import absolute_import, division, print_function

import json
import logging
import os
import sys

from trakt import Trakt

logging.basicConfig(level=logging.DEBUG)


def authenticate():
    """Take the token from oauth"""
    authorization = os.environ.get('TRAKTTV_TOKEN')

    if authorization:
        return json.loads(authorization)

    redirect_url = Trakt['oauth'].authorize_url('urn:ietf:wg:oauth:2.0:oob')
    print(f"Navigate to: {redirect_url}")

    code = input('Authorization code:')
    if not code:
        sys.exit(1)

    authorization = Trakt['oauth'].token(code, 'urn:ietf:wg:oauth:2.0:oob')
    if not authorization:
        sys.exit(1)

    for key, value in authorization.items():
        print(key, value)

    print('Authorization: %r' % authorization)
    print('AUTH', authorization)
    return authorization


if __name__ == '__main__':

    # Configure
    Trakt.configuration.defaults.client(
        id=os.environ.get('CLIENT_ID'),
        secret=os.environ.get('CLIENT_SECRET')
    )

    # Authenticate
    Trakt.configuration.defaults.oauth.from_response(
        authenticate()
    )
