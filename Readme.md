# Karabiner complex modifications
My presonal settings with some handy qmk features.

- qmk 3 types of [autoshift](https://github.com/qmk/qmk_firmware/blob/master/docs/feature_auto_shift.md)
- qmk [space cadet space](https://beta.docs.qmk.fm/features/feature_space_cadet_shift)
- hold `tab + hjkl` as arrow key.
- hold `tab + yuio` as `home/page down/page up/end` 
- swap `backslash` and `delete` like hhkb layout. this rule must place before any autoshift rule.
- spacebar as alt when hold.

Since karabiner always use qwerty layout, to support dvorak keyboard layout, need to create new profile setting.

for autoshift to work properly. some timeout parameters need to be changed. this is different to everyone. 

| parameter     | milliseconds  |
| :---------------------- | ---- |
| to if alone timeout | 150  |
| to if heldown threshold | 150  |
| to delayed action       | 200  |
| simutaneous threshold   | 50   |
