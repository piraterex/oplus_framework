.class public interface abstract Landroid/hardware/radio/modem/NvItem$$;
.super Ljava/lang/Object;
.source "NvItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/modem/NvItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = ""
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "_aidl_v"    # Ljava/lang/Object;

    .line 93
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 95
    .local v0, "_aidl_cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 96
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 97
    .local v1, "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, ", "

    const-string v4, "["

    const-string v5, "]"

    invoke-direct {v2, v3, v4, v5}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 98
    .local v2, "_aidl_sj":Ljava/util/StringJoiner;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    const/4 v3, 0x0

    .local v3, "_aidl_i":I
    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 100
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/modem/NvItem$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "_aidl_i":I
    :cond_1
    goto :goto_2

    .line 103
    :cond_2
    const-class v3, [I

    if-ne v0, v3, :cond_4

    .line 104
    move-object v3, p0

    check-cast v3, [I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    .line 105
    .local v6, "e":I
    invoke-static {v6}, Landroid/hardware/radio/modem/NvItem$$;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 104
    .end local v6    # "e":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 108
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 103
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

    .line 95
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

    .line 49
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "CDMA_MEID"

    return-object v0

    .line 50
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "CDMA_MIN"

    return-object v0

    .line 51
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string v0, "CDMA_MDN"

    return-object v0

    .line 52
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string v0, "CDMA_ACCOLC"

    return-object v0

    .line 53
    :cond_3
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4

    const-string v0, "DEVICE_MSL"

    return-object v0

    .line 54
    :cond_4
    const/16 v0, 0xc

    if-ne p0, v0, :cond_5

    const-string v0, "RTN_RECONDITIONED_STATUS"

    return-object v0

    .line 55
    :cond_5
    const/16 v0, 0xd

    if-ne p0, v0, :cond_6

    const-string v0, "RTN_ACTIVATION_DATE"

    return-object v0

    .line 56
    :cond_6
    const/16 v0, 0xe

    if-ne p0, v0, :cond_7

    const-string v0, "RTN_LIFE_TIMER"

    return-object v0

    .line 57
    :cond_7
    const/16 v0, 0xf

    if-ne p0, v0, :cond_8

    const-string v0, "RTN_LIFE_CALLS"

    return-object v0

    .line 58
    :cond_8
    const/16 v0, 0x10

    if-ne p0, v0, :cond_9

    const-string v0, "RTN_LIFE_DATA_TX"

    return-object v0

    .line 59
    :cond_9
    const/16 v0, 0x11

    if-ne p0, v0, :cond_a

    const-string v0, "RTN_LIFE_DATA_RX"

    return-object v0

    .line 60
    :cond_a
    const/16 v0, 0x12

    if-ne p0, v0, :cond_b

    const-string v0, "OMADM_HFA_LEVEL"

    return-object v0

    .line 61
    :cond_b
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_c

    const-string v0, "MIP_PROFILE_NAI"

    return-object v0

    .line 62
    :cond_c
    const/16 v0, 0x20

    if-ne p0, v0, :cond_d

    const-string v0, "MIP_PROFILE_HOME_ADDRESS"

    return-object v0

    .line 63
    :cond_d
    const/16 v0, 0x21

    if-ne p0, v0, :cond_e

    const-string v0, "MIP_PROFILE_AAA_AUTH"

    return-object v0

    .line 64
    :cond_e
    const/16 v0, 0x22

    if-ne p0, v0, :cond_f

    const-string v0, "MIP_PROFILE_HA_AUTH"

    return-object v0

    .line 65
    :cond_f
    const/16 v0, 0x23

    if-ne p0, v0, :cond_10

    const-string v0, "MIP_PROFILE_PRI_HA_ADDR"

    return-object v0

    .line 66
    :cond_10
    const/16 v0, 0x24

    if-ne p0, v0, :cond_11

    const-string v0, "MIP_PROFILE_SEC_HA_ADDR"

    return-object v0

    .line 67
    :cond_11
    const/16 v0, 0x25

    if-ne p0, v0, :cond_12

    const-string v0, "MIP_PROFILE_REV_TUN_PREF"

    return-object v0

    .line 68
    :cond_12
    const/16 v0, 0x26

    if-ne p0, v0, :cond_13

    const-string v0, "MIP_PROFILE_HA_SPI"

    return-object v0

    .line 69
    :cond_13
    const/16 v0, 0x27

    if-ne p0, v0, :cond_14

    const-string v0, "MIP_PROFILE_AAA_SPI"

    return-object v0

    .line 70
    :cond_14
    const/16 v0, 0x28

    if-ne p0, v0, :cond_15

    const-string v0, "MIP_PROFILE_MN_HA_SS"

    return-object v0

    .line 71
    :cond_15
    const/16 v0, 0x29

    if-ne p0, v0, :cond_16

    const-string v0, "MIP_PROFILE_MN_AAA_SS"

    return-object v0

    .line 72
    :cond_16
    const/16 v0, 0x33

    if-ne p0, v0, :cond_17

    const-string v0, "CDMA_PRL_VERSION"

    return-object v0

    .line 73
    :cond_17
    const/16 v0, 0x34

    if-ne p0, v0, :cond_18

    const-string v0, "CDMA_BC10"

    return-object v0

    .line 74
    :cond_18
    const/16 v0, 0x35

    if-ne p0, v0, :cond_19

    const-string v0, "CDMA_BC14"

    return-object v0

    .line 75
    :cond_19
    const/16 v0, 0x36

    if-ne p0, v0, :cond_1a

    const-string v0, "CDMA_SO68"

    return-object v0

    .line 76
    :cond_1a
    const/16 v0, 0x37

    if-ne p0, v0, :cond_1b

    const-string v0, "CDMA_SO73_COP0"

    return-object v0

    .line 77
    :cond_1b
    const/16 v0, 0x38

    if-ne p0, v0, :cond_1c

    const-string v0, "CDMA_SO73_COP1TO7"

    return-object v0

    .line 78
    :cond_1c
    const/16 v0, 0x39

    if-ne p0, v0, :cond_1d

    const-string v0, "CDMA_1X_ADVANCED_ENABLED"

    return-object v0

    .line 79
    :cond_1d
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_1e

    const-string v0, "CDMA_EHRPD_ENABLED"

    return-object v0

    .line 80
    :cond_1e
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_1f

    const-string v0, "CDMA_EHRPD_FORCED"

    return-object v0

    .line 81
    :cond_1f
    const/16 v0, 0x47

    if-ne p0, v0, :cond_20

    const-string v0, "LTE_BAND_ENABLE_25"

    return-object v0

    .line 82
    :cond_20
    const/16 v0, 0x48

    if-ne p0, v0, :cond_21

    const-string v0, "LTE_BAND_ENABLE_26"

    return-object v0

    .line 83
    :cond_21
    const/16 v0, 0x49

    if-ne p0, v0, :cond_22

    const-string v0, "LTE_BAND_ENABLE_41"

    return-object v0

    .line 84
    :cond_22
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_23

    const-string v0, "LTE_SCAN_PRIORITY_25"

    return-object v0

    .line 85
    :cond_23
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_24

    const-string v0, "LTE_SCAN_PRIORITY_26"

    return-object v0

    .line 86
    :cond_24
    const/16 v0, 0x4c

    if-ne p0, v0, :cond_25

    const-string v0, "LTE_SCAN_PRIORITY_41"

    return-object v0

    .line 87
    :cond_25
    const/16 v0, 0x4d

    if-ne p0, v0, :cond_26

    const-string v0, "LTE_HIDDEN_BAND_PRIORITY_25"

    return-object v0

    .line 88
    :cond_26
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_27

    const-string v0, "LTE_HIDDEN_BAND_PRIORITY_26"

    return-object v0

    .line 89
    :cond_27
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_28

    const-string v0, "LTE_HIDDEN_BAND_PRIORITY_41"

    return-object v0

    .line 90
    :cond_28
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
