---
title: "Sentimentr Rich and Sad"
weight: 1
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
---


```
## ── Attaching core tidyverse packages ───────────────── tidyverse 2.0.0 ──
## ✔ dplyr     1.1.4     ✔ readr     2.1.5
## ✔ forcats   1.0.0     ✔ stringr   1.5.1
## ✔ ggplot2   3.5.1     ✔ tibble    3.2.1
## ✔ lubridate 1.9.3     ✔ tidyr     1.3.1
## ✔ purrr     1.0.2     
## ── Conflicts ─────────────────────────────────── tidyverse_conflicts() ──
## ✖ dplyr::filter() masks stats::filter()
## ✖ dplyr::lag()    masks stats::lag()
## ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
```

```
##                                                                            V1
## 1                 Hundred thousand for the chain and now my drop (drop, drop)
## 2                        When I pull out the garage, I chop my top (top, top)
## 3                         Just like a fiend, when I start I cannot stop (wow)
## 4                         I got, I got hella guap, look at me now (at me now)
## 5                                                      Ooh, covered in carats
## 6                                                      Ooh, mahogany cabinets
## 7                                              Ooh, I ball like the Mavericks
## 8                                                   Ooh, stable and stallions
## 9                                                     Ooh, massive medallions
## 10                                                      Ooh, I finally had it
## 11                                            Ooh, but then you just vanished
## 12                                               Damn, I thought I was savage
## 13                          All this stuntin' couldn't satisfy my soul (soul)
## 14                       Got a hundred big places, but I'm still alone ('one)
## 15                                             Ayy, I would throw it all away
## 16                        I just keep on wishin' that the money made you stay
## 17                           You ain't never cared about that bullshit anyway
## 18                   I just keep on wishin' that the money made you stay, ayy
## 19                                         You know I would throw it all away
## 20                        I just keep on wishin' that the money made you stay
## 21                 Price went up, my price went up, we went our separate ways
## 22              I just keep on wishin' that the money made you stay, ayy, ayy
## 23                                                                        Mmm
## 24                                          Buy me, love, try to buy me, love
## 25                                      Now I'm alone, Ice Box, Omarion (ooh)
## 26                                   Plenty sluts grabbin' on my nuts (woah!)
## 27                                 Might have fucked, it was only lust trust)
## 28              I was livin' life, how could I have known? (Could have known)
## 29                     Couldn't listen to advice, 'cause I'm never wrong (oh)
## 30                                   In the spotlight, but I'm on my own (oh)
## 31                                Now that you're gone (now that you're gone)
## 32                          All this stuntin' couldn't satisfy my soul ('oul)
## 33                       Got a hundred big places, but I'm still alone ('one)
## 34                                             Ayy, I would throw it all away
## 35                        I just keep on wishin' that the money made you stay
## 36                           You ain't never cared about that bullshit anyway
## 37                   I just keep on wishin' that the money made you stay, ayy
## 38                                         You know I would throw it all away
## 39                        I just keep on wishin' that the money made you stay
## 40                 Price went up, my price went up, we went our separate ways
## 41              I just keep on wishin' that the money made you stay, ayy, ayy
## 42                                                 I don't even wanna go home
## 43                                           In a big house all alone (alone)
## 44                                    I don't even wanna go home (no, no, no)
## 45                              But I'ma try to call you on the phone (brrt!)
## 46                                                  I would throw it all away
## 47                        I just keep on wishin' that the money made you stay
## 48                           You ain't never cared about that bullshit anyway
## 49   I just keep on wishin' that the money made you stay, ayy (made you stay)
## 50                              You know I would throw it all away (all away)
## 51        I just keep on wishin' that the money made you stay (made you stay)
## 52 Price went up, my price went up, we went our separate ways (separate ways)
## 53              I just keep on wishin' that the money made you stay, ayy, ayy
```

