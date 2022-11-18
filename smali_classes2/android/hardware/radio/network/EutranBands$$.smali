.class public interface abstract Landroid/hardware/radio/network/EutranBands$$;
.super Ljava/lang/Object;
.source "EutranBands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/EutranBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = ""
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "_aidl_v"    # Ljava/lang/Object;

    .line 131
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 133
    .local v0, "_aidl_cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 134
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 135
    .local v1, "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, ", "

    const-string v4, "["

    const-string v5, "]"

    invoke-direct {v2, v3, v4, v5}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 136
    .local v2, "_aidl_sj":Ljava/util/StringJoiner;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    const/4 v3, 0x0

    .local v3, "_aidl_i":I
    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 138
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/network/EutranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "_aidl_i":I
    :cond_1
    goto :goto_2

    .line 141
    :cond_2
    const-class v3, [I

    if-ne v0, v3, :cond_4

    .line 142
    move-object v3, p0

    check-cast v3, [I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    .line 143
    .local v6, "e":I
    invoke-static {v6}, Landroid/hardware/radio/network/EutranBands$$;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 142
    .end local v6    # "e":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 146
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 141
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wrong type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    .end local v1    # "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "_aidl_sj":Ljava/util/StringJoiner;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not an array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "_aidl_v"    # I

    .line 68
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "BAND_1"

    return-object v0

    .line 69
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "BAND_2"

    return-object v0

    .line 70
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string v0, "BAND_3"

    return-object v0

    .line 71
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string v0, "BAND_4"

    return-object v0

    .line 72
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string v0, "BAND_5"

    return-object v0

    .line 73
    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string v0, "BAND_6"

    return-object v0

    .line 74
    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    const-string v0, "BAND_7"

    return-object v0

    .line 75
    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const-string v0, "BAND_8"

    return-object v0

    .line 76
    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const-string v0, "BAND_9"

    return-object v0

    .line 77
    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    const-string v0, "BAND_10"

    return-object v0

    .line 78
    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    const-string v0, "BAND_11"

    return-object v0

    .line 79
    :cond_a
    const/16 v0, 0xc

    if-ne p0, v0, :cond_b

    const-string v0, "BAND_12"

    return-object v0

    .line 80
    :cond_b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_c

    const-string v0, "BAND_13"

    return-object v0

    .line 81
    :cond_c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_d

    const-string v0, "BAND_14"

    return-object v0

    .line 82
    :cond_d
    const/16 v0, 0x11

    if-ne p0, v0, :cond_e

    const-string v0, "BAND_17"

    return-object v0

    .line 83
    :cond_e
    const/16 v0, 0x12

    if-ne p0, v0, :cond_f

    const-string v0, "BAND_18"

    return-object v0

    .line 84
    :cond_f
    const/16 v0, 0x13

    if-ne p0, v0, :cond_10

    const-string v0, "BAND_19"

    return-object v0

    .line 85
    :cond_10
    const/16 v0, 0x14

    if-ne p0, v0, :cond_11

    const-string v0, "BAND_20"

    return-object v0

    .line 86
    :cond_11
    const/16 v0, 0x15

    if-ne p0, v0, :cond_12

    const-string v0, "BAND_21"

    return-object v0

    .line 87
    :cond_12
    const/16 v0, 0x16

    if-ne p0, v0, :cond_13

    const-string v0, "BAND_22"

    return-object v0

    .line 88
    :cond_13
    const/16 v0, 0x17

    if-ne p0, v0, :cond_14

    const-string v0, "BAND_23"

    return-object v0

    .line 89
    :cond_14
    const/16 v0, 0x18

    if-ne p0, v0, :cond_15

    const-string v0, "BAND_24"

    return-object v0

    .line 90
    :cond_15
    const/16 v0, 0x19

    if-ne p0, v0, :cond_16

    const-string v0, "BAND_25"

    return-object v0

    .line 91
    :cond_16
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_17

    const-string v0, "BAND_26"

    return-object v0

    .line 92
    :cond_17
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_18

    const-string v0, "BAND_27"

    return-object v0

    .line 93
    :cond_18
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_19

    const-string v0, "BAND_28"

    return-object v0

    .line 94
    :cond_19
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_1a

    const-string v0, "BAND_30"

    return-object v0

    .line 95
    :cond_1a
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_1b

    const-string v0, "BAND_31"

    return-object v0

    .line 96
    :cond_1b
    const/16 v0, 0x21

    if-ne p0, v0, :cond_1c

    const-string v0, "BAND_33"

    return-object v0

    .line 97
    :cond_1c
    const/16 v0, 0x22

    if-ne p0, v0, :cond_1d

    const-string v0, "BAND_34"

    return-object v0

    .line 98
    :cond_1d
    const/16 v0, 0x23

    if-ne p0, v0, :cond_1e

    const-string v0, "BAND_35"

    return-object v0

    .line 99
    :cond_1e
    const/16 v0, 0x24

    if-ne p0, v0, :cond_1f

    const-string v0, "BAND_36"

    return-object v0

    .line 100
    :cond_1f
    const/16 v0, 0x25

    if-ne p0, v0, :cond_20

    const-string v0, "BAND_37"

    return-object v0

    .line 101
    :cond_20
    const/16 v0, 0x26

    if-ne p0, v0, :cond_21

    const-string v0, "BAND_38"

    return-object v0

    .line 102
    :cond_21
    const/16 v0, 0x27

    if-ne p0, v0, :cond_22

    const-string v0, "BAND_39"

    return-object v0

    .line 103
    :cond_22
    const/16 v0, 0x28

    if-ne p0, v0, :cond_23

    const-string v0, "BAND_40"

    return-object v0

    .line 104
    :cond_23
    const/16 v0, 0x29

    if-ne p0, v0, :cond_24

    const-string v0, "BAND_41"

    return-object v0

    .line 105
    :cond_24
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_25

    const-string v0, "BAND_42"

    return-object v0

    .line 106
    :cond_25
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_26

    const-string v0, "BAND_43"

    return-object v0

    .line 107
    :cond_26
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_27

    const-string v0, "BAND_44"

    return-object v0

    .line 108
    :cond_27
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_28

    const-string v0, "BAND_45"

    return-object v0

    .line 109
    :cond_28
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_29

    const-string v0, "BAND_46"

    return-object v0

    .line 110
    :cond_29
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_2a

    const-string v0, "BAND_47"

    return-object v0

    .line 111
    :cond_2a
    const/16 v0, 0x30

    if-ne p0, v0, :cond_2b

    const-string v0, "BAND_48"

    return-object v0

    .line 112
    :cond_2b
    const/16 v0, 0x41

    if-ne p0, v0, :cond_2c

    const-string v0, "BAND_65"

    return-object v0

    .line 113
    :cond_2c
    const/16 v0, 0x42

    if-ne p0, v0, :cond_2d

    const-string v0, "BAND_66"

    return-object v0

    .line 114
    :cond_2d
    const/16 v0, 0x44

    if-ne p0, v0, :cond_2e

    const-string v0, "BAND_68"

    return-object v0

    .line 115
    :cond_2e
    const/16 v0, 0x46

    if-ne p0, v0, :cond_2f

    const-string v0, "BAND_70"

    return-object v0

    .line 116
    :cond_2f
    const/16 v0, 0x31

    if-ne p0, v0, :cond_30

    const-string v0, "BAND_49"

    return-object v0

    .line 117
    :cond_30
    const/16 v0, 0x32

    if-ne p0, v0, :cond_31

    const-string v0, "BAND_50"

    return-object v0

    .line 118
    :cond_31
    const/16 v0, 0x33

    if-ne p0, v0, :cond_32

    const-string v0, "BAND_51"

    return-object v0

    .line 119
    :cond_32
    const/16 v0, 0x34

    if-ne p0, v0, :cond_33

    const-string v0, "BAND_52"

    return-object v0

    .line 120
    :cond_33
    const/16 v0, 0x35

    if-ne p0, v0, :cond_34

    const-string v0, "BAND_53"

    return-object v0

    .line 121
    :cond_34
    const/16 v0, 0x47

    if-ne p0, v0, :cond_35

    const-string v0, "BAND_71"

    return-object v0

    .line 122
    :cond_35
    const/16 v0, 0x48

    if-ne p0, v0, :cond_36

    const-string v0, "BAND_72"

    return-object v0

    .line 123
    :cond_36
    const/16 v0, 0x49

    if-ne p0, v0, :cond_37

    const-string v0, "BAND_73"

    return-object v0

    .line 124
    :cond_37
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_38

    const-string v0, "BAND_74"

    return-object v0

    .line 125
    :cond_38
    const/16 v0, 0x55

    if-ne p0, v0, :cond_39

    const-string v0, "BAND_85"

    return-object v0

    .line 126
    :cond_39
    const/16 v0, 0x57

    if-ne p0, v0, :cond_3a

    const-string v0, "BAND_87"

    return-object v0

    .line 127
    :cond_3a
    const/16 v0, 0x58

    if-ne p0, v0, :cond_3b

    const-string v0, "BAND_88"

    return-object v0

    .line 128
    :cond_3b
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
