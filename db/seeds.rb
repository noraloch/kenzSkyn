puts "seeded";
#user
dido = User.create(username: "AR", password: "123", first_name: "Andrew", last_name: "Rottier")
beibo = User.create(username: "NL", password: "abc", first_name: "Noura", last_name: "Loudani")

#products
dry_skin_1 = Product.create(name: "XeraCalm A.D Lipid-Replenishing Cleansing Oil",
    category: "Cleanser",
    brand: "Avene",
    image: "https://www.aveneusa.com/media/catalog/product/cache/5dbd0cf480e16c38228c1246c9017fe9/x/e/xeracalm-a.d-lipid-replenishing-cleansing-oil_13.5-fl.oz._p0001724.png",
    description: "Unique oil texture that lathers to seal in moisture and restore skin's barrier. Helps to maintain a healthy balance without stripping the skin's natural microbiome. For bath and shower use, safe for entire family.",
    link: "https://www.aveneusa.com/xeracalm-lipid-replenishing-cleansing-oil",
    skin_attribute: "dry_skin")
dry_skin_2 = Product.create(name: "Primally Pure Cleansing Oil",
    category: "Cleanser",
    brand: "Primally Pure",
    image: "https://i.pinimg.com/originals/99/1a/29/991a29eb25368d941d42501bbbf4b168.jpg",
    description: "Based on the scientific principle that like dissolves like, the oil cleansing method utilizes beneficial oils that penetrate deep into pores to dissolve grime and build-up. This age-old method of cleansing effectively purifies + nourishes the skin while keeping its natural moisture barrier in-tact.",
    link: "https://primallypure.com/products/cleansing-oil-dry-skin?variant=17074960838",
    skin_attribute: "dry_skin")

combination_skin_1 = Product.create(name: "REFRESHER",
    category: "Cleanser",
    brand: "Maelove",
    image: "https://cdn.shopify.com/s/files/1/1919/1971/products/R_DP_900x.png?v=1564719474",
    description: "Your skin surface maintains a natural moisture barrier made of sebum (skin oil). Harsh detergents can strip away the layer of sebum, and that leaves your skin vulnerable to dryness. This energy boosting, refreshing face wash uses a triple blend of AHAs (lactic, malic and tartaric) to thoroughly clean and revitalize your skin.",
    link: "https://maelove.com/products/refresher",
    skin_attribute: "combination_skin")

oily_skin_1 = Product.create(name: "Primally Pure Cleansing Oil",
    category: "Cleanser",
    brand: "Primally Pure",
    image: "https://cdn.stamped.io/uploads/photos/35942_5461545030_0d9db105_021b_4d1a_bbc9_3730d1893631.jpg",
    description: "Based on the scientific principle that like dissolves like, the oil cleansing method utilizes beneficial oils that penetrate deep into pores to dissolve grime and build-up. Our Cleansing oil for acne deeply cleanses the skin while promoting more balanced oil production.",
    link: "https://primallypure.com/products/cleansing-oil-oily-acne-prone-skin?variant=17074829510",
    skin_attribute: "oily_skin")