```
## Key: <element_id>
##     element_id word_count        sd ave_sentiment
##          <int>      <int>     <num>         <num>
##  1:          1         11        NA    0.00000000
##  2:          2         12        NA    0.79385662
##  3:          3         11        NA   -0.03015113
##  4:          4         13        NA    0.00000000
##  5:          5          4        NA    0.00000000
##  6:          6          3        NA    0.00000000
##  7:          7          6        NA    0.20412415
##  8:          8          4        NA    0.50000000
##  9:          9          3        NA    0.00000000
## 10:         10          5        NA    0.17888544
## 11:         11          6        NA   -0.55113519
## 12:         12          6        NA   -0.51031036
## 13:         13          8        NA   -0.35355339
## 14:         14         10        NA   -0.34785054
## 15:         15          7        NA    0.00000000
## 16:         16         11        NA    0.18090681
## 17:         17          8        NA   -0.17677670
## 18:         18         12        NA    0.17320508
## 19:         19          8        NA    0.00000000
## 20:         20         11        NA    0.18090681
## 21:         21         12        NA    0.00000000
## 22:         22         13        NA    0.16641006
## 23:         23          1        NA    0.00000000
## 24:         24          8        NA    0.53033009
## 25:         25          7        NA   -0.22677868
## 26:         26          7        NA   -0.37796447
## 27:         27          8        NA   -0.26516504
## 28:         28         12 0.4286607   -0.33080476
## 29:         29          9        NA    0.25000000
## 30:         30          9        NA    0.00000000
## 31:         31          8        NA    0.00000000
## 32:         32          8        NA   -0.35355339
## 33:         33         10        NA   -0.34785054
## 34:         34          7        NA    0.00000000
## 35:         35         11        NA    0.18090681
## 36:         36          8        NA   -0.17677670
## 37:         37         12        NA    0.17320508
## 38:         38          8        NA    0.00000000
## 39:         39         11        NA    0.18090681
## 40:         40         12        NA    0.00000000
## 41:         41         13        NA    0.16641006
## 42:         42          6        NA    0.00000000
## 43:         43          7        NA   -0.35906625
## 44:         44          9        NA    0.00000000
## 45:         45         10        NA    0.00000000
## 46:         46          6        NA    0.00000000
## 47:         47         11        NA    0.18090681
## 48:         48          8        NA   -0.17677670
## 49:         49         15        NA    0.15491933
## 50:         50         10        NA    0.00000000
## 51:         51         14        NA    0.16035675
## 52:         52         14        NA    0.00000000
## 53:         53         13        NA    0.16641006
##     element_id word_count        sd ave_sentiment
```

