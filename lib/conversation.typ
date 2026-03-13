#import "core/definition-title.typ": definition
#import "data/conversation-data.typ": data

/**
  * Author: { @Override } -> 20260313
  **/

#set page(margin: 1.5em)

#data.values().map(d => definition(data: d)).join()

