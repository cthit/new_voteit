# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from collections import Counter

from pyramid.paster import bootstrap
import transaction


FIELD_TRANSLATIONS = {
    'gender_select': {'target_field': 'gender', 'translations': {
        'man': 'male',
        'kvinna': 'female',
        'ickebinar': 'other',
        'fritext': 'other',
        '': '',
    }},
    'pronomen': {'target_field': 'pronoun', 'translations': {
        'den': '',
        'han': 'he',
        'hen': 'ze',
        'hon': 'she',
        '': '',
    }}
}


def main():
    env = bootstrap('etc/development.ini')
    root = env['root']
    # request = env['request']
    users = root['users']
    counter = Counter()
    for user in users.values():
        for field, data in FIELD_TRANSLATIONS.items():
            value = getattr(user, field, None)
            if value is not None:
                target_value = data['translations'].get(value, '')
                setattr(user, data['target_field'], target_value)
                delattr(user, field)
                if hasattr(user, 'gender_freetext'):
                    delattr(user, 'gender_freetext')
                    counter['gender_freetext'] += 1
                counter['{}:{}=>{}'.format(field, value, target_value)] += 1
    transaction.commit()
    print(counter)


if __name__ == '__main__':
    main()
