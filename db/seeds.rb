fx = Asset.create(name: "FX Networks", date: "1 June 1994")
disney_brand = Asset.create(name: "Disney Branded Television", date: "15 July 1982")
nat_geo = Asset.create(name: "National Geographic Global Networks", date: "1 September 1997")
abc_news = Asset.create(name: "ABC News", date: '15 June 1945')
walt_disney_tv = Asset.create(name: "Walt Disney Television", date: "18 March 1985")

Subsidiary.create(name: "FX", date: "1 June 1994", asset: fx)
Subsidiary.create(name: "Disney Channel", date: "18 April 1983", asset: disney_brand)
Subsidiary.create(name: "National Geographic TV", date: "7 January 2001", asset: nat_geo)
Subsidiary.create(name: "Nat Geo Wild", date: "	21 August 2006", asset: nat_geo)
Subsidiary.create(name: "ABC Audio", date: "7 August 2014", asset: abc_news)
Subsidiary.create(name: "ABC Entertainment", date: "2000", asset: walt_disney_tv)































