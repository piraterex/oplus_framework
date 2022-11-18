.class public interface abstract Landroid/hardware/radio/sim/PersoSubstate$$;
.super Ljava/lang/Object;
.source "PersoSubstate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/sim/PersoSubstate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = ""
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "_aidl_v"    # Ljava/lang/Object;

    .line 81
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 82
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 83
    .local v0, "_aidl_cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 84
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 85
    .local v1, "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, ", "

    const-string v4, "["

    const-string v5, "]"

    invoke-direct {v2, v3, v4, v5}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 86
    .local v2, "_aidl_sj":Ljava/util/StringJoiner;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    const/4 v3, 0x0

    .local v3, "_aidl_i":I
    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 88
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/sim/PersoSubstate$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "_aidl_i":I
    :cond_1
    goto :goto_2

    .line 91
    :cond_2
    const-class v3, [I

    if-ne v0, v3, :cond_4

    .line 92
    move-object v3, p0

    check-cast v3, [I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    .line 93
    .local v6, "e":I
    invoke-static {v6}, Landroid/hardware/radio/sim/PersoSubstate$$;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 92
    .end local v6    # "e":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 96
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 91
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

    .line 83
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

    .line 43
    if-nez p0, :cond_0

    const-string v0, "UNKNOWN"

    return-object v0

    .line 44
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "IN_PROGRESS"

    return-object v0

    .line 45
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string v0, "READY"

    return-object v0

    .line 46
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string v0, "SIM_NETWORK"

    return-object v0

    .line 47
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string v0, "SIM_NETWORK_SUBSET"

    return-object v0

    .line 48
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string v0, "SIM_CORPORATE"

    return-object v0

    .line 49
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string v0, "SIM_SERVICE_PROVIDER"

    return-object v0

    .line 50
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string v0, "SIM_SIM"

    return-object v0

    .line 51
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string v0, "SIM_NETWORK_PUK"

    return-object v0

    .line 52
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string v0, "SIM_NETWORK_SUBSET_PUK"

    return-object v0

    .line 53
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    const-string v0, "SIM_CORPORATE_PUK"

    return-object v0

    .line 54
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    const-string v0, "SIM_SERVICE_PROVIDER_PUK"

    return-object v0

    .line 55
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    const-string v0, "SIM_SIM_PUK"

    return-object v0

    .line 56
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    const-string v0, "RUIM_NETWORK1"

    return-object v0

    .line 57
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    const-string v0, "RUIM_NETWORK2"

    return-object v0

    .line 58
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    const-string v0, "RUIM_HRPD"

    return-object v0

    .line 59
    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    const-string v0, "RUIM_CORPORATE"

    return-object v0

    .line 60
    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    const-string v0, "RUIM_SERVICE_PROVIDER"

    return-object v0

    .line 61
    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    const-string v0, "RUIM_RUIM"

    return-object v0

    .line 62
    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    const-string v0, "RUIM_NETWORK1_PUK"

    return-object v0

    .line 63
    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    const-string v0, "RUIM_NETWORK2_PUK"

    return-object v0

    .line 64
    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    const-string v0, "RUIM_HRPD_PUK"

    return-object v0

    .line 65
    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    const-string v0, "RUIM_CORPORATE_PUK"

    return-object v0

    .line 66
    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    const-string v0, "RUIM_SERVICE_PROVIDER_PUK"

    return-object v0

    .line 67
    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    const-string v0, "RUIM_RUIM_PUK"

    return-object v0

    .line 68
    :cond_18
    const/16 v0, 0x19

    if-ne p0, v0, :cond_19

    const-string v0, "SIM_SPN"

    return-object v0

    .line 69
    :cond_19
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1a

    const-string v0, "SIM_SPN_PUK"

    return-object v0

    .line 70
    :cond_1a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_1b

    const-string v0, "SIM_SP_EHPLMN"

    return-object v0

    .line 71
    :cond_1b
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_1c

    const-string v0, "SIM_SP_EHPLMN_PUK"

    return-object v0

    .line 72
    :cond_1c
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_1d

    const-string v0, "SIM_ICCID"

    return-object v0

    .line 73
    :cond_1d
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_1e

    const-string v0, "SIM_ICCID_PUK"

    return-object v0

    .line 74
    :cond_1e
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_1f

    const-string v0, "SIM_IMPI"

    return-object v0

    .line 75
    :cond_1f
    const/16 v0, 0x20

    if-ne p0, v0, :cond_20

    const-string v0, "SIM_IMPI_PUK"

    return-object v0

    .line 76
    :cond_20
    const/16 v0, 0x21

    if-ne p0, v0, :cond_21

    const-string v0, "SIM_NS_SP"

    return-object v0

    .line 77
    :cond_21
    const/16 v0, 0x22

    if-ne p0, v0, :cond_22

    const-string v0, "SIM_NS_SP_PUK"

    return-object v0

    .line 78
    :cond_22
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
