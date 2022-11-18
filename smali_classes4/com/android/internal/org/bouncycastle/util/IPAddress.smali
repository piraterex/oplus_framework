.class public Lcom/android/internal/org/bouncycastle/util/IPAddress;
.super Ljava/lang/Object;
.source "IPAddress.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isMaskValue(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "component"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 108
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .local v1, "value":I
    if-ltz v1, :cond_0

    if-gt v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 112
    .end local v1    # "value":I
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method public static blacklist isValid(Ljava/lang/String;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/String;

    .line 20
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

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

.method public static blacklist isValidIPv4(Ljava/lang/String;)Z
    .locals 7
    .param p0, "address"    # Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    return v1

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 54
    .local v0, "octets":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "temp":Ljava/lang/String;
    const/4 v3, 0x0

    .line 58
    .local v3, "start":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ge v3, v4, :cond_4

    const/16 v4, 0x2e

    .line 59
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    move v6, v4

    .local v6, "pos":I
    if-le v4, v3, :cond_4

    .line 61
    if-ne v0, v5, :cond_1

    .line 63
    return v1

    .line 67
    :cond_1
    :try_start_0
    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .local v4, "octet":I
    nop

    .line 73
    if-ltz v4, :cond_3

    const/16 v5, 0xff

    if-le v4, v5, :cond_2

    goto :goto_1

    .line 77
    :cond_2
    add-int/lit8 v3, v6, 0x1

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_3
    :goto_1
    return v1

    .line 69
    .end local v4    # "octet":I
    :catch_0
    move-exception v4

    .line 71
    .local v4, "ex":Ljava/lang/NumberFormatException;
    return v1

    .line 81
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    .end local v6    # "pos":I
    :cond_4
    if-ne v0, v5, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public static blacklist isValidIPv4WithNetmask(Ljava/lang/String;)Z
    .locals 4
    .param p0, "address"    # Ljava/lang/String;

    .line 87
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 88
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "mask":Ljava/lang/String;
    const/4 v2, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x20

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isMaskValue(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 90
    :goto_0
    return v2
.end method

.method public static blacklist isValidIPv6(Ljava/lang/String;)Z
    .locals 10
    .param p0, "address"    # Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 130
    return v1

    .line 134
    :cond_0
    const/4 v0, 0x0

    .line 136
    .local v0, "octets":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "temp":Ljava/lang/String;
    const/4 v3, 0x0

    .line 139
    .local v3, "doubleColonFound":Z
    const/4 v4, 0x0

    .line 140
    .local v4, "start":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ge v4, v5, :cond_8

    const/16 v5, 0x3a

    .line 141
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    move v8, v5

    .local v8, "pos":I
    if-lt v5, v4, :cond_8

    .line 143
    if-ne v0, v6, :cond_1

    .line 145
    return v1

    .line 148
    :cond_1
    if-eq v4, v8, :cond_6

    .line 150
    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    if-ne v8, v6, :cond_3

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_3

    .line 154
    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 156
    return v1

    .line 159
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    :cond_3
    :try_start_0
    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x10

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .local v6, "octet":I
    nop

    .line 171
    if-ltz v6, :cond_5

    const v9, 0xffff

    if-le v6, v9, :cond_4

    goto :goto_2

    .line 176
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "octet":I
    :cond_4
    :goto_1
    goto :goto_3

    .line 173
    .restart local v5    # "value":Ljava/lang/String;
    .restart local v6    # "octet":I
    :cond_5
    :goto_2
    return v1

    .line 167
    .end local v6    # "octet":I
    :catch_0
    move-exception v6

    .line 169
    .local v6, "ex":Ljava/lang/NumberFormatException;
    return v1

    .line 179
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :cond_6
    if-eq v8, v7, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v7

    if-eq v8, v5, :cond_7

    if-eqz v3, :cond_7

    .line 181
    return v1

    .line 183
    :cond_7
    const/4 v3, 0x1

    .line 185
    :goto_3
    add-int/lit8 v4, v8, 0x1

    .line 186
    add-int/2addr v0, v7

    goto :goto_0

    .line 189
    .end local v8    # "pos":I
    :cond_8
    if-eq v0, v6, :cond_9

    if-eqz v3, :cond_a

    :cond_9
    move v1, v7

    :cond_a
    return v1
.end method

.method public static blacklist isValidIPv6WithNetmask(Ljava/lang/String;)Z
    .locals 4
    .param p0, "address"    # Ljava/lang/String;

    .line 97
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 98
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "mask":Ljava/lang/String;
    const/4 v2, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x80

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isMaskValue(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 100
    :goto_0
    return v2
.end method

.method public static blacklist isValidWithNetMask(Ljava/lang/String;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/String;

    .line 33
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv4WithNetmask(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv6WithNetmask(Ljava/lang/String;)Z

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