```
##                                                                             V1
##                                                                <get_sentences>
##  1:                Hundred thousand for the chain and now my drop (drop, drop)
##  2:                       When I pull out the garage, I chop my top (top, top)
##  3:                        Just like a fiend, when I start I cannot stop (wow)
##  4:                        I got, I got hella guap, look at me now (at me now)
##  5:                                                     Ooh, covered in carats
##  6:                                                     Ooh, mahogany cabinets
##  7:                                             Ooh, I ball like the Mavericks
##  8:                                                  Ooh, stable and stallions
##  9:                                                    Ooh, massive medallions
## 10:                                                      Ooh, I finally had it
## 11:                                            Ooh, but then you just vanished
## 12:                                               Damn, I thought I was savage
## 13:                          All this stuntin' couldn't satisfy my soul (soul)
## 14:                       Got a hundred big places, but I'm still alone ('one)
## 15:                                             Ayy, I would throw it all away
## 16:                        I just keep on wishin' that the money made you stay
## 17:                           You ain't never cared about that bullshit anyway
## 18:                   I just keep on wishin' that the money made you stay, ayy
## 19:                                         You know I would throw it all away
## 20:                        I just keep on wishin' that the money made you stay
## 21:                 Price went up, my price went up, we went our separate ways
## 22:              I just keep on wishin' that the money made you stay, ayy, ayy
## 23:                                                                        Mmm
## 24:                                          Buy me, love, try to buy me, love
## 25:                                      Now I'm alone, Ice Box, Omarion (ooh)
## 26:                                   Plenty sluts grabbin' on my nuts (woah!)
## 27:                                 Might have fucked, it was only lust trust)
## 28:                                 I was livin' life, how could I have known?
## 29:                                                         (Could have known)
## 30:                     Couldn't listen to advice, 'cause I'm never wrong (oh)
## 31:                                   In the spotlight, but I'm on my own (oh)
## 32:                                Now that you're gone (now that you're gone)
## 33:                          All this stuntin' couldn't satisfy my soul ('oul)
## 34:                       Got a hundred big places, but I'm still alone ('one)
## 35:                                             Ayy, I would throw it all away
## 36:                        I just keep on wishin' that the money made you stay
## 37:                           You ain't never cared about that bullshit anyway
## 38:                   I just keep on wishin' that the money made you stay, ayy
## 39:                                         You know I would throw it all away
## 40:                        I just keep on wishin' that the money made you stay
## 41:                 Price went up, my price went up, we went our separate ways
## 42:              I just keep on wishin' that the money made you stay, ayy, ayy
## 43:                                                 I don't even wanna go home
## 44:                                           In a big house all alone (alone)
## 45:                                    I don't even wanna go home (no, no, no)
## 46:                              But I'ma try to call you on the phone (brrt!)
## 47:                                                  I would throw it all away
## 48:                        I just keep on wishin' that the money made you stay
## 49:                           You ain't never cared about that bullshit anyway
## 50:   I just keep on wishin' that the money made you stay, ayy (made you stay)
## 51:                              You know I would throw it all away (all away)
## 52:        I just keep on wishin' that the money made you stay (made you stay)
## 53: Price went up, my price went up, we went our separate ways (separate ways)
## 54:              I just keep on wishin' that the money made you stay, ayy, ayy
##                                                                             V1
##     element_id sentence_id word_count   sentiment
##          <int>       <int>      <int>       <num>
##  1:          1           1         11  0.00000000
##  2:          2           1         12  0.79385662
##  3:          3           1         11 -0.03015113
##  4:          4           1         13  0.00000000
##  5:          5           1          4  0.00000000
##  6:          6           1          3  0.00000000
##  7:          7           1          6  0.20412415
##  8:          8           1          4  0.50000000
##  9:          9           1          3  0.00000000
## 10:         10           1          5  0.17888544
## 11:         11           1          6 -0.55113519
## 12:         12           1          6 -0.51031036
## 13:         13           1          8 -0.35355339
## 14:         14           1         10 -0.34785054
## 15:         15           1          7  0.00000000
## 16:         16           1         11  0.18090681
## 17:         17           1          8 -0.17677670
## 18:         18           1         12  0.17320508
## 19:         19           1          8  0.00000000
## 20:         20           1         11  0.18090681
## 21:         21           1         12  0.00000000
## 22:         22           1         13  0.16641006
## 23:         23           1          1  0.00000000
## 24:         24           1          8  0.53033009
## 25:         25           1          7 -0.22677868
## 26:         26           1          7 -0.37796447
## 27:         27           1          8 -0.26516504
## 28:         28           1          9  0.00000000
## 29:         28           2          3 -0.60621778
## 30:         29           1          9  0.25000000
## 31:         30           1          9  0.00000000
## 32:         31           1          8  0.00000000
## 33:         32           1          8 -0.35355339
## 34:         33           1         10 -0.34785054
## 35:         34           1          7  0.00000000
## 36:         35           1         11  0.18090681
## 37:         36           1          8 -0.17677670
## 38:         37           1         12  0.17320508
## 39:         38           1          8  0.00000000
## 40:         39           1         11  0.18090681
## 41:         40           1         12  0.00000000
## 42:         41           1         13  0.16641006
## 43:         42           1          6  0.00000000
## 44:         43           1          7 -0.35906625
## 45:         44           1          9  0.00000000
## 46:         45           1         10  0.00000000
## 47:         46           1          6  0.00000000
## 48:         47           1         11  0.18090681
## 49:         48           1          8 -0.17677670
## 50:         49           1         15  0.15491933
## 51:         50           1         10  0.00000000
## 52:         51           1         14  0.16035675
## 53:         52           1         14  0.00000000
## 54:         53           1         13  0.16641006
##     element_id sentence_id word_count   sentiment
```
