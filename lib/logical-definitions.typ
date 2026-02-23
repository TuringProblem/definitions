#import "core/definition-title.typ": definition
#import "data/logic-data.typ": data

/**
  * @Author: { @Override }
  * @Since:  20260222 @  
  **/

#set page(margin: 1.5em)

#data.values().map(d => definition(data: d)).join()
