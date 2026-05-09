DELETE FROM `weenie` WHERE `class_Id` = 803663;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803663, 'bankinginfo', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803663,   1,       8192) /* ItemType - Writable */
     , (803663,   5,       9000) /* EncumbranceVal */
     , (803663,   8,       1800) /* Mass */
     , (803663,  16,         48) /* ItemUseable - ViewedRemote */
     , (803663,  19,        125) /* Value */
     , (803663,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803663,   1, True ) /* Stuck */
     , (803663,  12, True ) /* ReportCollisions */
     , (803663,  13, False) /* Ethereal */
     , (803663,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803663,  54,       5) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803663,   1, 'Banking') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803663,   1,   33556014) /* Setup */
     , (803663,   8,  100668115) /* Icon */;

INSERT INTO `weenie_properties_book` (`object_Id`, `max_Num_Pages`, `max_Num_Chars_Per_Page`)
VALUES (803663, 1, 1000);

INSERT INTO `weenie_properties_book_page_data` (`object_Id`, `page_Id`, `author_Id`, `author_Name`, `author_Account`, `ignore_Author`, `page_Text`)
VALUES (803663, 0, 4294967295, 'Training Master', 'prewritten', False, '
Every player is provided with a Bank Account. To initialize it, simply type ''/bank account'' to receive your personal routing number.

Here are the following commands you can use for your bank account:

/bank deposit pyreals ### - Attempts to deposit the specified amount of pyreals into your pyreal bank.

/bank deposit ashcoin ### - Attempts to deposit the specified amount of AshCoin into your pyreal bank.

/bank deposit luminance ### - Attempts to deposit the specified amount of luminance into your luminance bank.

/bank withdraw luminance ### - Attempts to withdraw the specified amount of luminance from your bank to your character.

/bank withdraw pyreals ### - Attempts to withdraw the specified amount of pyreals from your bank to your inventory.

/bank withdraw ashcoin ### - Attempts to withdraw the specified amount of Ashcoin from your bank to your inventory.

/bank withdraw ctokens ### - Attempts to withdraw the specified amount of Carnage tokens from your bank to your inventory.

/bank account - Shows your account number and account balances.

/bank send ACCOUNT# pyreals ### - Attempts to send an amount of pyreals to another account number.

/bank send ACCOUNT# ashcoin ### - Attempts to send an amount of AshCoin to another account number.

/bank send ACCOUNT# luminance ### - Attempts to send an amount of luminance to another account number.

/bank deposit all - Attempts to deposit all pyreals, MMD''s(converts to pyreals), luminance, AC Notes, and AshCoin from your character into your bank.

/bank deposit pyrealsavings ###

/bank withdraw pyrealsavings ### (Only able to be done once a month)

Additional Info:

Standard Account
Everyone is set up with a standard account that holds Pyreals, AshCoin, and Luminance. You can deposit or withdraw from this account at any time.

Savings Account
Everyone is set up with a Pyreal Savings account. You can deposit ONLY pyreals into this account, not MMDs, AshCoin, or Luminance. This account:

Can only be drawn from once a month
Gains monthly compounding INTEREST so you are always earning money
The more Reputation you hold, the higher your interest rate goes
');
