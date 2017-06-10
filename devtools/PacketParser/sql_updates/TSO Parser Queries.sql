ALTER TABLE `raw_item_appearances` CHANGE `item_id` `item_id` INT DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_classes` CHANGE `item_id` `item_id` INT DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_descriptions` CHANGE `item_id` `item_id` INT DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_armor` CHANGE `item_id` `item_id` INT DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_bag` CHANGE `item_id` `item_id` INT DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_bauble` CHANGE `item_id` `item_id` INT UNSIGNED DEFAULT '0' NULL;
ALTER TABLE `raw_item_details_food` CHANGE `item_id` `item_id` INT DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_house` CHANGE `item_id` `item_id` INT DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_house_container` CHANGE `item_id` `item_id` INT DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_range` CHANGE `item_id` `item_id` INT DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_recipe` CHANGE `item_id` `item_id` INT DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_recipe_items` CHANGE `item_id` `item_id` INT DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_shield` CHANGE `item_id` `item_id` INT DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_skills` CHANGE `item_id` `item_id` INT DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_thrown` CHANGE `item_id` `item_id` INT DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_details_weapon` CHANGE `item_id` `item_id` INT DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_effects` CHANGE `item_id` `item_id` INT DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_skill_classes` CHANGE `item_id` `item_id` INT DEFAULT '0' NOT NULL;
ALTER TABLE `raw_item_stats` CHANGE `item_id` `item_id` INT DEFAULT '0' NOT NULL;
ALTER TABLE `raw_items` CHANGE `id` `id` INT NOT NULL AUTO_INCREMENT;
ALTER TABLE `raw_merchant_items` CHANGE `item_id` `item_id` INT NOT NULL;
ALTER TABLE `raw_quest_reward_items` CHANGE `item_id` `item_id` INT DEFAULT '0' NOT NULL;
ALTER TABLE `raw_spawn_info` CHANGE `race_type` `model_type` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `raw_spawn_info` CHANGE `soga_race_type` `soga_model_type` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL;