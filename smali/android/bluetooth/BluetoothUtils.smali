.class public final Landroid/bluetooth/BluetoothUtils;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
    }
.end annotation


# static fields
.field private static final blacklist SYNC_CALLS_TIMEOUT:Ljava/time/Duration;

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothUtils"

.field public static final blacklist USER_HANDLE_NULL:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 41
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUtils;->SYNC_CALLS_TIMEOUT:Ljava/time/Duration;

    .line 53
    const/16 v0, -0x2710

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUtils;->USER_HANDLE_NULL:Landroid/os/UserHandle;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist extractBytes([BII)[B
    .locals 3
    .param p0, "rawBytes"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 75
    array-length v0, p0

    sub-int/2addr v0, p1

    .line 76
    .local v0, "remainingLength":I
    if-ge v0, p2, :cond_0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractBytes() remaining length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is less than copying length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v1, 0x0

    return-object v1

    .line 82
    :cond_0
    new-array v1, p2, [B

    .line 83
    .local v1, "bytes":[B
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    return-object v1
.end method

.method static blacklist getSyncTimeout()Ljava/time/Duration;
    .locals 1

    .line 47
    sget-object v0, Landroid/bluetooth/BluetoothUtils;->SYNC_CALLS_TIMEOUT:Ljava/time/Duration;

    return-object v0
.end method

.method public static blacklist parseLengthTypeValueBytes([B)Ljava/util/List;
    .locals 9
    .param p0, "rawBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothUtils$TypeValueEntry;",
            ">;"
        }
    .end annotation

    .line 96
    if-nez p0, :cond_0

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 103
    :cond_1
    const/4 v0, 0x0

    .line 104
    .local v0, "currentPos":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothUtils$TypeValueEntry;>;"
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_6

    .line 107
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 108
    .local v2, "length":I
    if-nez v2, :cond_2

    .line 109
    goto/16 :goto_1

    .line 111
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 112
    array-length v3, p0

    const-string v4, ", currentPost = "

    const-string v5, "BluetoothUtils"

    if-lt v0, v3, :cond_3

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseLtv() no type and value after length, rawBytes length = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v6, p0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    goto :goto_1

    .line 118
    :cond_3
    add-int/lit8 v3, v2, -0x1

    .line 120
    .local v3, "dataLength":I
    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    .line 121
    .local v6, "type":I
    add-int/lit8 v0, v0, 0x1

    .line 122
    array-length v7, p0

    if-lt v0, v7, :cond_4

    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseLtv() no value after length, rawBytes length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    goto :goto_1

    .line 127
    :cond_4
    invoke-static {p0, v0, v3}, Landroid/bluetooth/BluetoothUtils;->extractBytes([BII)[B

    move-result-object v4

    .line 128
    .local v4, "value":[B
    if-nez v4, :cond_5

    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to extract bytes, currentPost = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    goto :goto_1

    .line 132
    :cond_5
    new-instance v5, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    invoke-direct {v5, v6, v4}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;-><init>(I[B)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/2addr v0, v3

    .line 134
    .end local v2    # "length":I
    .end local v3    # "dataLength":I
    .end local v4    # "value":[B
    .end local v6    # "type":I
    goto/16 :goto_0

    .line 135
    :cond_6
    :goto_1
    return-object v1
.end method

.method public static blacklist serializeTypeValue(Ljava/util/List;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothUtils$TypeValueEntry;",
            ">;)[B"
        }
    .end annotation

    .line 145
    .local p0, "typeValueEntries":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothUtils$TypeValueEntry;>;"
    const/4 v0, 0x0

    .line 146
    .local v0, "length":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    .line 148
    .local v2, "entry":Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
    add-int/lit8 v0, v0, 0x2

    .line 149
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    const-string v5, "BluetoothUtils"

    if-eqz v3, :cond_0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serializeTypeValue() type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is out of range of 0-0xFF"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-object v4

    .line 154
    :cond_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v3

    if-nez v3, :cond_1

    .line 155
    const-string/jumbo v1, "serializeTypeValue() value is null"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-object v4

    .line 158
    :cond_1
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    .line 159
    .local v3, "lengthValue":I
    and-int/lit16 v6, v3, 0xff

    sub-int v6, v3, v6

    if-eqz v6, :cond_2

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "serializeTypeValue() entry length "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " is not in range of 0 to 254"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-object v4

    .line 164
    :cond_2
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v0, v4

    .line 165
    .end local v2    # "entry":Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
    .end local v3    # "lengthValue":I
    goto/16 :goto_0

    .line 166
    :cond_3
    new-array v1, v0, [B

    .line 167
    .local v1, "result":[B
    const/4 v2, 0x0

    .line 168
    .local v2, "currentPos":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    .line 169
    .local v4, "entry":Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 170
    add-int/lit8 v2, v2, 0x1

    .line 171
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 172
    add-int/lit8 v2, v2, 0x1

    .line 173
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v5, v6, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v2, v5

    .line 175
    .end local v4    # "entry":Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
    goto :goto_1

    .line 176
    :cond_4
    return-object v1
.end method
