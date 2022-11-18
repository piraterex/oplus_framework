.class public Landroid/database/sqlite/SQLiteTokenizer;
.super Ljava/lang/Object;
.source "SQLiteTokenizer.java"


# static fields
.field public static final blacklist OPTION_NONE:I = 0x0

.field public static final blacklist OPTION_TOKEN_ONLY:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "sql"    # Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist isAlNum(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 49
    invoke-static {p0}, Landroid/database/sqlite/SQLiteTokenizer;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/database/sqlite/SQLiteTokenizer;->isNum(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static blacklist isAlpha(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 41
    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isAnyOf(CLjava/lang/String;)Z
    .locals 1
    .param p0, "ch"    # C
    .param p1, "set"    # Ljava/lang/String;

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isFunction(Ljava/lang/String;)Z
    .locals 4
    .param p0, "token"    # Ljava/lang/String;

    .line 264
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "replace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v1, "zeroblob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v1, "randomblob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v1, "upper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v1, "total"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v1, "rtrim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v1, "round"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "ltrim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "lower"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "instr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "count"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v1, "trim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "like"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "glob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v1, "sum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v1, "min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v1, "max"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "hex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "avg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "abs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v1, "unlikely"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v1, "unicode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_17
    const-string v1, "likelihood"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_18
    const-string v1, "group_concat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_19
    const-string/jumbo v1, "typeof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto :goto_1

    :sswitch_1a
    const-string/jumbo v1, "substr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto :goto_1

    :sswitch_1b
    const-string/jumbo v1, "random"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_1c
    const-string v1, "coalesce"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1d
    const-string/jumbo v1, "nullif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_1e
    const-string v1, "likely"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_1f
    const-string v1, "length"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_20
    const-string v1, "ifnull"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 276
    return v2

    .line 274
    :pswitch_0
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x470203dc -> :sswitch_20
        -0x41f1c51a -> :sswitch_1f
        -0x41bacc9c -> :sswitch_1e
        -0x3da7731c -> :sswitch_1d
        -0x38705059 -> :sswitch_1c
        -0x37ed1b3d -> :sswitch_1b
        -0x3523a80f -> :sswitch_1a
        -0x3330496f -> :sswitch_19
        -0x275cff2c -> :sswitch_18
        -0x18bba190 -> :sswitch_17
        -0x111b8523 -> :sswitch_16
        -0xce3d4c3 -> :sswitch_15
        0x17872 -> :sswitch_14
        0x17ad2 -> :sswitch_13
        0x1931b -> :sswitch_12
        0x1a564 -> :sswitch_11
        0x1a652 -> :sswitch_10
        0x1be4b -> :sswitch_f
        0x2e9356 -> :sswitch_e
        0x307578 -> :sswitch_d
        0x32af97 -> :sswitch_c
        0x367422 -> :sswitch_b
        0x5a7510f -> :sswitch_a
        0x5fb62ec -> :sswitch_9
        0x6262b01 -> :sswitch_8
        0x6285e8e -> :sswitch_7
        0x67ab18e -> :sswitch_6
        0x67ceb94 -> :sswitch_5
        0x696db44 -> :sswitch_4
        0x6a558a2 -> :sswitch_3
        0x6eafae0 -> :sswitch_2
        0x28f79a45 -> :sswitch_1
        0x413cb2b4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist isKeyword(Ljava/lang/String;)Z
    .locals 4
    .param p0, "token"    # Ljava/lang/String;

    .line 215
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "HAVING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3d

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "GROUPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "FILTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x34

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "WITHOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8e

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "EXISTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "EXCEPT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "ESCAPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "DETACH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "CREATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "COMMIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "COLUMN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "BINARY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "BEFORE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "ATTACH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "REFERENCES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6a

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "CURRENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "REPLACE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6f

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "RELEASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6d

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "REINDEX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6c

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "COLLATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string v1, "DEFERRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_17
    const-string v1, "PRECEDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    goto/16 :goto_1

    :sswitch_18
    const-string v1, "CASCADE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_19
    const-string v1, "VIRTUAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x89

    goto/16 :goto_1

    :sswitch_1a
    const-string v1, "DISTINCT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_1b
    const-string v1, "PARTITION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x61

    goto/16 :goto_1

    :sswitch_1c
    const-string v1, "ROLLBACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x72

    goto/16 :goto_1

    :sswitch_1d
    const-string v1, "BETWEEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_1e
    const-string v1, "TEMPORARY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7b

    goto/16 :goto_1

    :sswitch_1f
    const-string v1, "RESTRICT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x70

    goto/16 :goto_1

    :sswitch_20
    const-string v1, "PRIMARY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x65

    goto/16 :goto_1

    :sswitch_21
    const-string v1, "DEFERRABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_22
    const-string v1, "CONSTRAINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_23
    const-string v1, "UNBOUNDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x81

    goto/16 :goto_1

    :sswitch_24
    const-string v1, "CONFLICT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_25
    const-string v1, "EXCLUSIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    goto/16 :goto_1

    :sswitch_26
    const-string v1, "WHERE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8b

    goto/16 :goto_1

    :sswitch_27
    const-string v1, "USING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x85

    goto/16 :goto_1

    :sswitch_28
    const-string v1, "UNION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x82

    goto/16 :goto_1

    :sswitch_29
    const-string v1, "TABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x79

    goto/16 :goto_1

    :sswitch_2a
    const-string v1, "RTRIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x75

    goto/16 :goto_1

    :sswitch_2b
    const-string v1, "RIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x71

    goto/16 :goto_1

    :sswitch_2c
    const-string v1, "RANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x68

    goto/16 :goto_1

    :sswitch_2d
    const-string v1, "RAISE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x67

    goto/16 :goto_1

    :sswitch_2e
    const-string v1, "QUERY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x66

    goto/16 :goto_1

    :sswitch_2f
    const-string v1, "OUTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5f

    goto/16 :goto_1

    :sswitch_30
    const-string v1, "ORDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5d

    goto/16 :goto_1

    :sswitch_31
    const-string v1, "MATCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x51

    goto/16 :goto_1

    :sswitch_32
    const-string v1, "LIMIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    goto/16 :goto_1

    :sswitch_33
    const-string v1, "INNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x45

    goto/16 :goto_1

    :sswitch_34
    const-string v1, "INDEX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x42

    goto/16 :goto_1

    :sswitch_35
    const-string v1, "GROUP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3b

    goto/16 :goto_1

    :sswitch_36
    const-string v1, "CROSS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_37
    const-string v1, "CHECK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_38
    const-string v1, "BEGIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_39
    const-string v1, "ALTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_3a
    const-string v1, "AFTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_3b
    const-string v1, "ABORT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_3c
    const-string v1, "FOREIGN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x37

    goto/16 :goto_1

    :sswitch_3d
    const-string v1, "WITH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8d

    goto/16 :goto_1

    :sswitch_3e
    const-string v1, "WHEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8a

    goto/16 :goto_1

    :sswitch_3f
    const-string v1, "VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x88

    goto/16 :goto_1

    :sswitch_40
    const-string v1, "TIES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7d

    goto/16 :goto_1

    :sswitch_41
    const-string v1, "THEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7c

    goto/16 :goto_1

    :sswitch_42
    const-string v1, "TEMP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7a

    goto/16 :goto_1

    :sswitch_43
    const-string v1, "ROWS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x74

    goto/16 :goto_1

    :sswitch_44
    const-string v1, "PLAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x62

    goto/16 :goto_1

    :sswitch_45
    const-string v1, "OVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto/16 :goto_1

    :sswitch_46
    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x58

    goto/16 :goto_1

    :sswitch_47
    const-string v1, "LIKE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto/16 :goto_1

    :sswitch_48
    const-string v1, "LEFT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4e

    goto/16 :goto_1

    :sswitch_49
    const-string v1, "JOIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4c

    goto/16 :goto_1

    :sswitch_4a
    const-string v1, "INTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x49

    goto/16 :goto_1

    :sswitch_4b
    const-string v1, "GLOB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    goto/16 :goto_1

    :sswitch_4c
    const-string v1, "FULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x39

    goto/16 :goto_1

    :sswitch_4d
    const-string v1, "FROM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x38

    goto/16 :goto_1

    :sswitch_4e
    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x33

    goto/16 :goto_1

    :sswitch_4f
    const-string v1, "ELSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto/16 :goto_1

    :sswitch_50
    const-string v1, "EACH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_51
    const-string v1, "DROP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_52
    const-string v1, "DESC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_53
    const-string v1, "CAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_54
    const-string v1, "CASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_55
    const-string v1, "SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x78

    goto/16 :goto_1

    :sswitch_56
    const-string v1, "ROW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x73

    goto/16 :goto_1

    :sswitch_57
    const-string v1, "NOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x55

    goto/16 :goto_1

    :sswitch_58
    const-string v1, "KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4d

    goto/16 :goto_1

    :sswitch_59
    const-string v1, "FOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x36

    goto/16 :goto_1

    :sswitch_5a
    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto/16 :goto_1

    :sswitch_5b
    const-string v1, "ASC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_5c
    const-string v1, "AND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_5d
    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_5e
    const-string v1, "ADD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_5f
    const-string v1, "TO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7e

    goto/16 :goto_1

    :sswitch_60
    const-string v1, "OR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5c

    goto/16 :goto_1

    :sswitch_61
    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5b

    goto/16 :goto_1

    :sswitch_62
    const-string v1, "OF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x59

    goto/16 :goto_1

    :sswitch_63
    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x53

    goto/16 :goto_1

    :sswitch_64
    const-string v1, "IS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4a

    goto/16 :goto_1

    :sswitch_65
    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x41

    goto/16 :goto_1

    :sswitch_66
    const-string v1, "IF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e

    goto/16 :goto_1

    :sswitch_67
    const-string v1, "DO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_68
    const-string v1, "BY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_69
    const-string v1, "AS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_6a
    const-string v1, "TRANSACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7f

    goto/16 :goto_1

    :sswitch_6b
    const-string v1, "ANALYZE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_6c
    const-string v1, "CURRENT_TIMESTAMP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_6d
    const-string v1, "TRIGGER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    goto/16 :goto_1

    :sswitch_6e
    const-string v1, "RECURSIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x69

    goto/16 :goto_1

    :sswitch_6f
    const-string v1, "IMMEDIATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto/16 :goto_1

    :sswitch_70
    const-string v1, "CURRENT_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_71
    const-string v1, "CURRENT_DATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_72
    const-string v1, "EXPLAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto/16 :goto_1

    :sswitch_73
    const-string v1, "EXCLUDE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    goto/16 :goto_1

    :sswitch_74
    const-string v1, "FOLLOWING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x35

    goto/16 :goto_1

    :sswitch_75
    const-string v1, "INTERSECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x48

    goto/16 :goto_1

    :sswitch_76
    const-string v1, "SAVEPOINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x76

    goto/16 :goto_1

    :sswitch_77
    const-string v1, "AUTOINCREMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_78
    const-string v1, "NOTNULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x57

    goto/16 :goto_1

    :sswitch_79
    const-string v1, "NOTHING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x56

    goto/16 :goto_1

    :sswitch_7a
    const-string v1, "INSTEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x47

    goto/16 :goto_1

    :sswitch_7b
    const-string v1, "INDEXED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x43

    goto/16 :goto_1

    :sswitch_7c
    const-string v1, "DATABASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_7d
    const-string v1, "WINDOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8c

    goto/16 :goto_1

    :sswitch_7e
    const-string v1, "INITIALLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x44

    goto/16 :goto_1

    :sswitch_7f
    const-string v1, "VALUES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x87

    goto/16 :goto_1

    :sswitch_80
    const-string v1, "VACUUM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x86

    goto/16 :goto_1

    :sswitch_81
    const-string v1, "UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x84

    goto/16 :goto_1

    :sswitch_82
    const-string v1, "UNIQUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x83

    goto/16 :goto_1

    :sswitch_83
    const-string v1, "NATURAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x52

    goto/16 :goto_1

    :sswitch_84
    const-string v1, "SELECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x77

    goto/16 :goto_1

    :sswitch_85
    const-string v1, "RENAME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6e

    goto/16 :goto_1

    :sswitch_86
    const-string v1, "REGEXP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6b

    goto :goto_1

    :sswitch_87
    const-string v1, "PRAGMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x63

    goto :goto_1

    :sswitch_88
    const-string v1, "OTHERS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5e

    goto :goto_1

    :sswitch_89
    const-string v1, "OFFSET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5a

    goto :goto_1

    :sswitch_8a
    const-string v1, "NOCASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x54

    goto :goto_1

    :sswitch_8b
    const-string v1, "DEFAULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto :goto_1

    :sswitch_8c
    const-string v1, "ISNULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4b

    goto :goto_1

    :sswitch_8d
    const-string v1, "INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x46

    goto :goto_1

    :sswitch_8e
    const-string v1, "IGNORE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 254
    return v2

    .line 252
    :pswitch_0
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x7f610e2e -> :sswitch_8e
        -0x7efc4947 -> :sswitch_8d
        -0x7eb7de4f -> :sswitch_8c
        -0x79209ddf -> :sswitch_8b
        -0x766d4b8f -> :sswitch_8a
        -0x7535a76d -> :sswitch_89
        -0x746fa89d -> :sswitch_88
        -0x72da26c4 -> :sswitch_87
        -0x7024f2f7 -> :sswitch_86
        -0x7021d4c2 -> :sswitch_85
        -0x6e6dd704 -> :sswitch_84
        -0x6e275bf7 -> :sswitch_83
        -0x6a86802f -> :sswitch_82
        -0x6a6cd337 -> :sswitch_81
        -0x698b844b -> :sswitch_80
        -0x69876ede -> :sswitch_7f
        -0x68bf4c4f -> :sswitch_7e
        -0x67613010 -> :sswitch_7d
        -0x66b0fe85 -> :sswitch_7c
        -0x61602b2f -> :sswitch_7b
        -0x608640de -> :sswitch_7a
        -0x56498c53 -> :sswitch_79
        -0x5646a546 -> :sswitch_78
        -0x4ecc4580 -> :sswitch_77
        -0x4e00f5ed -> :sswitch_76
        -0x3bec8b01 -> :sswitch_75
        -0x2c40fd8f -> :sswitch_74
        -0x23f39646 -> :sswitch_73
        -0x233caf29 -> :sswitch_72
        -0x1c97b92c -> :sswitch_71
        -0x1c90560d -> :sswitch_70
        -0x16e3386f -> :sswitch_6f
        -0x146b8bee -> :sswitch_6e
        -0x14611e68 -> :sswitch_6d
        -0xfab9e70 -> :sswitch_6c
        -0x8b916d4 -> :sswitch_6b
        -0xb9942 -> :sswitch_6a
        0x832 -> :sswitch_69
        0x857 -> :sswitch_68
        0x88b -> :sswitch_67
        0x91d -> :sswitch_66
        0x925 -> :sswitch_65
        0x92a -> :sswitch_64
        0x9c1 -> :sswitch_63
        0x9d7 -> :sswitch_62
        0x9df -> :sswitch_61
        0x9e3 -> :sswitch_60
        0xa7b -> :sswitch_5f
        0xfc81 -> :sswitch_5e
        0xfd81 -> :sswitch_5d
        0xfdb7 -> :sswitch_5c
        0xfe51 -> :sswitch_5b
        0x10cbb -> :sswitch_5a
        0x110a9 -> :sswitch_59
        0x1223f -> :sswitch_58
        0x12eb3 -> :sswitch_57
        0x13dba -> :sswitch_56
        0x14042 -> :sswitch_55
        0x1f7330 -> :sswitch_54
        0x1f733f -> :sswitch_53
        0x1ff691 -> :sswitch_52
        0x2026ef -> :sswitch_51
        0x205a01 -> :sswitch_50
        0x208539 -> :sswitch_4f
        0x20cf1e -> :sswitch_4e
        0x210faa -> :sswitch_4d
        0x211a8f -> :sswitch_4c
        0x216d78 -> :sswitch_4b
        0x225e60 -> :sswitch_4a
        0x22d52a -> :sswitch_49
        0x239807 -> :sswitch_48
        0x23a797 -> :sswitch_47
        0x24bd87 -> :sswitch_46
        0x2534d4 -> :sswitch_45
        0x258329 -> :sswitch_44
        0x2679d9 -> :sswitch_43
        0x273bd4 -> :sswitch_42
        0x27461d -> :sswitch_41
        0x2749e3 -> :sswitch_40
        0x2832a5 -> :sswitch_3f
        0x28a33a -> :sswitch_3e
        0x28a8c6 -> :sswitch_3d
        0x2670cb4 -> :sswitch_3c
        0x3b32b10 -> :sswitch_3b
        0x3b50dbc -> :sswitch_3a
        0x3b7c7f6 -> :sswitch_39
        0x3c28089 -> :sswitch_38
        0x3d1ece8 -> :sswitch_37
        0x3d6a020 -> :sswitch_36
        0x40efe5f -> :sswitch_35
        0x42930b2 -> :sswitch_34
        0x4295636 -> :sswitch_33
        0x451539b -> :sswitch_32
        0x45be1a5 -> :sswitch_31
        0x47f8f2e -> :sswitch_30
        0x481285b -> :sswitch_2f
        0x49d20a8 -> :sswitch_2e
        0x4a22fcc -> :sswitch_2d
        0x4a2411d -> :sswitch_2c
        0x4a5c9fc -> :sswitch_2b
        0x4aaf374 -> :sswitch_2a
        0x4be43ae -> :sswitch_29
        0x4d25eaf -> :sswitch_28
        0x4d4a464 -> :sswitch_27
        0x4ebc4c7 -> :sswitch_26
        0xa9fce7e -> :sswitch_25
        0xc131bd2 -> :sswitch_24
        0x1050f1c4 -> :sswitch_23
        0x119101dd -> :sswitch_22
        0x1423ac9a -> :sswitch_21
        0x180899e2 -> :sswitch_20
        0x1a96aabc -> :sswitch_1f
        0x1c688e31 -> :sswitch_1e
        0x1de1f7e8 -> :sswitch_1d
        0x1f2aeee4 -> :sswitch_1c
        0x3ad122ca -> :sswitch_1b
        0x3fdb1efc -> :sswitch_1a
        0x4694aaeb -> :sswitch_19
        0x4bdd9294 -> :sswitch_18
        0x53d214a3 -> :sswitch_17
        0x5543f7df -> :sswitch_16
        0x6362e006 -> :sswitch_15
        0x6ba68e5f -> :sswitch_14
        0x6bccb3e7 -> :sswitch_13
        0x6c083e94 -> :sswitch_12
        0x6df74959 -> :sswitch_11
        0x6f769688 -> :sswitch_10
        0x72c27236 -> :sswitch_f
        0x73b1e245 -> :sswitch_e
        0x748d337f -> :sswitch_d
        0x74c90001 -> :sswitch_c
        0x76d1c756 -> :sswitch_b
        0x76d21d37 -> :sswitch_a
        0x76f894fc -> :sswitch_9
        0x77f979ab -> :sswitch_8
        0x77fd0b93 -> :sswitch_7
        0x7a6f7481 -> :sswitch_6
        0x7ab5f919 -> :sswitch_5
        0x7ab8e85c -> :sswitch_4
        0x7b918ca8 -> :sswitch_3
        0x7b9bbf78 -> :sswitch_2
        0x7dd0cdd4 -> :sswitch_1
        0x7e991825 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist isNum(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 45
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isType(Ljava/lang/String;)Z
    .locals 4
    .param p0, "token"    # Ljava/lang/String;

    .line 285
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "DOUBLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "BIGINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "VARCHAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "BOOLEAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "MEDIUMINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "SMALLINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "NCHAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "FLOAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "CHARACTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "REAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "INT8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "INT2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "DATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "CLOB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_f
    const-string v1, "BLOB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_10
    const-string v1, "INT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_11
    const-string v1, "NVARCHAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_12
    const-string v1, "TINYINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_13
    const-string v1, "NUMERIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_14
    const-string v1, "INTEGER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_15
    const-string v1, "DATETIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_16
    const-string v1, "DECIMAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 294
    return v2

    .line 292
    :pswitch_0
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x794760cf -> :sswitch_16
        -0x66705485 -> :sswitch_15
        -0x607ef2e2 -> :sswitch_14
        -0x4c705913 -> :sswitch_13
        -0x236e0f31 -> :sswitch_12
        -0x207e5931 -> :sswitch_11
        0x11bcf -> :sswitch_10
        0x1f279d -> :sswitch_f
        0x1f9bfc -> :sswitch_e
        0x1fe7ae -> :sswitch_d
        0x225e43 -> :sswitch_c
        0x225e49 -> :sswitch_b
        0x26519e -> :sswitch_a
        0x273d2d -> :sswitch_9
        0x353cb09 -> :sswitch_8
        0x3fe2a3c -> :sswitch_7
        0x46ab4a4 -> :sswitch_6
        0xa7f0188 -> :sswitch_5
        0x26d1e83a -> :sswitch_4
        0x2ea6f808 -> :sswitch_3
        0x38e5fadd -> :sswitch_2
        0x74c5eeef -> :sswitch_1
        0x788a6fd1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist peek(Ljava/lang/String;I)C
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "index"    # I

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist tokenize(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p0, "sql"    # Ljava/lang/String;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/database/sqlite/SQLiteTokenizer$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/database/sqlite/SQLiteTokenizer$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, p1, v1}, Landroid/database/sqlite/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 80
    return-object v0
.end method

.method public static blacklist tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V
    .locals 8
    .param p0, "sql"    # Ljava/lang/String;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p2, "checker":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 94
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 95
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_11

    .line 96
    invoke-static {p0, v0}, Landroid/database/sqlite/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v2

    .line 99
    .local v2, "ch":C
    invoke-static {v2}, Landroid/database/sqlite/SQLiteTokenizer;->isAlpha(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    move v3, v0

    .line 101
    .local v3, "start":I
    add-int/lit8 v0, v0, 0x1

    .line 102
    :goto_1
    invoke-static {p0, v0}, Landroid/database/sqlite/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v4

    invoke-static {v4}, Landroid/database/sqlite/SQLiteTokenizer;->isAlNum(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_1
    move v4, v0

    .line 107
    .local v4, "end":I
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "token":Ljava/lang/String;
    invoke-interface {p2, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 110
    goto :goto_0

    .line 114
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "token":Ljava/lang/String;
    :cond_2
    const-string v3, "\'\"`"

    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteTokenizer;->isAnyOf(CLjava/lang/String;)Z

    move-result v3

    const-string v4, "Unterminated quote"

    const-string v5, "Non-token detected"

    if-eqz v3, :cond_8

    .line 115
    move v3, v0

    .line 116
    .local v3, "quoteStart":I
    add-int/lit8 v0, v0, 0x1

    .line 119
    :goto_2
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 120
    if-ltz v0, :cond_7

    .line 123
    add-int/lit8 v6, v0, 0x1

    invoke-static {p0, v6}, Landroid/database/sqlite/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v6

    if-eq v6, v2, :cond_6

    .line 124
    nop

    .line 129
    move v4, v0

    .line 130
    .local v4, "quoteEnd":I
    add-int/lit8 v0, v0, 0x1

    .line 132
    const/16 v6, 0x27

    if-eq v2, v6, :cond_4

    .line 134
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "tokenUnquoted":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    .line 140
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "token":Ljava/lang/String;
    goto :goto_3

    .line 143
    .end local v6    # "token":Ljava/lang/String;
    :cond_3
    move-object v6, v5

    .line 145
    .restart local v6    # "token":Ljava/lang/String;
    :goto_3
    invoke-interface {p2, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 146
    .end local v5    # "tokenUnquoted":Ljava/lang/String;
    .end local v6    # "token":Ljava/lang/String;
    goto :goto_0

    .line 147
    :cond_4
    and-int/lit8 v6, p1, 0x1

    move p1, v6

    if-nez v6, :cond_5

    goto :goto_0

    .line 148
    :cond_5
    invoke-static {v5, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 127
    .end local v4    # "quoteEnd":I
    :cond_6
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 121
    :cond_7
    invoke-static {v4, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 154
    .end local v3    # "quoteStart":I
    :cond_8
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_a

    .line 155
    move v3, v0

    .line 156
    .restart local v3    # "quoteStart":I
    add-int/lit8 v0, v0, 0x1

    .line 158
    const/16 v5, 0x5d

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 159
    if-ltz v0, :cond_9

    .line 162
    move v4, v0

    .line 163
    .restart local v4    # "quoteEnd":I
    add-int/lit8 v0, v0, 0x1

    .line 165
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, "token":Ljava/lang/String;
    invoke-interface {p2, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 168
    goto/16 :goto_0

    .line 160
    .end local v4    # "quoteEnd":I
    .end local v5    # "token":Ljava/lang/String;
    :cond_9
    invoke-static {v4, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 170
    .end local v3    # "quoteStart":I
    :cond_a
    and-int/lit8 v3, p1, 0x1

    move p1, v3

    if-nez v3, :cond_10

    .line 175
    const-string v3, "Unterminated comment"

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_c

    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v5}, Landroid/database/sqlite/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v5

    if-ne v5, v4, :cond_c

    .line 176
    add-int/lit8 v0, v0, 0x2

    .line 177
    const/16 v4, 0xa

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 178
    if-ltz v0, :cond_b

    .line 182
    add-int/lit8 v0, v0, 0x1

    .line 184
    goto/16 :goto_0

    .line 180
    :cond_b
    invoke-static {v3, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 186
    :cond_c
    const/16 v4, 0x2f

    if-ne v2, v4, :cond_e

    add-int/lit8 v4, v0, 0x1

    invoke-static {p0, v4}, Landroid/database/sqlite/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_e

    .line 187
    add-int/lit8 v0, v0, 0x2

    .line 188
    const-string v4, "*/"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 189
    if-ltz v0, :cond_d

    .line 192
    add-int/lit8 v0, v0, 0x2

    .line 194
    goto/16 :goto_0

    .line 190
    :cond_d
    invoke-static {v3, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 198
    :cond_e
    const/16 v3, 0x3b

    if-eq v2, v3, :cond_f

    .line 205
    nop

    .end local v2    # "ch":C
    add-int/lit8 v0, v0, 0x1

    .line 206
    goto/16 :goto_0

    .line 199
    .restart local v2    # "ch":C
    :cond_f
    const-string v3, "Semicolon is not allowed"

    invoke-static {v3, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 171
    :cond_10
    invoke-static {v5, p0}, Landroid/database/sqlite/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 207
    .end local v2    # "ch":C
    :cond_11
    return-void
.end method
