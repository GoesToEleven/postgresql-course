SELECT CAST('{"name": "Bob", "favoriteFoods": ["Banana", "Candy"]}' AS JSONB) @> CAST('{"favoriteFoods": ["Banana", "Banana"]}' AS JSONB);
