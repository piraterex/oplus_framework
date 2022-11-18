.class public interface abstract Landroid/hardware/radio/RadioAccessFamily$$;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioAccessFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = ""
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "_aidl_v"    # Ljava/lang/Object;

    .line 53
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 55
    .local v0, "_aidl_cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 56
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 57
    .local v1, "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, ", "

    const-string v4, "["

    const-string v5, "]"

    invoke-direct {v2, v3, v4, v5}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 58
    .local v2, "_aidl_sj":Ljava/util/StringJoiner;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    const/4 v3, 0x0

    .local v3, "_aidl_i":I
    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 60
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/RadioAccessFamily$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "_aidl_i":I
    :cond_1
    goto :goto_2

    .line 63
    :cond_2
    const-class v3, [I

    if-ne v0, v3, :cond_4

    .line 64
    move-object v3, p0

    check-cast v3, [I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    .line 65
    .local v6, "e":I
    invoke-static {v6}, Landroid/hardware/radio/RadioAccessFamily$$;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 64
    .end local v6    # "e":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 68
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 63
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

    .line 55
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

    .line 29
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "UNKNOWN"

    return-object v0

    .line 30
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "GPRS"

    return-object v0

    .line 31
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    const-string v0, "EDGE"

    return-object v0

    .line 32
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    const-string v0, "UMTS"

    return-object v0

    .line 33
    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    const-string v0, "IS95A"

    return-object v0

    .line 34
    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    const-string v0, "IS95B"

    return-object v0

    .line 35
    :cond_5
    const/16 v0, 0x40

    if-ne p0, v0, :cond_6

    const-string v0, "ONE_X_RTT"

    return-object v0

    .line 36
    :cond_6
    const/16 v0, 0x80

    if-ne p0, v0, :cond_7

    const-string v0, "EVDO_0"

    return-object v0

    .line 37
    :cond_7
    const/16 v0, 0x100

    if-ne p0, v0, :cond_8

    const-string v0, "EVDO_A"

    return-object v0

    .line 38
    :cond_8
    const/16 v0, 0x200

    if-ne p0, v0, :cond_9

    const-string v0, "HSDPA"

    return-object v0

    .line 39
    :cond_9
    const/16 v0, 0x400

    if-ne p0, v0, :cond_a

    const-string v0, "HSUPA"

    return-object v0

    .line 40
    :cond_a
    const/16 v0, 0x800

    if-ne p0, v0, :cond_b

    const-string v0, "HSPA"

    return-object v0

    .line 41
    :cond_b
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_c

    const-string v0, "EVDO_B"

    return-object v0

    .line 42
    :cond_c
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_d

    const-string v0, "EHRPD"

    return-object v0

    .line 43
    :cond_d
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_e

    const-string v0, "LTE"

    return-object v0

    .line 44
    :cond_e
    const v0, 0x8000

    if-ne p0, v0, :cond_f

    const-string v0, "HSPAP"

    return-object v0

    .line 45
    :cond_f
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_10

    const-string v0, "GSM"

    return-object v0

    .line 46
    :cond_10
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_11

    const-string v0, "TD_SCDMA"

    return-object v0

    .line 47
    :cond_11
    const/high16 v0, 0x40000

    if-ne p0, v0, :cond_12

    const-string v0, "IWLAN"

    return-object v0

    .line 48
    :cond_12
    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_13

    const-string v0, "LTE_CA"

    return-object v0

    .line 49
    :cond_13
    const/high16 v0, 0x100000

    if-ne p0, v0, :cond_14

    const-string v0, "NR"

    return-object v0

    .line 50
    :cond_14
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