#ingredients
#Dry
aha = Ingredient.create(name: "AHA: Alphahydroxy Acids", short_description: "Water-soluble acids made from sugary fruits. They help peel away the surface of your skin so that new, more evenly pigmented skin cells may generate and take their place. After use, you’ll likely notice that your skin is smoother to the touch.")
omega = Ingredient.create(name: "Omega", short_description: "Derived from evening primrose and rich in omega-6 to nourish, hydrate and help restore skin's barrier.")
lactic_acid = Ingredient.create(name: "lactic acid", short_description: "One of the most popular AHAs out there in skin care, lactic acid is another acid known for its anti-aging prowess. Dry skin types can have more trouble combatting signs of aging and need a lot of moisture from products to help balance skin texture and feel.")
almond_oil = Ingredient.create(name: "almond oil", short_description: "Almond oil has been used for centuries to treat dry skin conditions, including eczema and psoriasis. Improves acne. The oil's fatty acid content may help dissolve excess oil on the skin, while the retinoids in the oil may reduce the appearance of acne and improve cell turnover. Helps reverse sun damage.") 
meadowfoam_seed_oil = Ingredient.create(name: "meadowfoam seed oil", short_description: "Has a waxy texture, which is very similar to jojoba oil, and it is used in many balms, lotions and creams. It can be used to soothe burns, blisters, dry skin, acne, psoriasis, eczema, wrinkles and is considered suitable for all skin types, especially dry and mature aging skin.")
oat = Ingredient.create(name: "oat", short_description: "Oats have the power to sooth dry, flaky, or itchy skin. They are so beneficial to use on any kind of skin irritation, even rashes.")
ceramide = Ingredient.create(name: "ceramide", short_description: "Ceramides are essentially the glue that holds our skin cells together to keep our skin barrier intact and healthy. A healthy skin barrier helps seal in moisture and seal out impurities.")
hyaluronic_acid = Ingredient.create(name: "hyaluronic acid", short_description: " Hyaluronic acid, or HA, is actually a naturally occurring acid in the body that serves as a powerful humectant (a moisture-grabbing ingredient). It’s perfect for people with dry, flaky skin since it not only deposits moisture but locks it in.")
jojoba_oil = Ingredient.create(name: "jojoba oil", short_description: "Has anti-inflammatory properties which help to tame chaffing and chapping, reduce redness caused by drying, ease the effects of eczema and rosacea, and keep skin calm and comfortable. The Vitamin E and B-complex vitamins in the Jojoba Oil help in skin repair and damage control." )
avocado_oil = Ingredient.create(name: "avocado oil", short_description: "Contains a high percentage of Vitamin E, as well as potassium, lecithin, and many other nutrients which can nourish and moisturize your skin. The oleic acid also promotes collagen production, which helps grow new skin. This accelerates the healing process, helping with issues like sunburn." )
glycerin = Ingredient.create(name: "glycerin", short_description: "Glycerin is great for the skin because it acts as a humectant, which is a substance that allows the skin to retain moisture. It can increase skin hydration, relieve dryness, and refresh the skin's surface.")
vitamin_E = Ingredient.create(name: "Vitamin E", short_description: "Moisturizes and nourishes your skin. It adds to your glow and makes your skin smooth and health.")
#Combination Oily Normal
glycolic_acid = Ingredient.create(name: "glycolic acid", short_description: "It's best for normal, combination, and oily skin types")
    
#Oily
retinol = Ingredient.create(name: "retinol", short_description: "Works by increases the speed of your skin cell turnover process to reveal healthier, brighter skin. The downside of Retinol is that it can be irritating for certain skin types but oily skin is generally the best at receiving this potent, powerhouse ingredient.")
niacinamide = Ingredient.create(name: "niacinamide", short_description: "Also know as Vitamin B3, is a multi-tasking skincare ingredient that hydrates, increases the elasticity of your skin, minimizes pore size, and—of course—regulates excess oil production. Niacinimide can be paired with Hyaluronic Acid to keep your skin moisturized, soft, and shine-free.")
clay = Ingredient.create(name: "clay", short_description: "Often found in cleansers and masks, clay is another top-notch ingredient for oily skin. Clay works by soaking up excess oil from the surface of your skin and deep inside your pores to give your skin a less shiny, matte appearance. Just be sure to follow clay-based products with some of the moisturizing ingredients listed here as clay can leave your skin feeling a little dry.")
grapeseed_oil = Ingredient.create(name: "grapeseed oil", short_description: "Grapeseed Oil is full of healthy fatty acids that reduce inflammation due to acne and clear clogged pores. Grapeseed oil will also keep your skin moisturized, which means your face won’t compensate by making too much oil of its own.")
        
#Acne
salicylic_acid = Ingredient.create(name: "salicylic acid", short_description: "known to deep clean and help prevent acne breakouts")

#Neutral
citric_acid = Ingredient.create(name: "citric acid", short_description: "Citric Acid is an alpha/beta hydroxy acid found naturally in citrus fruits such as lemons and limes. In skincare formulations, Citric Acid has protective antioxidant, and corrective antiaging effects helping to reverse visible signs of photodamage.Ideal for all ages and skin type.")
polyphenols = Ingredient.create(name: "polyphenols", short_description: "The plant polyphenols possess anti-inflammatory, immunomodulatory, anti-oxidant properties and DNA repair activities, and that can be exploited for the prevention of variety of skin disorders caused by excessive exposure to solar UV light.") 
#product ingredients
dry_skin_1_ing = ProductIngredient.create(product_id: dry_skin_1.id, ingredient_id: omega.id)
oily_skin_1_ing = ProductIngredient.create(product_id: oily_skin_1.id, ingredient_id: aha.id)