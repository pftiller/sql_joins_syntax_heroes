-- 1. How many powers are there?
SELECT count(*)AS "Number of Powers" FROM powers;

-- 2. List all heroes and their powers. It's okay that heroes appear multiple times.

SELECT * FROM "heroes" JOIN "heroes_powers" ON "heroes"."id" = "heroes_powers"."hero_id"
JOIN "powers" ON "powers"."id" = "heroes_powers"."power_id";

-- 3. Find all of Professor X's powers.
SELECT "powers"."description", "heroes_powers"."power_id"
FROM "powers" JOIN "heroes_powers"
ON "powers"."id" = "heroes_powers"."power_id"
WHERE "heroes_powers"."hero_id" = 3;

-- 4. Add a new super power. 
INSERT INTO "powers" (id, name, description)
VALUES (9, 'X-Ray Vision','The ability to see through walls');

-- 5. Add this power to an existing hero.
INSERT INTO "heroes_powers" (id, hero_id, power_id, power_level)
VALUES (16, 3, 9, 5);

-- 6. Which heroes have laser vision? Include their name and alias.


-- 7. How many can fly? A twist on the above...

-- 8. What is the average super strength power level?

-- 9. Show all the information for heroes with super strength power level over 2.

-- 10. Find the average power level for all powers. Include the power name and descriptions.