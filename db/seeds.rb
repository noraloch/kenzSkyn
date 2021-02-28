puts "seeded";
#user
dido = User.create(username: "ACR", password: "123", first_name: "Andrew", last_name: "Rottier")
beibo = User.create(username: "NL", password: "abc", first_name: "Noura", last_name: "Loudani")

#products
dry_skin_1 = Product.create(name: "XeraCalm A.D Lipid-Replenishing Cleansing Oil",
    category: "Cleanser",
    brand: "Avene",
    image: "https://www.aveneusa.com/media/catalog/product/cache/5dbd0cf480e16c38228c1246c9017fe9/x/e/xeracalm-a.d-lipid-replenishing-cleansing-oil_13.5-fl.oz._p0001724.png",
    description: "Unique oil texture that lathers to seal in moisture and restore skin's barrier. Helps to maintain a healthy balance without stripping the skin's natural microbiome. For bath and shower use, safe for entire family.", link: "https://www.aveneusa.com/xeracalm-lipid-replenishing-cleansing-oil",
    skin_attribute: "dry_skin")
oily_skin_1 = Product.create(name: "REFRESHER",
    category: "Cleanser",
    brand: "Maelove",
    image: "https://cdn.shopify.com/s/files/1/1919/1971/products/R_DP_900x.png?v=1564719474",
    description: "Your skin surface maintains a natural moisture barrier made of sebum (skin oil). Harsh detergents can strip away the layer of sebum, and that leaves your skin vulnerable to dryness. This energy boosting, refreshing face wash uses a triple blend of AHAs (lactic, malic and tartaric) to thoroughly clean and revitalize your skin.",
    link: "https://maelove.com/products/refresher",
    skin_attribute: "oily_skin")

#ingredients
omega = Ingredient.create(name: "Omega", short_description: "Derived from evening primrose and rich in omega-6 to nourish, hydrate and help restore skin's barrier.")
aha = Ingredient.create(name: "AHA: Alphahydroxy Acids", short_description: "Water-soluble acids made from sugary fruits. They help peel away the surface of your skin so that new, more evenly pigmented skin cells may generate and take their place. After use, you’ll likely notice that your skin is smoother to the touch.")

#product ingredients
dry_skin_1_ing = ProductIngredient.create(product_id: dry_skin_1.id, ingredient_id: omega.id)
oily_skin_1_ing = ProductIngredient.create(product_id: oily_skin_1.id, ingredient_id: aha.id)