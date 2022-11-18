.class public final Landroid/hardware/cas/V1_2/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field public static final blacklist BAD_VALUE:I = 0x6

.field public static final blacklist ERROR_CAS_BLACKOUT:I = 0x14

.field public static final blacklist ERROR_CAS_CANNOT_HANDLE:I = 0x4

.field public static final blacklist ERROR_CAS_CARD_INVALID:I = 0x13

.field public static final blacklist ERROR_CAS_CARD_MUTE:I = 0x12

.field public static final blacklist ERROR_CAS_DECRYPT:I = 0xd

.field public static final blacklist ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED:I = 0xc

.field public static final blacklist ERROR_CAS_DEVICE_REVOKED:I = 0xb

.field public static final blacklist ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION:I = 0x9

.field public static final blacklist ERROR_CAS_INVALID_STATE:I = 0x5

.field public static final blacklist ERROR_CAS_LICENSE_EXPIRED:I = 0x2

.field public static final blacklist ERROR_CAS_NEED_ACTIVATION:I = 0xf

.field public static final blacklist ERROR_CAS_NEED_PAIRING:I = 0x10

.field public static final blacklist ERROR_CAS_NOT_PROVISIONED:I = 0x7

.field public static final blacklist ERROR_CAS_NO_CARD:I = 0x11

.field public static final blacklist ERROR_CAS_NO_LICENSE:I = 0x1

.field public static final blacklist ERROR_CAS_REBOOTING:I = 0x15

.field public static final blacklist ERROR_CAS_RESOURCE_BUSY:I = 0x8

.field public static final blacklist ERROR_CAS_SESSION_NOT_OPENED:I = 0x3

.field public static final blacklist ERROR_CAS_TAMPER_DETECTED:I = 0xa

.field public static final blacklist ERROR_CAS_UNKNOWN:I = 0xe

