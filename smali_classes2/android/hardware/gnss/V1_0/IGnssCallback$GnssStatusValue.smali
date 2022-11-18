.class public final Landroid/hardware/gnss/V1_0/IGnssCallback$GnssStatusValue;
.super Ljava/lang/Object;
.source "IGnssCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssStatusValue"
.end annotation


# static fields
.field public static final blacklist ENGINE_OFF:B = 0x4t

.field public static final blacklist ENGINE_ON:B = 0x3t

.field public static final blacklist NONE:B = 0x0t

.field public static final blacklist SESSION_BEGIN:B = 0x1t

.field public static final blacklist SESSION_END:B = 0x2t


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(B)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # B

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 247
    .local v1, "flipped":B
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 249
    const-string v2, "SESSION_BEGIN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    or-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    .line 252
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 253
    const-string v2, "SESSION_END"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    or-int/lit8 v2, v1, 0x2

    int-to-byte v1, v2

    .line 256
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 257
    const-string v2, "ENGINE_ON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    or-int/lit8 v2, v1, 0x3

    int-to-byte v1, v2

    .line 260
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 261
    const-string v2, "ENGINE_OFF"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    or-int/lit8 v2, v1, 0x4

    int-to-byte v1, v2

    .line 264
    :cond_3
    if-eq p0, v1, :cond_4

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_4
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(B)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # B

    .line 226
    if-nez p0, :cond_0

    .line 227
    const-string v0, "NONE"

    return-object v0

    .line 229
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 230
    const-string v0, "SESSION_BEGIN"

    return-object v0

    .line 232
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 233
    const-string v0, "SESSION_END"

    return-object v0

    .line 235
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 236
    const-string v0, "ENGINE_ON"

    return-object v0

    .line 238
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 239
    const-string v0, "ENGINE_OFF"

    return-object v0

    .line 241
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
