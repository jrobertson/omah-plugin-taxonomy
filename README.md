# Introducing the OMAH Plugin Taxonomy Gem


## Example

    require 'dummy_omah'
    require 'omah-plugin-taxonomy'


    a = [
          ['001', 'paula@funfunfun.co.uk', 'somebody@jamesrobertson.eu',\
          'test 200','2015-may-26 08:55','just a quick test',\
          '<p>just a quick test</p>',[]]
        ]

    plugins = {
      Taxonomy: {lookupfile: '/tmp/filter-list.txt'}
    }

    dummy = DummyOmah.new filepath: '/tmp', plugins: plugins
    dummy.fetch_email a

In the above example the omah-plugin-taxonomy gem is tested with the ?dummy_omah gem http://www.jamesrobertson.eu/snippets/2015/may/26/testing-the-omah-gem-using-the-dummyomah-gem.html? to tag a message as **priority** by matching the recipient email address with the *from* address found in the filter-list.txt file.

lookupfile: (filter-list.txt):

<pre>
&lt;?dynarex schema="filter[title, description]/item(from, subject, tags)"?&gt;
title: Email taxonomy filter list
description: Pattern matches for associating email message with tags
--+

from: paula@funfunfun.co.uk
tags: priority

from: bot@jobs4u.com
tags: jobs
</pre>

## Resources

* omah-plugin-taxonomy https://rubygems.org/gems/omah-plugin-taxonomy

omah plugin taxonomy email gem
