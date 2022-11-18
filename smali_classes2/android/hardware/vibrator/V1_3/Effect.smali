.class public final Landroid/hardware/vibrator/V1_3/Effect;
.super Ljava/lang/Object;
.source "Effect.java"


# static fields
.field public static final blacklist CLICK:I = 0x0

.field public static final blacklist DOUBLE_CLICK:I = 0x1

.field public static final blacklist HEAVY_CLICK:I = 0x5

.field public static final blacklist POP:I = 0x4

.field public static final blacklist RINGTONE_1:I = 0x6

.field public static final blacklist RINGTONE_10:I = 0xf

.field public static final blacklist RINGTONE_11:I = 0x10

.field public static final blacklist RINGTONE_12:I = 0x11

.field public static final blacklist RINGTONE_13:I = 0x12

.field public static final blacklist RINGTONE_14:I = 0x13

.field public static final blacklist RINGTONE_15:I = 0x14

.field public static final blacklist RINGTONE_2:I = 0x7

.field public static final blacklist RINGTONE_3:I = 0x8

.field public static final blacklist RINGTONE_4:I = 0x9

.field public static final blacklist RINGTONE_5:I = 0xa

.field public static final blacklist RINGTONE_6:I = 0xb

.field public static final blacklist RINGTONE_7:I = 0xc

.field public static final blacklist RINGTONE_8:I = 0xd

.field public static final blacklist RINGTONE_9:I = 0xe

.field public static final blacklist TEXTURE_TICK:I = 0x15

.field public static final blacklist THUD:I = 0x3

.field public static final blacklist TICK:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 142
    .local v1, "flipped":I
    const-string v2, "CLICK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 144
    const-string v2, "DOUBLE_CLICK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    or-int/lit8 v1, v1, 0x1

    .line 147
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 148
    const-string v2, "TICK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    or-int/lit8 v1, v1, 0x2

    .line 151
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 152
    const-string v2, "THUD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    or-int/lit8 v1, v1, 0x3

    .line 155
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 156
    const-string v2, "POP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    or-int/lit8 v1, v1, 0x4

    .line 159
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 160
    const-string v2, "HEAVY_CLICK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    or-int/lit8 v1, v1, 0x5

    .line 163
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 164
    const-string v2, "RINGTONE_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    or-int/lit8 v1, v1, 0x6

    .line 167
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 168
    const-string v2, "RINGTONE_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    or-int/lit8 v1, v1, 0x7

    .line 171
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 172
    const-string v2, "RINGTONE_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    or-int/lit8 v1, v1, 0x8

    .line 175
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 176
    const-string v2, "RINGTONE_4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    or-int/lit8 v1, v1, 0x9

    .line 179
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 180
    const-string v2, "RINGTONE_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    or-int/lit8 v1, v1, 0xa

    .line 183
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 184
    const-string v2, "RINGTONE_6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    or-int/lit8 v1, v1, 0xb

    .line 187
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 188
    const-string v2, "RINGTONE_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    or-int/lit8 v1, v1, 0xc

    .line 191
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 192
    const-string v2, "RINGTONE_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    or-int/lit8 v1, v1, 0xd

    .line 195
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 196
    const-string v2, "RINGTONE_9"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    or-int/lit8 v1, v1, 0xe

    .line 199
    :cond_d
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    .line 200
    const-string v2, "RINGTONE_10"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    or-int/lit8 v1, v1, 0xf

    .line 203
    :cond_e
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    .line 204
    const-string v2, "RINGTONE_11"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    or-int/lit8 v1, v1, 0x10

    .line 207
    :cond_f
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_10

    .line 208
    const-string v2, "RINGTONE_12"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    or-int/lit8 v1, v1, 0x11

    .line 211
    :cond_10
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_11

    .line 212
    const-string v2, "RINGTONE_13"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    or-int/lit8 v1, v1, 0x12

    .line 215
    :cond_11
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_12

    .line 216
    const-string v2, "RINGTONE_14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    or-int/lit8 v1, v1, 0x13

    .line 219
    :cond_12
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_13

    .line 220
    const-string v2, "RINGTONE_15"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    or-int/lit8 v1, v1, 0x14

    .line 223
    :cond_13
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_14

    .line 224
    const-string v2, "TEXTURE_TICK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    or-int/lit8 v1, v1, 0x15

    .line 227
    :cond_14
    if-eq p0, v1, :cond_15

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_15
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 70
    if-nez p0, :cond_0

    .line 71
    const-string v0, "CLICK"

    return-object v0

    .line 73
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 74
    const-string v0, "DOUBLE_CLICK"

    return-object v0

    .line 76
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 77
    const-string v0, "TICK"

    return-object v0

    .line 79
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 80
    const-string v0, "THUD"

    return-object v0

    .line 82
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 83
    const-string v0, "POP"

    return-object v0

    .line 85
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 86
    const-string v0, "HEAVY_CLICK"

    return-object v0

    .line 88
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 89
    const-string v0, "RINGTONE_1"

    return-object v0

    .line 91
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 92
    const-string v0, "RINGTONE_2"

    return-object v0

    .line 94
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 95
    const-string v0, "RINGTONE_3"

    return-object v0

    .line 97
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 98
    const-string v0, "RINGTONE_4"

    return-object v0

    .line 100
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 101
    const-string v0, "RINGTONE_5"

    return-object v0

    .line 103
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 104
    const-string v0, "RINGTONE_6"

    return-object v0

    .line 106
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 107
    const-string v0, "RINGTONE_7"

    return-object v0

    .line 109
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 110
    const-string v0, "RINGTONE_8"

    return-object v0

    .line 112
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 113
    const-string v0, "RINGTONE_9"

    return-object v0

    .line 115
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 116
    const-string v0, "RINGTONE_10"

    return-object v0

    .line 118
    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 119
    const-string v0, "RINGTONE_11"

    return-object v0

    .line 121
    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    .line 122
    const-string v0, "RINGTONE_12"

    return-object v0

    .line 124
    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    .line 125
    const-string v0, "RINGTONE_13"

    return-object v0

    .line 127
    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    .line 128
    const-string v0, "RINGTONE_14"

    return-object v0

    .line 130
    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    .line 131
    const-string v0, "RINGTONE_15"

    return-object v0

    .line 133
    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    .line 134
    const-string v0, "TEXTURE_TICK"

    return-object v0

    .line 136
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
