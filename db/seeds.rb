fx = Asset.create(name: "FX Networks", date: "1 June 1994")
disney_brand = Asset.create(name: "Disney Branded Television", date: "15 July 1982")

Subsidiary.create(name: "FX", date: "1 June 1994", asset: fx)
Subsidiary.create(name: "Disney Channel", date: "18 April 1983", asset: disney_brand)