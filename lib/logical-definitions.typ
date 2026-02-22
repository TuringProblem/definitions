#import "core/definition-title.typ": definition
#import "data/logic-data.typ": data

#data.values().map(d => definition(data: d)).join()
