UPDATE `quest_template` SET `RequestItemsText` ='The cologne isn''t going to give itself out, you know.$B$BGet spraying!' , `OfferRewardText` ='Nice work, $N! People will be buying Crown colognes by the crate-load now that they''ve had a chance to try them.$B$BHere''s a little something for helping us out.' WHERE `Id` = 24635;
UPDATE `quest_template` SET `RequestItemsText` ='That perfume''s not going to spray itself, you know.$B$BGet going!' , `OfferRewardText` ='Great work, $N! People will come running to buy Crown perfumes now that they''ve had a chance to sample their wonders.$B$BHere''s a little something for helping us out.' WHERE `Id` = 24629;
UPDATE `quest_template` SET `RequestItemsText` ='You know, those chocolates aren''t going to fling themselves at people.$B$BYou need to get to work!' , `OfferRewardText` ='Lovely work, $N! People will be tripping over one another to get Crown chocolates now that they''ve had a chance to taste those sweet, romantic treats.$B$BHere''s a little something for helping us out.' WHERE `Id` = 24636;
UPDATE `quest_template` SET `OfferRewardText` ='Hey. You got some time on your hands? I could use someone like you.' WHERE `Id` IN (24804,24805);
UPDATE `quest_template` SET `RequestItemsText` ='You analyze that reek yet, kid?' , `OfferRewardText` ='Hey, thanks, kid. Give it over, let''s take a look.$B$B<He takes the device from you and fiddles with it.>$B$BOh, that ain''t good.' WHERE `Id` IN (24655,24536);
UPDATE `quest_template` SET `RequestItemsText` ='Did they toss ya a crate to deliver?' , `OfferRewardText` ='You got it, huh? Good job, kid. Top notch. Let''s see what we what we got here.$B$B<He cracks open the crate and rummages around inside.' WHERE `Id` IN (24656,24541);
UPDATE `quest_template` SET `OfferRewardText` ='You... You''re not Snivel. Did he send you? He''s so late, I had started to give up hope...$B$B<Tears start welling up in the woman''s eyes once she realizes that you aren''t there to deliver a message from Snivel.>$B$BThat''s not like my Snivel, but what choice is there?' WHERE `Id` = 24848;
UPDATE `quest_template` SET `OfferRewardText` ='You''re not Snivel. He was supposed to be here an hour ago! What have you done with him?$B$B<Roka seems to calm down when you tell her that you''re looking for Snivel, too. Then the tears start to well up in her eyes.>$B$BThis isn''t like my Snivel. Do you think something''s happened to him?' WHERE `Id` = 24850;
UPDATE `quest_template` SET `RequestItemsText` ='Who are you?' , `OfferRewardText` ='All he talked about was leaving town with all his money? Then he really has abandoned me, hasn''t he?$B$BOh, $N. I was such a fool to fall for him, but how could I help myself? He was so irresistible!' WHERE `Id` = 24849;
UPDATE `quest_template` SET `RequestItemsText` ='Who are you?' , `OfferRewardText` ='All he talked about was leaving town with all his money? Then he really has abandoned me, hasn''t he?$B$BI can''t believe I fell for such a horrible goblin! But he was so irresistible when we first met.' WHERE `Id` = 24851;
UPDATE `quest_template` SET `RequestItemsText` ='Did you find the guy, or did he crawl under a rock?' , `OfferRewardText` ='You got his ledger? Really? That''s great, $N. There''s probably loads of good information in here.' WHERE `Id` IN (24657,24576);
UPDATE `quest_template` SET `OfferRewardText` ='Fantastic. Help is exactly what I need.' WHERE `Id` IN (24792,24793);
UPDATE `quest_template` SET `RequestItemsText` ='I don''t remember ordering a cleaing service... why yes, I am Apothecary Hummel.$B$B...wait, what is the meaning of this? You think these meaningless papers can stop me? Hah!' , `OfferRewardText` ='What we do here is none of your business...' WHERE `Id` = 11488;
UPDATE `quest_template` SET `RequestItemsText` ='Did you take care of those no-good scheming villains?' , `OfferRewardText` ='What''ve you got there?$B$BOh hey, this is big. Real big. Most of the crazy details in one little package. Thanks - you really helped us reel this all in. Good working with ya.' WHERE `Id` IN (24745,14483);
UPDATE `quest_template` SET `RequestItemsText` ='Did you teach ''em a lesson?' , `OfferRewardText` ='Good job, kid. You deserve a little somethin''. And hey, come back tomorrow if you get the time; I might have a job for ya.' WHERE `Id` IN (24658,24665,24666,24664,24663,24659,24660,24662,24647,24638,24651,24652,24650,24649,24645,24648);

UPDATE `quest_template` SET `PrevQuestId`=24805 WHERE `Id`=24536; -- Uncommon Scents completed before starting Something Stinks
UPDATE `quest_template` SET `PrevQuestId`=24536 WHERE `Id`=24541; -- Something Stinks completed before starting Pilfering Perfume
UPDATE `quest_template` SET `PrevQuestId`=24541 WHERE `Id`=24850; -- Pilfering Perfume completed before starting Snivel's Sweetheart
UPDATE `quest_template` SET `PrevQuestId`=24850 WHERE `Id`=24851; -- Snivel's Sweetheart completed before starting Hot On The Trail
UPDATE `quest_template` SET `PrevQuestId`=24851 WHERE `Id`=24576; -- Hot On The Trail completed before starting A Friendly Chat...
UPDATE `quest_template` SET `PrevQuestId`=24576 WHERE `Id` IN (24638,24645,24647,24648,24649,24650,24651,24652); -- A Friendly Chat... completed before starting Crushing the Crown

UPDATE `quest_template` SET `PrevQuestId`=24804 WHERE `Id`=24655; -- Uncommon Scents completed before starting Something Stinks
UPDATE `quest_template` SET `PrevQuestId`=24655 WHERE `Id`=24656; -- Something Stinks completed before starting Pilfering Perfume
UPDATE `quest_template` SET `PrevQuestId`=24656 WHERE `Id`=24848; -- Pilfering Perfume completed before starting Snivel's Sweetheart
UPDATE `quest_template` SET `PrevQuestId`=24848 WHERE `Id`=24849; -- Snivel's Sweetheart completed before starting Hot On The Trail
UPDATE `quest_template` SET `PrevQuestId`=24849 WHERE `Id`=24657; -- Hot On The Trail completed before starting A Friendly Chat...
UPDATE `quest_template` SET `PrevQuestId`=24657 WHERE `Id` IN (24658,24659,24660,24662,24663,24664,24665,24666); -- A Friendly Chat... completed before starting Crushing the Crown

DELETE FROM `creature_involvedrelation` WHERE `quest`=24745;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(38066, 24745); -- A - Something is in the Air (and it Ain't Love) - Inspector Snip Snagglebolt