.field public static final blacklist OK:I


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

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 186
    .local v1, "flipped":I
    const-string v2, "OK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 188
    const-string v2, "ERROR_CAS_NO_LICENSE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    or-int/lit8 v1, v1, 0x1

    .line 191
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 192
    const-string v2, "ERROR_CAS_LICENSE_EXPIRED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    or-int/lit8 v1, v1, 0x2

    .line 195
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 196
    const-string v2, "ERROR_CAS_SESSION_NOT_OPENED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    or-int/lit8 v1, v1, 0x3

    .line 199
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 200
    const-string v2, "ERROR_CAS_CANNOT_HANDLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    or-int/lit8 v1, v1, 0x4

    .line 203
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 204
    const-string v2, "ERROR_CAS_INVALID_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    or-int/lit8 v1, v1, 0x5

    .line 207
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 208
    const-string v2, "BAD_VALUE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    or-int/lit8 v1, v1, 0x6

    .line 211
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 212
    const-string v2, "ERROR_CAS_NOT_PROVISIONED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    or-int/lit8 v1, v1, 0x7

    .line 215
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 216
    const-string v2, "ERROR_CAS_RESOURCE_BUSY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    or-int/lit8 v1, v1, 0x8

    .line 219
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 220
    const-string v2, "ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    or-int/lit8 v1, v1, 0x9

    .line 223
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 224
    const-string v2, "ERROR_CAS_TAMPER_DETECTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    or-int/lit8 v1, v1, 0xa

    .line 227
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 228
    const-string v2, "ERROR_CAS_DEVICE_REVOKED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    or-int/lit8 v1, v1, 0xb

    .line 231
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 232
    const-string v2, "ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    or-int/lit8 v1, v1, 0xc

    .line 235
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 236
    const-string v2, "ERROR_CAS_DECRYPT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    or-int/lit8 v1, v1, 0xd

    .line 239
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 240
    const-string v2, "ERROR_CAS_UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    or-int/lit8 v1, v1, 0xe

    .line 243
    :cond_d
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    .line 244
    const-string v2, "ERROR_CAS_NEED_ACTIVATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    or-int/lit8 v1, v1, 0xf

    .line 247
    :cond_e
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    .line 248
    const-string v2, "ERROR_CAS_NEED_PAIRING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    or-int/lit8 v1, v1, 0x10

    .line 251
    :cond_f
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_10

    .line 252
    const-string v2, "ERROR_CAS_NO_CARD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    or-int/lit8 v1, v1, 0x11

    .line 255
    :cond_10
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_11

    .line 256
    const-string v2, "ERROR_CAS_CARD_MUTE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    or-int/lit8 v1, v1, 0x12

    .line 259
    :cond_11
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_12

    .line 260
    const-string v2, "ERROR_CAS_CARD_INVALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    or-int/lit8 v1, v1, 0x13

    .line 263
    :cond_12
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_13

    .line 264
    const-string v2, "ERROR_CAS_BLACKOUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    or-int/lit8 v1, v1, 0x14

    .line 267
    :cond_13
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_14

    .line 268
    const-string v2, "ERROR_CAS_REBOOTING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    or-int/lit8 v1, v1, 0x15

    .line 271
    :cond_14
    if-eq p0, v1, :cond_15

    .line 272
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

    .line 274
    :cond_15
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 114
    if-nez p0, :cond_0

    .line 115
    const-string v0, "OK"

    return-object v0

    .line 117
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 118
    const-string v0, "ERROR_CAS_NO_LICENSE"

    return-object v0

    .line 120
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 121
    const-string v0, "ERROR_CAS_LICENSE_EXPIRED"

    return-object v0

    .line 123
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 124
    const-string v0, "ERROR_CAS_SESSION_NOT_OPENED"

    return-object v0

    .line 126
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 127
    const-string v0, "ERROR_CAS_CANNOT_HANDLE"

    return-object v0

    .line 129
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 130
    const-string v0, "ERROR_CAS_INVALID_STATE"

    return-object v0

    .line 132
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 133
    const-string v0, "BAD_VALUE"

    return-object v0

    .line 135
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 136
    const-string v0, "ERROR_CAS_NOT_PROVISIONED"

    return-object v0

    .line 138
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 139
    const-string v0, "ERROR_CAS_RESOURCE_BUSY"

    return-object v0

    .line 141
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 142
    const-string v0, "ERROR_CAS_INSUFFICIENT_OUTPUT_PROTECTION"

    return-object v0

    .line 144
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 145
    const-string v0, "ERROR_CAS_TAMPER_DETECTED"

    return-object v0

    .line 147
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 148
    const-string v0, "ERROR_CAS_DEVICE_REVOKED"

    return-object v0

    .line 150
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 151
    const-string v0, "ERROR_CAS_DECRYPT_UNIT_NOT_INITIALIZED"

    return-object v0

    .line 153
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 154
    const-string v0, "ERROR_CAS_DECRYPT"

    return-object v0

    .line 156
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 157
    const-string v0, "ERROR_CAS_UNKNOWN"

    return-object v0

    .line 159
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 160
    const-string v0, "ERROR_CAS_NEED_ACTIVATION"

    return-object v0

    .line 162
    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 163
    const-string v0, "ERROR_CAS_NEED_PAIRING"

    return-object v0

    .line 165
    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    .line 166
    const-string v0, "ERROR_CAS_NO_CARD"

    return-object v0

    .line 168
    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    .line 169
    const-string v0, "ERROR_CAS_CARD_MUTE"

    return-object v0

    .line 171
    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    .line 172
    const-string v0, "ERROR_CAS_CARD_INVALID"

    return-object v0

    .line 174
    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    .line 175
    const-string v0, "ERROR_CAS_BLACKOUT"

    return-object v0

    .line 177
    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    .line 178
    const-string v0, "ERROR_CAS_REBOOTING"

    return-object v0

    .line 180
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
