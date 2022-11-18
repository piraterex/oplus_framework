.class public interface abstract Landroid/hardware/radio/data/DataCallFailCause$$;
.super Ljava/lang/Object;
.source "DataCallFailCause.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/data/DataCallFailCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = ""
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "_aidl_v"    # Ljava/lang/Object;

    .line 691
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 692
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 693
    .local v0, "_aidl_cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 694
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 695
    .local v1, "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, ", "

    const-string v4, "["

    const-string v5, "]"

    invoke-direct {v2, v3, v4, v5}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 696
    .local v2, "_aidl_sj":Ljava/util/StringJoiner;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 697
    const/4 v3, 0x0

    .local v3, "_aidl_i":I
    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 698
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/data/DataCallFailCause$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 697
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "_aidl_i":I
    :cond_1
    goto :goto_2

    .line 701
    :cond_2
    const-class v3, [I

    if-ne v0, v3, :cond_4

    .line 702
    move-object v3, p0

    check-cast v3, [I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    .line 703
    .local v6, "e":I
    invoke-static {v6}, Landroid/hardware/radio/data/DataCallFailCause$$;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 702
    .end local v6    # "e":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 706
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 701
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

    .line 693
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

    .line 348
    if-nez p0, :cond_0

    const-string v0, "NONE"

    return-object v0

    .line 349
    :cond_0
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    const-string v0, "OPERATOR_BARRED"

    return-object v0

    .line 350
    :cond_1
    const/16 v0, 0xe

    if-ne p0, v0, :cond_2

    const-string v0, "NAS_SIGNALLING"

    return-object v0

    .line 351
    :cond_2
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_3

    const-string v0, "INSUFFICIENT_RESOURCES"

    return-object v0

    .line 352
    :cond_3
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_4

    const-string v0, "MISSING_UNKNOWN_APN"

    return-object v0

    .line 353
    :cond_4
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_5

    const-string v0, "UNKNOWN_PDP_ADDRESS_TYPE"

    return-object v0

    .line 354
    :cond_5
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_6

    const-string v0, "USER_AUTHENTICATION"

    return-object v0

    .line 355
    :cond_6
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_7

    const-string v0, "ACTIVATION_REJECT_GGSN"

    return-object v0

    .line 356
    :cond_7
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_8

    const-string v0, "ACTIVATION_REJECT_UNSPECIFIED"

    return-object v0

    .line 357
    :cond_8
    const/16 v0, 0x20

    if-ne p0, v0, :cond_9

    const-string v0, "SERVICE_OPTION_NOT_SUPPORTED"

    return-object v0

    .line 358
    :cond_9
    const/16 v0, 0x21

    if-ne p0, v0, :cond_a

    const-string v0, "SERVICE_OPTION_NOT_SUBSCRIBED"

    return-object v0

    .line 359
    :cond_a
    const/16 v0, 0x22

    if-ne p0, v0, :cond_b

    const-string v0, "SERVICE_OPTION_OUT_OF_ORDER"

    return-object v0

    .line 360
    :cond_b
    const/16 v0, 0x23

    if-ne p0, v0, :cond_c

    const-string v0, "NSAPI_IN_USE"

    return-object v0

    .line 361
    :cond_c
    const/16 v0, 0x24

    if-ne p0, v0, :cond_d

    const-string v0, "REGULAR_DEACTIVATION"

    return-object v0

    .line 362
    :cond_d
    const/16 v0, 0x25

    if-ne p0, v0, :cond_e

    const-string v0, "QOS_NOT_ACCEPTED"

    return-object v0

    .line 363
    :cond_e
    const/16 v0, 0x26

    if-ne p0, v0, :cond_f

    const-string v0, "NETWORK_FAILURE"

    return-object v0

    .line 364
    :cond_f
    const/16 v0, 0x27

    if-ne p0, v0, :cond_10

    const-string v0, "UMTS_REACTIVATION_REQ"

    return-object v0

    .line 365
    :cond_10
    const/16 v0, 0x28

    if-ne p0, v0, :cond_11

    const-string v0, "FEATURE_NOT_SUPP"

    return-object v0

    .line 366
    :cond_11
    const/16 v0, 0x29

    if-ne p0, v0, :cond_12

    const-string v0, "TFT_SEMANTIC_ERROR"

    return-object v0

    .line 367
    :cond_12
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_13

    const-string v0, "TFT_SYTAX_ERROR"

    return-object v0

    .line 368
    :cond_13
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_14

    const-string v0, "UNKNOWN_PDP_CONTEXT"

    return-object v0

    .line 369
    :cond_14
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_15

    const-string v0, "FILTER_SEMANTIC_ERROR"

    return-object v0

    .line 370
    :cond_15
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_16

    const-string v0, "FILTER_SYTAX_ERROR"

    return-object v0

    .line 371
    :cond_16
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_17

    const-string v0, "PDP_WITHOUT_ACTIVE_TFT"

    return-object v0

    .line 372
    :cond_17
    const/16 v0, 0x32

    if-ne p0, v0, :cond_18

    const-string v0, "ONLY_IPV4_ALLOWED"

    return-object v0

    .line 373
    :cond_18
    const/16 v0, 0x33

    if-ne p0, v0, :cond_19

    const-string v0, "ONLY_IPV6_ALLOWED"

    return-object v0

    .line 374
    :cond_19
    const/16 v0, 0x34

    if-ne p0, v0, :cond_1a

    const-string v0, "ONLY_SINGLE_BEARER_ALLOWED"

    return-object v0

    .line 375
    :cond_1a
    const/16 v0, 0x35

    if-ne p0, v0, :cond_1b

    const-string v0, "ESM_INFO_NOT_RECEIVED"

    return-object v0

    .line 376
    :cond_1b
    const/16 v0, 0x36

    if-ne p0, v0, :cond_1c

    const-string v0, "PDN_CONN_DOES_NOT_EXIST"

    return-object v0

    .line 377
    :cond_1c
    const/16 v0, 0x37

    if-ne p0, v0, :cond_1d

    const-string v0, "MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED"

    return-object v0

    .line 378
    :cond_1d
    const/16 v0, 0x41

    if-ne p0, v0, :cond_1e

    const-string v0, "MAX_ACTIVE_PDP_CONTEXT_REACHED"

    return-object v0

    .line 379
    :cond_1e
    const/16 v0, 0x42

    if-ne p0, v0, :cond_1f

    const-string v0, "UNSUPPORTED_APN_IN_CURRENT_PLMN"

    return-object v0

    .line 380
    :cond_1f
    const/16 v0, 0x51

    if-ne p0, v0, :cond_20

    const-string v0, "INVALID_TRANSACTION_ID"

    return-object v0

    .line 381
    :cond_20
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_21

    const-string v0, "MESSAGE_INCORRECT_SEMANTIC"

    return-object v0

    .line 382
    :cond_21
    const/16 v0, 0x60

    if-ne p0, v0, :cond_22

    const-string v0, "INVALID_MANDATORY_INFO"

    return-object v0

    .line 383
    :cond_22
    const/16 v0, 0x61

    if-ne p0, v0, :cond_23

    const-string v0, "MESSAGE_TYPE_UNSUPPORTED"

    return-object v0

    .line 384
    :cond_23
    const/16 v0, 0x62

    if-ne p0, v0, :cond_24

    const-string v0, "MSG_TYPE_NONCOMPATIBLE_STATE"

    return-object v0

    .line 385
    :cond_24
    const/16 v0, 0x63

    if-ne p0, v0, :cond_25

    const-string v0, "UNKNOWN_INFO_ELEMENT"

    return-object v0

    .line 386
    :cond_25
    const/16 v0, 0x64

    if-ne p0, v0, :cond_26

    const-string v0, "CONDITIONAL_IE_ERROR"

    return-object v0

    .line 387
    :cond_26
    const/16 v0, 0x65

    if-ne p0, v0, :cond_27

    const-string v0, "MSG_AND_PROTOCOL_STATE_UNCOMPATIBLE"

    return-object v0

    .line 388
    :cond_27
    const/16 v0, 0x6f

    if-ne p0, v0, :cond_28

    const-string v0, "PROTOCOL_ERRORS"

    return-object v0

    .line 389
    :cond_28
    const/16 v0, 0x70

    if-ne p0, v0, :cond_29

    const-string v0, "APN_TYPE_CONFLICT"

    return-object v0

    .line 390
    :cond_29
    const/16 v0, 0x71

    if-ne p0, v0, :cond_2a

    const-string v0, "INVALID_PCSCF_ADDR"

    return-object v0

    .line 391
    :cond_2a
    const/16 v0, 0x72

    if-ne p0, v0, :cond_2b

    const-string v0, "INTERNAL_CALL_PREEMPT_BY_HIGH_PRIO_APN"

    return-object v0

    .line 392
    :cond_2b
    const/16 v0, 0x73

    if-ne p0, v0, :cond_2c

    const-string v0, "EMM_ACCESS_BARRED"

    return-object v0

    .line 393
    :cond_2c
    const/16 v0, 0x74

    if-ne p0, v0, :cond_2d

    const-string v0, "EMERGENCY_IFACE_ONLY"

    return-object v0

    .line 394
    :cond_2d
    const/16 v0, 0x75

    if-ne p0, v0, :cond_2e

    const-string v0, "IFACE_MISMATCH"

    return-object v0

    .line 395
    :cond_2e
    const/16 v0, 0x76

    if-ne p0, v0, :cond_2f

    const-string v0, "COMPANION_IFACE_IN_USE"

    return-object v0

    .line 396
    :cond_2f
    const/16 v0, 0x77

    if-ne p0, v0, :cond_30

    const-string v0, "IP_ADDRESS_MISMATCH"

    return-object v0

    .line 397
    :cond_30
    const/16 v0, 0x78

    if-ne p0, v0, :cond_31

    const-string v0, "IFACE_AND_POL_FAMILY_MISMATCH"

    return-object v0

    .line 398
    :cond_31
    const/16 v0, 0x79

    if-ne p0, v0, :cond_32

    const-string v0, "EMM_ACCESS_BARRED_INFINITE_RETRY"

    return-object v0

    .line 399
    :cond_32
    const/16 v0, 0x7a

    if-ne p0, v0, :cond_33

    const-string v0, "AUTH_FAILURE_ON_EMERGENCY_CALL"

    return-object v0

    .line 400
    :cond_33
    const/16 v0, 0x1001

    if-ne p0, v0, :cond_34

    const-string v0, "OEM_DCFAILCAUSE_1"

    return-object v0

    .line 401
    :cond_34
    const/16 v0, 0x1002

    if-ne p0, v0, :cond_35

    const-string v0, "OEM_DCFAILCAUSE_2"

    return-object v0

    .line 402
    :cond_35
    const/16 v0, 0x1003

    if-ne p0, v0, :cond_36

    const-string v0, "OEM_DCFAILCAUSE_3"

    return-object v0

    .line 403
    :cond_36
    const/16 v0, 0x1004

    if-ne p0, v0, :cond_37

    const-string v0, "OEM_DCFAILCAUSE_4"

    return-object v0

    .line 404
    :cond_37
    const/16 v0, 0x1005

    if-ne p0, v0, :cond_38

    const-string v0, "OEM_DCFAILCAUSE_5"

    return-object v0

    .line 405
    :cond_38
    const/16 v0, 0x1006

    if-ne p0, v0, :cond_39

    const-string v0, "OEM_DCFAILCAUSE_6"

    return-object v0

    .line 406
    :cond_39
    const/16 v0, 0x1007

    if-ne p0, v0, :cond_3a

    const-string v0, "OEM_DCFAILCAUSE_7"

    return-object v0

    .line 407
    :cond_3a
    const/16 v0, 0x1008

    if-ne p0, v0, :cond_3b

    const-string v0, "OEM_DCFAILCAUSE_8"

    return-object v0

    .line 408
    :cond_3b
    const/16 v0, 0x1009

    if-ne p0, v0, :cond_3c

    const-string v0, "OEM_DCFAILCAUSE_9"

    return-object v0

    .line 409
    :cond_3c
    const/16 v0, 0x100a

    if-ne p0, v0, :cond_3d

    const-string v0, "OEM_DCFAILCAUSE_10"

    return-object v0

    .line 410
    :cond_3d
    const/16 v0, 0x100b

    if-ne p0, v0, :cond_3e

    const-string v0, "OEM_DCFAILCAUSE_11"

    return-object v0

    .line 411
    :cond_3e
    const/16 v0, 0x100c

    if-ne p0, v0, :cond_3f

    const-string v0, "OEM_DCFAILCAUSE_12"

    return-object v0

    .line 412
    :cond_3f
    const/16 v0, 0x100d

    if-ne p0, v0, :cond_40

    const-string v0, "OEM_DCFAILCAUSE_13"

    return-object v0

    .line 413
    :cond_40
    const/16 v0, 0x100e

    if-ne p0, v0, :cond_41

    const-string v0, "OEM_DCFAILCAUSE_14"

    return-object v0

    .line 414
    :cond_41
    const/16 v0, 0x100f

    if-ne p0, v0, :cond_42

    const-string v0, "OEM_DCFAILCAUSE_15"

    return-object v0

    .line 415
    :cond_42
    const/4 v0, -0x1

    if-ne p0, v0, :cond_43

    const-string v0, "VOICE_REGISTRATION_FAIL"

    return-object v0

    .line 416
    :cond_43
    const/4 v0, -0x2

    if-ne p0, v0, :cond_44

    const-string v0, "DATA_REGISTRATION_FAIL"

    return-object v0

    .line 417
    :cond_44
    const/4 v0, -0x3

    if-ne p0, v0, :cond_45

    const-string v0, "SIGNAL_LOST"

    return-object v0

    .line 418
    :cond_45
    const/4 v0, -0x4

    if-ne p0, v0, :cond_46

    const-string v0, "PREF_RADIO_TECH_CHANGED"

    return-object v0

    .line 419
    :cond_46
    const/4 v0, -0x5

    if-ne p0, v0, :cond_47

    const-string v0, "RADIO_POWER_OFF"

    return-object v0

    .line 420
    :cond_47
    const/4 v0, -0x6

    if-ne p0, v0, :cond_48

    const-string v0, "TETHERED_CALL_ACTIVE"

    return-object v0

    .line 421
    :cond_48
    const v0, 0xffff

    if-ne p0, v0, :cond_49

    const-string v0, "ERROR_UNSPECIFIED"

    return-object v0

    .line 422
    :cond_49
    const/16 v0, 0x19

    if-ne p0, v0, :cond_4a

    const-string v0, "LLC_SNDCP"

    return-object v0

    .line 423
    :cond_4a
    const/16 v0, 0x30

    if-ne p0, v0, :cond_4b

    const-string v0, "ACTIVATION_REJECTED_BCM_VIOLATION"

    return-object v0

    .line 424
    :cond_4b
    const/16 v0, 0x38

    if-ne p0, v0, :cond_4c

    const-string v0, "COLLISION_WITH_NETWORK_INITIATED_REQUEST"

    return-object v0

    .line 425
    :cond_4c
    const/16 v0, 0x39

    if-ne p0, v0, :cond_4d

    const-string v0, "ONLY_IPV4V6_ALLOWED"

    return-object v0

    .line 426
    :cond_4d
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_4e

    const-string v0, "ONLY_NON_IP_ALLOWED"

    return-object v0

    .line 427
    :cond_4e
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_4f

    const-string v0, "UNSUPPORTED_QCI_VALUE"

    return-object v0

    .line 428
    :cond_4f
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_50

    const-string v0, "BEARER_HANDLING_NOT_SUPPORTED"

    return-object v0

    .line 429
    :cond_50
    const/16 v0, 0x7b

    if-ne p0, v0, :cond_51

    const-string v0, "INVALID_DNS_ADDR"

    return-object v0

    .line 430
    :cond_51
    const/16 v0, 0x7c

    if-ne p0, v0, :cond_52

    const-string v0, "INVALID_PCSCF_OR_DNS_ADDRESS"

    return-object v0

    .line 431
    :cond_52
    const/16 v0, 0x7f

    if-ne p0, v0, :cond_53

    const-string v0, "CALL_PREEMPT_BY_EMERGENCY_APN"

    return-object v0

    .line 432
    :cond_53
    const/16 v0, 0x80

    if-ne p0, v0, :cond_54

    const-string v0, "UE_INITIATED_DETACH_OR_DISCONNECT"

    return-object v0

    .line 433
    :cond_54
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_55

    const-string v0, "MIP_FA_REASON_UNSPECIFIED"

    return-object v0

    .line 434
    :cond_55
    const/16 v0, 0x7d1

    if-ne p0, v0, :cond_56

    const-string v0, "MIP_FA_ADMIN_PROHIBITED"

    return-object v0

    .line 435
    :cond_56
    const/16 v0, 0x7d2

    if-ne p0, v0, :cond_57

    const-string v0, "MIP_FA_INSUFFICIENT_RESOURCES"

    return-object v0

    .line 436
    :cond_57
    const/16 v0, 0x7d3

    if-ne p0, v0, :cond_58

    const-string v0, "MIP_FA_MOBILE_NODE_AUTHENTICATION_FAILURE"

    return-object v0

    .line 437
    :cond_58
    const/16 v0, 0x7d4

    if-ne p0, v0, :cond_59

    const-string v0, "MIP_FA_HOME_AGENT_AUTHENTICATION_FAILURE"

    return-object v0

    .line 438
    :cond_59
    const/16 v0, 0x7d5

    if-ne p0, v0, :cond_5a

    const-string v0, "MIP_FA_REQUESTED_LIFETIME_TOO_LONG"

    return-object v0

    .line 439
    :cond_5a
    const/16 v0, 0x7d6

    if-ne p0, v0, :cond_5b

    const-string v0, "MIP_FA_MALFORMED_REQUEST"

    return-object v0

    .line 440
    :cond_5b
    const/16 v0, 0x7d7

    if-ne p0, v0, :cond_5c

    const-string v0, "MIP_FA_MALFORMED_REPLY"

    return-object v0

    .line 441
    :cond_5c
    const/16 v0, 0x7d8

    if-ne p0, v0, :cond_5d

    const-string v0, "MIP_FA_ENCAPSULATION_UNAVAILABLE"

    return-object v0

    .line 442
    :cond_5d
    const/16 v0, 0x7d9

    if-ne p0, v0, :cond_5e

    const-string v0, "MIP_FA_VJ_HEADER_COMPRESSION_UNAVAILABLE"

    return-object v0

    .line 443
    :cond_5e
    const/16 v0, 0x7da

    if-ne p0, v0, :cond_5f

    const-string v0, "MIP_FA_REVERSE_TUNNEL_UNAVAILABLE"

    return-object v0

    .line 444
    :cond_5f
    const/16 v0, 0x7db

    if-ne p0, v0, :cond_60

    const-string v0, "MIP_FA_REVERSE_TUNNEL_IS_MANDATORY"

    return-object v0

    .line 445
    :cond_60
    const/16 v0, 0x7dc

    if-ne p0, v0, :cond_61

    const-string v0, "MIP_FA_DELIVERY_STYLE_NOT_SUPPORTED"

    return-object v0

    .line 446
    :cond_61
    const/16 v0, 0x7dd

    if-ne p0, v0, :cond_62

    const-string v0, "MIP_FA_MISSING_NAI"

    return-object v0

    .line 447
    :cond_62
    const/16 v0, 0x7de

    if-ne p0, v0, :cond_63

    const-string v0, "MIP_FA_MISSING_HOME_AGENT"

    return-object v0

    .line 448
    :cond_63
    const/16 v0, 0x7df

    if-ne p0, v0, :cond_64

    const-string v0, "MIP_FA_MISSING_HOME_ADDRESS"

    return-object v0

    .line 449
    :cond_64
    const/16 v0, 0x7e0

    if-ne p0, v0, :cond_65

    const-string v0, "MIP_FA_UNKNOWN_CHALLENGE"

    return-object v0

    .line 450
    :cond_65
    const/16 v0, 0x7e1

    if-ne p0, v0, :cond_66

    const-string v0, "MIP_FA_MISSING_CHALLENGE"

    return-object v0

    .line 451
    :cond_66
    const/16 v0, 0x7e2

    if-ne p0, v0, :cond_67

    const-string v0, "MIP_FA_STALE_CHALLENGE"

    return-object v0

    .line 452
    :cond_67
    const/16 v0, 0x7e3

    if-ne p0, v0, :cond_68

    const-string v0, "MIP_HA_REASON_UNSPECIFIED"

    return-object v0

    .line 453
    :cond_68
    const/16 v0, 0x7e4

    if-ne p0, v0, :cond_69

    const-string v0, "MIP_HA_ADMIN_PROHIBITED"

    return-object v0

    .line 454
    :cond_69
    const/16 v0, 0x7e5

    if-ne p0, v0, :cond_6a

    const-string v0, "MIP_HA_INSUFFICIENT_RESOURCES"

    return-object v0

    .line 455
    :cond_6a
    const/16 v0, 0x7e6

    if-ne p0, v0, :cond_6b

    const-string v0, "MIP_HA_MOBILE_NODE_AUTHENTICATION_FAILURE"

    return-object v0

    .line 456
    :cond_6b
    const/16 v0, 0x7e7

    if-ne p0, v0, :cond_6c

    const-string v0, "MIP_HA_FOREIGN_AGENT_AUTHENTICATION_FAILURE"

    return-object v0

    .line 457
    :cond_6c
    const/16 v0, 0x7e8

    if-ne p0, v0, :cond_6d

    const-string v0, "MIP_HA_REGISTRATION_ID_MISMATCH"

    return-object v0

    .line 458
    :cond_6d
    const/16 v0, 0x7e9

    if-ne p0, v0, :cond_6e

    const-string v0, "MIP_HA_MALFORMED_REQUEST"

    return-object v0

    .line 459
    :cond_6e
    const/16 v0, 0x7ea

    if-ne p0, v0, :cond_6f

    const-string v0, "MIP_HA_UNKNOWN_HOME_AGENT_ADDRESS"

    return-object v0

    .line 460
    :cond_6f
    const/16 v0, 0x7eb

    if-ne p0, v0, :cond_70

    const-string v0, "MIP_HA_REVERSE_TUNNEL_UNAVAILABLE"

    return-object v0

    .line 461
    :cond_70
    const/16 v0, 0x7ec

    if-ne p0, v0, :cond_71

    const-string v0, "MIP_HA_REVERSE_TUNNEL_IS_MANDATORY"

    return-object v0

    .line 462
    :cond_71
    const/16 v0, 0x7ed

    if-ne p0, v0, :cond_72

    const-string v0, "MIP_HA_ENCAPSULATION_UNAVAILABLE"

    return-object v0

    .line 463
    :cond_72
    const/16 v0, 0x7ee

    if-ne p0, v0, :cond_73

    const-string v0, "CLOSE_IN_PROGRESS"

    return-object v0

    .line 464
    :cond_73
    const/16 v0, 0x7ef

    if-ne p0, v0, :cond_74

    const-string v0, "NETWORK_INITIATED_TERMINATION"

    return-object v0

    .line 465
    :cond_74
    const/16 v0, 0x7f0

    if-ne p0, v0, :cond_75

    const-string v0, "MODEM_APP_PREEMPTED"

    return-object v0

    .line 466
    :cond_75
    const/16 v0, 0x7f1

    if-ne p0, v0, :cond_76

    const-string v0, "PDN_IPV4_CALL_DISALLOWED"

    return-object v0

    .line 467
    :cond_76
    const/16 v0, 0x7f2

    if-ne p0, v0, :cond_77

    const-string v0, "PDN_IPV4_CALL_THROTTLED"

    return-object v0

    .line 468
    :cond_77
    const/16 v0, 0x7f3

    if-ne p0, v0, :cond_78

    const-string v0, "PDN_IPV6_CALL_DISALLOWED"

    return-object v0

    .line 469
    :cond_78
    const/16 v0, 0x7f4

    if-ne p0, v0, :cond_79

    const-string v0, "PDN_IPV6_CALL_THROTTLED"

    return-object v0

    .line 470
    :cond_79
    const/16 v0, 0x7f5

    if-ne p0, v0, :cond_7a

    const-string v0, "MODEM_RESTART"

    return-object v0

    .line 471
    :cond_7a
    const/16 v0, 0x7f6

    if-ne p0, v0, :cond_7b

    const-string v0, "PDP_PPP_NOT_SUPPORTED"

    return-object v0

    .line 472
    :cond_7b
    const/16 v0, 0x7f7

    if-ne p0, v0, :cond_7c

    const-string v0, "UNPREFERRED_RAT"

    return-object v0

    .line 473
    :cond_7c
    const/16 v0, 0x7f8

    if-ne p0, v0, :cond_7d

    const-string v0, "PHYSICAL_LINK_CLOSE_IN_PROGRESS"

    return-object v0

    .line 474
    :cond_7d
    const/16 v0, 0x7f9

    if-ne p0, v0, :cond_7e

    const-string v0, "APN_PENDING_HANDOVER"

    return-object v0

    .line 475
    :cond_7e
    const/16 v0, 0x7fa

    if-ne p0, v0, :cond_7f

    const-string v0, "PROFILE_BEARER_INCOMPATIBLE"

    return-object v0

    .line 476
    :cond_7f
    const/16 v0, 0x7fb

    if-ne p0, v0, :cond_80

    const-string v0, "SIM_CARD_CHANGED"

    return-object v0

    .line 477
    :cond_80
    const/16 v0, 0x7fc

    if-ne p0, v0, :cond_81

    const-string v0, "LOW_POWER_MODE_OR_POWERING_DOWN"

    return-object v0

    .line 478
    :cond_81
    const/16 v0, 0x7fd

    if-ne p0, v0, :cond_82

    const-string v0, "APN_DISABLED"

    return-object v0

    .line 479
    :cond_82
    const/16 v0, 0x7fe

    if-ne p0, v0, :cond_83

    const-string v0, "MAX_PPP_INACTIVITY_TIMER_EXPIRED"

    return-object v0

    .line 480
    :cond_83
    const/16 v0, 0x7ff

    if-ne p0, v0, :cond_84

    const-string v0, "IPV6_ADDRESS_TRANSFER_FAILED"

    return-object v0

    .line 481
    :cond_84
    const/16 v0, 0x800

    if-ne p0, v0, :cond_85

    const-string v0, "TRAT_SWAP_FAILED"

    return-object v0

    .line 482
    :cond_85
    const/16 v0, 0x801

    if-ne p0, v0, :cond_86

    const-string v0, "EHRPD_TO_HRPD_FALLBACK"

    return-object v0

    .line 483
    :cond_86
    const/16 v0, 0x802

    if-ne p0, v0, :cond_87

    const-string v0, "MIP_CONFIG_FAILURE"

    return-object v0

    .line 484
    :cond_87
    const/16 v0, 0x803

    if-ne p0, v0, :cond_88

    const-string v0, "PDN_INACTIVITY_TIMER_EXPIRED"

    return-object v0

    .line 485
    :cond_88
    const/16 v0, 0x804

    if-ne p0, v0, :cond_89

    const-string v0, "MAX_IPV4_CONNECTIONS"

    return-object v0

    .line 486
    :cond_89
    const/16 v0, 0x805

    if-ne p0, v0, :cond_8a

    const-string v0, "MAX_IPV6_CONNECTIONS"

    return-object v0

    .line 487
    :cond_8a
    const/16 v0, 0x806

    if-ne p0, v0, :cond_8b

    const-string v0, "APN_MISMATCH"

    return-object v0

    .line 488
    :cond_8b
    const/16 v0, 0x807

    if-ne p0, v0, :cond_8c

    const-string v0, "IP_VERSION_MISMATCH"

    return-object v0

    .line 489
    :cond_8c
    const/16 v0, 0x808

    if-ne p0, v0, :cond_8d

    const-string v0, "DUN_CALL_DISALLOWED"

    return-object v0

    .line 490
    :cond_8d
    const/16 v0, 0x809

    if-ne p0, v0, :cond_8e

    const-string v0, "INTERNAL_EPC_NONEPC_TRANSITION"

    return-object v0

    .line 491
    :cond_8e
    const/16 v0, 0x80a

    if-ne p0, v0, :cond_8f

    const-string v0, "INTERFACE_IN_USE"

    return-object v0

    .line 492
    :cond_8f
    const/16 v0, 0x80b

    if-ne p0, v0, :cond_90

    const-string v0, "APN_DISALLOWED_ON_ROAMING"

    return-object v0

    .line 493
    :cond_90
    const/16 v0, 0x80c

    if-ne p0, v0, :cond_91

    const-string v0, "APN_PARAMETERS_CHANGED"

    return-object v0

    .line 494
    :cond_91
    const/16 v0, 0x80d

    if-ne p0, v0, :cond_92

    const-string v0, "NULL_APN_DISALLOWED"

    return-object v0

    .line 495
    :cond_92
    const/16 v0, 0x80e

    if-ne p0, v0, :cond_93

    const-string v0, "THERMAL_MITIGATION"

    return-object v0

    .line 496
    :cond_93
    const/16 v0, 0x80f

    if-ne p0, v0, :cond_94

    const-string v0, "DATA_SETTINGS_DISABLED"

    return-object v0

    .line 497
    :cond_94
    const/16 v0, 0x810

    if-ne p0, v0, :cond_95

    const-string v0, "DATA_ROAMING_SETTINGS_DISABLED"

    return-object v0

    .line 498
    :cond_95
    const/16 v0, 0x811

    if-ne p0, v0, :cond_96

    const-string v0, "DDS_SWITCHED"

    return-object v0

    .line 499
    :cond_96
    const/16 v0, 0x812

    if-ne p0, v0, :cond_97

    const-string v0, "FORBIDDEN_APN_NAME"

    return-object v0

    .line 500
    :cond_97
    const/16 v0, 0x813

    if-ne p0, v0, :cond_98

    const-string v0, "DDS_SWITCH_IN_PROGRESS"

    return-object v0

    .line 501
    :cond_98
    const/16 v0, 0x814

    if-ne p0, v0, :cond_99

    const-string v0, "CALL_DISALLOWED_IN_ROAMING"

    return-object v0

    .line 502
    :cond_99
    const/16 v0, 0x815

    if-ne p0, v0, :cond_9a

    const-string v0, "NON_IP_NOT_SUPPORTED"

    return-object v0

    .line 503
    :cond_9a
    const/16 v0, 0x816

    if-ne p0, v0, :cond_9b

    const-string v0, "PDN_NON_IP_CALL_THROTTLED"

    return-object v0

    .line 504
    :cond_9b
    const/16 v0, 0x817

    if-ne p0, v0, :cond_9c

    const-string v0, "PDN_NON_IP_CALL_DISALLOWED"

    return-object v0

    .line 505
    :cond_9c
    const/16 v0, 0x818

    if-ne p0, v0, :cond_9d

    const-string v0, "CDMA_LOCK"

    return-object v0

    .line 506
    :cond_9d
    const/16 v0, 0x819

    if-ne p0, v0, :cond_9e

    const-string v0, "CDMA_INTERCEPT"

    return-object v0

    .line 507
    :cond_9e
    const/16 v0, 0x81a

    if-ne p0, v0, :cond_9f

    const-string v0, "CDMA_REORDER"

    return-object v0

    .line 508
    :cond_9f
    const/16 v0, 0x81b

    if-ne p0, v0, :cond_a0

    const-string v0, "CDMA_RELEASE_DUE_TO_SO_REJECTION"

    return-object v0

    .line 509
    :cond_a0
    const/16 v0, 0x81c

    if-ne p0, v0, :cond_a1

    const-string v0, "CDMA_INCOMING_CALL"

    return-object v0

    .line 510
    :cond_a1
    const/16 v0, 0x81d

    if-ne p0, v0, :cond_a2

    const-string v0, "CDMA_ALERT_STOP"

    return-object v0

    .line 511
    :cond_a2
    const/16 v0, 0x81e

    if-ne p0, v0, :cond_a3

    const-string v0, "CHANNEL_ACQUISITION_FAILURE"

    return-object v0

    .line 512
    :cond_a3
    const/16 v0, 0x81f

    if-ne p0, v0, :cond_a4

    const-string v0, "MAX_ACCESS_PROBE"

    return-object v0

    .line 513
    :cond_a4
    const/16 v0, 0x820

    if-ne p0, v0, :cond_a5

    const-string v0, "CONCURRENT_SERVICE_NOT_SUPPORTED_BY_BASE_STATION"

    return-object v0

    .line 514
    :cond_a5
    const/16 v0, 0x821

    if-ne p0, v0, :cond_a6

    const-string v0, "NO_RESPONSE_FROM_BASE_STATION"

    return-object v0

    .line 515
    :cond_a6
    const/16 v0, 0x822

    if-ne p0, v0, :cond_a7

    const-string v0, "REJECTED_BY_BASE_STATION"

    return-object v0

    .line 516
    :cond_a7
    const/16 v0, 0x823

    if-ne p0, v0, :cond_a8

    const-string v0, "CONCURRENT_SERVICES_INCOMPATIBLE"

    return-object v0

    .line 517
    :cond_a8
    const/16 v0, 0x824

    if-ne p0, v0, :cond_a9

    const-string v0, "NO_CDMA_SERVICE"

    return-object v0

    .line 518
    :cond_a9
    const/16 v0, 0x825

    if-ne p0, v0, :cond_aa

    const-string v0, "RUIM_NOT_PRESENT"

    return-object v0

    .line 519
    :cond_aa
    const/16 v0, 0x826

    if-ne p0, v0, :cond_ab

    const-string v0, "CDMA_RETRY_ORDER"

    return-object v0

    .line 520
    :cond_ab
    const/16 v0, 0x827

    if-ne p0, v0, :cond_ac

    const-string v0, "ACCESS_BLOCK"

    return-object v0

    .line 521
    :cond_ac
    const/16 v0, 0x828

    if-ne p0, v0, :cond_ad

    const-string v0, "ACCESS_BLOCK_ALL"

    return-object v0

    .line 522
    :cond_ad
    const/16 v0, 0x829

    if-ne p0, v0, :cond_ae

    const-string v0, "IS707B_MAX_ACCESS_PROBES"

    return-object v0

    .line 523
    :cond_ae
    const/16 v0, 0x82a

    if-ne p0, v0, :cond_af

    const-string v0, "THERMAL_EMERGENCY"

    return-object v0

    .line 524
    :cond_af
    const/16 v0, 0x82b

    if-ne p0, v0, :cond_b0

    const-string v0, "CONCURRENT_SERVICES_NOT_ALLOWED"

    return-object v0

    .line 525
    :cond_b0
    const/16 v0, 0x82c

    if-ne p0, v0, :cond_b1

    const-string v0, "INCOMING_CALL_REJECTED"

    return-object v0

    .line 526
    :cond_b1
    const/16 v0, 0x82d

    if-ne p0, v0, :cond_b2

    const-string v0, "NO_SERVICE_ON_GATEWAY"

    return-object v0

    .line 527
    :cond_b2
    const/16 v0, 0x82e

    if-ne p0, v0, :cond_b3

    const-string v0, "NO_GPRS_CONTEXT"

    return-object v0

    .line 528
    :cond_b3
    const/16 v0, 0x82f

    if-ne p0, v0, :cond_b4

    const-string v0, "ILLEGAL_MS"

    return-object v0

    .line 529
    :cond_b4
    const/16 v0, 0x830

    if-ne p0, v0, :cond_b5

    const-string v0, "ILLEGAL_ME"

    return-object v0

    .line 530
    :cond_b5
    const/16 v0, 0x831

    if-ne p0, v0, :cond_b6

    const-string v0, "GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED"

    return-object v0

    .line 531
    :cond_b6
    const/16 v0, 0x832

    if-ne p0, v0, :cond_b7

    const-string v0, "GPRS_SERVICES_NOT_ALLOWED"

    return-object v0

    .line 532
    :cond_b7
    const/16 v0, 0x833

    if-ne p0, v0, :cond_b8

    const-string v0, "MS_IDENTITY_CANNOT_BE_DERIVED_BY_THE_NETWORK"

    return-object v0

    .line 533
    :cond_b8
    const/16 v0, 0x834

    if-ne p0, v0, :cond_b9

    const-string v0, "IMPLICITLY_DETACHED"

    return-object v0

    .line 534
    :cond_b9
    const/16 v0, 0x835

    if-ne p0, v0, :cond_ba

    const-string v0, "PLMN_NOT_ALLOWED"

    return-object v0

    .line 535
    :cond_ba
    const/16 v0, 0x836

    if-ne p0, v0, :cond_bb

    const-string v0, "LOCATION_AREA_NOT_ALLOWED"

    return-object v0

    .line 536
    :cond_bb
    const/16 v0, 0x837

    if-ne p0, v0, :cond_bc

    const-string v0, "GPRS_SERVICES_NOT_ALLOWED_IN_THIS_PLMN"

    return-object v0

    .line 537
    :cond_bc
    const/16 v0, 0x838

    if-ne p0, v0, :cond_bd

    const-string v0, "PDP_DUPLICATE"

    return-object v0

    .line 538
    :cond_bd
    const/16 v0, 0x839

    if-ne p0, v0, :cond_be

    const-string v0, "UE_RAT_CHANGE"

    return-object v0

    .line 539
    :cond_be
    const/16 v0, 0x83a

    if-ne p0, v0, :cond_bf

    const-string v0, "CONGESTION"

    return-object v0

    .line 540
    :cond_bf
    const/16 v0, 0x83b

    if-ne p0, v0, :cond_c0

    const-string v0, "NO_PDP_CONTEXT_ACTIVATED"

    return-object v0

    .line 541
    :cond_c0
    const/16 v0, 0x83c

    if-ne p0, v0, :cond_c1

    const-string v0, "ACCESS_CLASS_DSAC_REJECTION"

    return-object v0

    .line 542
    :cond_c1
    const/16 v0, 0x83d

    if-ne p0, v0, :cond_c2

    const-string v0, "PDP_ACTIVATE_MAX_RETRY_FAILED"

    return-object v0

    .line 543
    :cond_c2
    const/16 v0, 0x83e

    if-ne p0, v0, :cond_c3

    const-string v0, "RADIO_ACCESS_BEARER_FAILURE"

    return-object v0

    .line 544
    :cond_c3
    const/16 v0, 0x83f

    if-ne p0, v0, :cond_c4

    const-string v0, "ESM_UNKNOWN_EPS_BEARER_CONTEXT"

    return-object v0

    .line 545
    :cond_c4
    const/16 v0, 0x840

    if-ne p0, v0, :cond_c5

    const-string v0, "DRB_RELEASED_BY_RRC"

    return-object v0

    .line 546
    :cond_c5
    const/16 v0, 0x841

    if-ne p0, v0, :cond_c6

    const-string v0, "CONNECTION_RELEASED"

    return-object v0

    .line 547
    :cond_c6
    const/16 v0, 0x842

    if-ne p0, v0, :cond_c7

    const-string v0, "EMM_DETACHED"

    return-object v0

    .line 548
    :cond_c7
    const/16 v0, 0x843

    if-ne p0, v0, :cond_c8

    const-string v0, "EMM_ATTACH_FAILED"

    return-object v0

    .line 549
    :cond_c8
    const/16 v0, 0x844

    if-ne p0, v0, :cond_c9

    const-string v0, "EMM_ATTACH_STARTED"

    return-object v0

    .line 550
    :cond_c9
    const/16 v0, 0x845

    if-ne p0, v0, :cond_ca

    const-string v0, "LTE_NAS_SERVICE_REQUEST_FAILED"

    return-object v0

    .line 551
    :cond_ca
    const/16 v0, 0x846

    if-ne p0, v0, :cond_cb

    const-string v0, "DUPLICATE_BEARER_ID"

    return-object v0

    .line 552
    :cond_cb
    const/16 v0, 0x847

    if-ne p0, v0, :cond_cc

    const-string v0, "ESM_COLLISION_SCENARIOS"

    return-object v0

    .line 553
    :cond_cc
    const/16 v0, 0x848

    if-ne p0, v0, :cond_cd

    const-string v0, "ESM_BEARER_DEACTIVATED_TO_SYNC_WITH_NETWORK"

    return-object v0

    .line 554
    :cond_cd
    const/16 v0, 0x849

    if-ne p0, v0, :cond_ce

    const-string v0, "ESM_NW_ACTIVATED_DED_BEARER_WITH_ID_OF_DEF_BEARER"

    return-object v0

    .line 555
    :cond_ce
    const/16 v0, 0x84a

    if-ne p0, v0, :cond_cf

    const-string v0, "ESM_BAD_OTA_MESSAGE"

    return-object v0

    .line 556
    :cond_cf
    const/16 v0, 0x84b

    if-ne p0, v0, :cond_d0

    const-string v0, "ESM_DOWNLOAD_SERVER_REJECTED_THE_CALL"

    return-object v0

    .line 557
    :cond_d0
    const/16 v0, 0x84c

    if-ne p0, v0, :cond_d1

    const-string v0, "ESM_CONTEXT_TRANSFERRED_DUE_TO_IRAT"

    return-object v0

    .line 558
    :cond_d1
    const/16 v0, 0x84d

    if-ne p0, v0, :cond_d2

    const-string v0, "DS_EXPLICIT_DEACTIVATION"

    return-object v0

    .line 559
    :cond_d2
    const/16 v0, 0x84e

    if-ne p0, v0, :cond_d3

    const-string v0, "ESM_LOCAL_CAUSE_NONE"

    return-object v0

    .line 560
    :cond_d3
    const/16 v0, 0x84f

    if-ne p0, v0, :cond_d4

    const-string v0, "LTE_THROTTLING_NOT_REQUIRED"

    return-object v0

    .line 561
    :cond_d4
    const/16 v0, 0x850

    if-ne p0, v0, :cond_d5

    const-string v0, "ACCESS_CONTROL_LIST_CHECK_FAILURE"

    return-object v0

    .line 562
    :cond_d5
    const/16 v0, 0x851

    if-ne p0, v0, :cond_d6

    const-string v0, "SERVICE_NOT_ALLOWED_ON_PLMN"

    return-object v0

    .line 563
    :cond_d6
    const/16 v0, 0x852

    if-ne p0, v0, :cond_d7

    const-string v0, "EMM_T3417_EXPIRED"

    return-object v0

    .line 564
    :cond_d7
    const/16 v0, 0x853

    if-ne p0, v0, :cond_d8

    const-string v0, "EMM_T3417_EXT_EXPIRED"

    return-object v0

    .line 565
    :cond_d8
    const/16 v0, 0x854

    if-ne p0, v0, :cond_d9

    const-string v0, "RRC_UPLINK_DATA_TRANSMISSION_FAILURE"

    return-object v0

    .line 566
    :cond_d9
    const/16 v0, 0x855

    if-ne p0, v0, :cond_da

    const-string v0, "RRC_UPLINK_DELIVERY_FAILED_DUE_TO_HANDOVER"

    return-object v0

    .line 567
    :cond_da
    const/16 v0, 0x856

    if-ne p0, v0, :cond_db

    const-string v0, "RRC_UPLINK_CONNECTION_RELEASE"

    return-object v0

    .line 568
    :cond_db
    const/16 v0, 0x857

    if-ne p0, v0, :cond_dc

    const-string v0, "RRC_UPLINK_RADIO_LINK_FAILURE"

    return-object v0

    .line 569
    :cond_dc
    const/16 v0, 0x858

    if-ne p0, v0, :cond_dd

    const-string v0, "RRC_UPLINK_ERROR_REQUEST_FROM_NAS"

    return-object v0

    .line 570
    :cond_dd
    const/16 v0, 0x859

    if-ne p0, v0, :cond_de

    const-string v0, "RRC_CONNECTION_ACCESS_STRATUM_FAILURE"

    return-object v0

    .line 571
    :cond_de
    const/16 v0, 0x85a

    if-ne p0, v0, :cond_df

    const-string v0, "RRC_CONNECTION_ANOTHER_PROCEDURE_IN_PROGRESS"

    return-object v0

    .line 572
    :cond_df
    const/16 v0, 0x85b

    if-ne p0, v0, :cond_e0

    const-string v0, "RRC_CONNECTION_ACCESS_BARRED"

    return-object v0

    .line 573
    :cond_e0
    const/16 v0, 0x85c

    if-ne p0, v0, :cond_e1

    const-string v0, "RRC_CONNECTION_CELL_RESELECTION"

    return-object v0

    .line 574
    :cond_e1
    const/16 v0, 0x85d    # 3.0E-42f

    if-ne p0, v0, :cond_e2

    const-string v0, "RRC_CONNECTION_CONFIG_FAILURE"

    return-object v0

    .line 575
    :cond_e2
    const/16 v0, 0x85e

    if-ne p0, v0, :cond_e3

    const-string v0, "RRC_CONNECTION_TIMER_EXPIRED"

    return-object v0

    .line 576
    :cond_e3
    const/16 v0, 0x85f

    if-ne p0, v0, :cond_e4

    const-string v0, "RRC_CONNECTION_LINK_FAILURE"

    return-object v0

    .line 577
    :cond_e4
    const/16 v0, 0x860

    if-ne p0, v0, :cond_e5

    const-string v0, "RRC_CONNECTION_CELL_NOT_CAMPED"

    return-object v0

    .line 578
    :cond_e5
    const/16 v0, 0x861

    if-ne p0, v0, :cond_e6

    const-string v0, "RRC_CONNECTION_SYSTEM_INTERVAL_FAILURE"

    return-object v0

    .line 579
    :cond_e6
    const/16 v0, 0x862

    if-ne p0, v0, :cond_e7

    const-string v0, "RRC_CONNECTION_REJECT_BY_NETWORK"

    return-object v0

    .line 580
    :cond_e7
    const/16 v0, 0x863

    if-ne p0, v0, :cond_e8

    const-string v0, "RRC_CONNECTION_NORMAL_RELEASE"

    return-object v0

    .line 581
    :cond_e8
    const/16 v0, 0x864

    if-ne p0, v0, :cond_e9

    const-string v0, "RRC_CONNECTION_RADIO_LINK_FAILURE"

    return-object v0

    .line 582
    :cond_e9
    const/16 v0, 0x865

    if-ne p0, v0, :cond_ea

    const-string v0, "RRC_CONNECTION_REESTABLISHMENT_FAILURE"

    return-object v0

    .line 583
    :cond_ea
    const/16 v0, 0x866

    if-ne p0, v0, :cond_eb

    const-string v0, "RRC_CONNECTION_OUT_OF_SERVICE_DURING_CELL_REGISTER"

    return-object v0

    .line 584
    :cond_eb
    const/16 v0, 0x867

    if-ne p0, v0, :cond_ec

    const-string v0, "RRC_CONNECTION_ABORT_REQUEST"

    return-object v0

    .line 585
    :cond_ec
    const/16 v0, 0x868

    if-ne p0, v0, :cond_ed

    const-string v0, "RRC_CONNECTION_SYSTEM_INFORMATION_BLOCK_READ_ERROR"

    return-object v0

    .line 586
    :cond_ed
    const/16 v0, 0x869

    if-ne p0, v0, :cond_ee

    const-string v0, "NETWORK_INITIATED_DETACH_WITH_AUTO_REATTACH"

    return-object v0

    .line 587
    :cond_ee
    const/16 v0, 0x86a

    if-ne p0, v0, :cond_ef

    const-string v0, "NETWORK_INITIATED_DETACH_NO_AUTO_REATTACH"

    return-object v0

    .line 588
    :cond_ef
    const/16 v0, 0x86b

    if-ne p0, v0, :cond_f0

    const-string v0, "ESM_PROCEDURE_TIME_OUT"

    return-object v0

    .line 589
    :cond_f0
    const/16 v0, 0x86c

    if-ne p0, v0, :cond_f1

    const-string v0, "INVALID_CONNECTION_ID"

    return-object v0

    .line 590
    :cond_f1
    const/16 v0, 0x86d

    if-ne p0, v0, :cond_f2

    const-string v0, "MAXIMIUM_NSAPIS_EXCEEDED"

    return-object v0

    .line 591
    :cond_f2
    const/16 v0, 0x86e

    if-ne p0, v0, :cond_f3

    const-string v0, "INVALID_PRIMARY_NSAPI"

    return-object v0

    .line 592
    :cond_f3
    const/16 v0, 0x86f

    if-ne p0, v0, :cond_f4

    const-string v0, "CANNOT_ENCODE_OTA_MESSAGE"

    return-object v0

    .line 593
    :cond_f4
    const/16 v0, 0x870

    if-ne p0, v0, :cond_f5

    const-string v0, "RADIO_ACCESS_BEARER_SETUP_FAILURE"

    return-object v0

    .line 594
    :cond_f5
    const/16 v0, 0x871

    if-ne p0, v0, :cond_f6

    const-string v0, "PDP_ESTABLISH_TIMEOUT_EXPIRED"

    return-object v0

    .line 595
    :cond_f6
    const/16 v0, 0x872

    if-ne p0, v0, :cond_f7

    const-string v0, "PDP_MODIFY_TIMEOUT_EXPIRED"

    return-object v0

    .line 596
    :cond_f7
    const/16 v0, 0x873

    if-ne p0, v0, :cond_f8

    const-string v0, "PDP_INACTIVE_TIMEOUT_EXPIRED"

    return-object v0

    .line 597
    :cond_f8
    const/16 v0, 0x874

    if-ne p0, v0, :cond_f9

    const-string v0, "PDP_LOWERLAYER_ERROR"

    return-object v0

    .line 598
    :cond_f9
    const/16 v0, 0x875

    if-ne p0, v0, :cond_fa

    const-string v0, "PDP_MODIFY_COLLISION"

    return-object v0

    .line 599
    :cond_fa
    const/16 v0, 0x876

    if-ne p0, v0, :cond_fb

    const-string v0, "MAXINUM_SIZE_OF_L2_MESSAGE_EXCEEDED"

    return-object v0

    .line 600
    :cond_fb
    const/16 v0, 0x877

    if-ne p0, v0, :cond_fc

    const-string v0, "NAS_REQUEST_REJECTED_BY_NETWORK"

    return-object v0

    .line 601
    :cond_fc
    const/16 v0, 0x878

    if-ne p0, v0, :cond_fd

    const-string v0, "RRC_CONNECTION_INVALID_REQUEST"

    return-object v0

    .line 602
    :cond_fd
    const/16 v0, 0x879

    if-ne p0, v0, :cond_fe

    const-string v0, "RRC_CONNECTION_TRACKING_AREA_ID_CHANGED"

    return-object v0

    .line 603
    :cond_fe
    const/16 v0, 0x87a

    if-ne p0, v0, :cond_ff

    const-string v0, "RRC_CONNECTION_RF_UNAVAILABLE"

    return-object v0

    .line 604
    :cond_ff
    const/16 v0, 0x87b

    if-ne p0, v0, :cond_100

    const-string v0, "RRC_CONNECTION_ABORTED_DUE_TO_IRAT_CHANGE"

    return-object v0

    .line 605
    :cond_100
    const/16 v0, 0x87c

    if-ne p0, v0, :cond_101

    const-string v0, "RRC_CONNECTION_RELEASED_SECURITY_NOT_ACTIVE"

    return-object v0

    .line 606
    :cond_101
    const/16 v0, 0x87d

    if-ne p0, v0, :cond_102

    const-string v0, "RRC_CONNECTION_ABORTED_AFTER_HANDOVER"

    return-object v0

    .line 607
    :cond_102
    const/16 v0, 0x87e

    if-ne p0, v0, :cond_103

    const-string v0, "RRC_CONNECTION_ABORTED_AFTER_IRAT_CELL_CHANGE"

    return-object v0

    .line 608
    :cond_103
    const/16 v0, 0x87f

    if-ne p0, v0, :cond_104

    const-string v0, "RRC_CONNECTION_ABORTED_DURING_IRAT_CELL_CHANGE"

    return-object v0

    .line 609
    :cond_104
    const/16 v0, 0x880

    if-ne p0, v0, :cond_105

    const-string v0, "IMSI_UNKNOWN_IN_HOME_SUBSCRIBER_SERVER"

    return-object v0

    .line 610
    :cond_105
    const/16 v0, 0x881

    if-ne p0, v0, :cond_106

    const-string v0, "IMEI_NOT_ACCEPTED"

    return-object v0

    .line 611
    :cond_106
    const/16 v0, 0x882

    if-ne p0, v0, :cond_107

    const-string v0, "EPS_SERVICES_AND_NON_EPS_SERVICES_NOT_ALLOWED"

    return-object v0

    .line 612
    :cond_107
    const/16 v0, 0x883

    if-ne p0, v0, :cond_108

    const-string v0, "EPS_SERVICES_NOT_ALLOWED_IN_PLMN"

    return-object v0

    .line 613
    :cond_108
    const/16 v0, 0x884

    if-ne p0, v0, :cond_109

    const-string v0, "MSC_TEMPORARILY_NOT_REACHABLE"

    return-object v0

    .line 614
    :cond_109
    const/16 v0, 0x885

    if-ne p0, v0, :cond_10a

    const-string v0, "CS_DOMAIN_NOT_AVAILABLE"

    return-object v0

    .line 615
    :cond_10a
    const/16 v0, 0x886

    if-ne p0, v0, :cond_10b

    const-string v0, "ESM_FAILURE"

    return-object v0

    .line 616
    :cond_10b
    const/16 v0, 0x887

    if-ne p0, v0, :cond_10c

    const-string v0, "MAC_FAILURE"

    return-object v0

    .line 617
    :cond_10c
    const/16 v0, 0x888

    if-ne p0, v0, :cond_10d

    const-string v0, "SYNCHRONIZATION_FAILURE"

    return-object v0

    .line 618
    :cond_10d
    const/16 v0, 0x889

    if-ne p0, v0, :cond_10e

    const-string v0, "UE_SECURITY_CAPABILITIES_MISMATCH"

    return-object v0

    .line 619
    :cond_10e
    const/16 v0, 0x88a

    if-ne p0, v0, :cond_10f

    const-string v0, "SECURITY_MODE_REJECTED"

    return-object v0

    .line 620
    :cond_10f
    const/16 v0, 0x88b

    if-ne p0, v0, :cond_110

    const-string v0, "UNACCEPTABLE_NON_EPS_AUTHENTICATION"

    return-object v0

    .line 621
    :cond_110
    const/16 v0, 0x88c

    if-ne p0, v0, :cond_111

    const-string v0, "CS_FALLBACK_CALL_ESTABLISHMENT_NOT_ALLOWED"

    return-object v0

    .line 622
    :cond_111
    const/16 v0, 0x88d

    if-ne p0, v0, :cond_112

    const-string v0, "NO_EPS_BEARER_CONTEXT_ACTIVATED"

    return-object v0

    .line 623
    :cond_112
    const/16 v0, 0x88e

    if-ne p0, v0, :cond_113

    const-string v0, "INVALID_EMM_STATE"

    return-object v0

    .line 624
    :cond_113
    const/16 v0, 0x88f

    if-ne p0, v0, :cond_114

    const-string v0, "NAS_LAYER_FAILURE"

    return-object v0

    .line 625
    :cond_114
    const/16 v0, 0x890

    if-ne p0, v0, :cond_115

    const-string v0, "MULTIPLE_PDP_CALL_NOT_ALLOWED"

    return-object v0

    .line 626
    :cond_115
    const/16 v0, 0x891

    if-ne p0, v0, :cond_116

    const-string v0, "EMBMS_NOT_ENABLED"

    return-object v0

    .line 627
    :cond_116
    const/16 v0, 0x892

    if-ne p0, v0, :cond_117

    const-string v0, "IRAT_HANDOVER_FAILED"

    return-object v0

    .line 628
    :cond_117
    const/16 v0, 0x893

    if-ne p0, v0, :cond_118

    const-string v0, "EMBMS_REGULAR_DEACTIVATION"

    return-object v0

    .line 629
    :cond_118
    const/16 v0, 0x894

    if-ne p0, v0, :cond_119

    const-string v0, "TEST_LOOPBACK_REGULAR_DEACTIVATION"

    return-object v0

    .line 630
    :cond_119
    const/16 v0, 0x895

    if-ne p0, v0, :cond_11a

    const-string v0, "LOWER_LAYER_REGISTRATION_FAILURE"

    return-object v0

    .line 631
    :cond_11a
    const/16 v0, 0x896

    if-ne p0, v0, :cond_11b

    const-string v0, "DATA_PLAN_EXPIRED"

    return-object v0

    .line 632
    :cond_11b
    const/16 v0, 0x897

    if-ne p0, v0, :cond_11c

    const-string v0, "UMTS_HANDOVER_TO_IWLAN"

    return-object v0

    .line 633
    :cond_11c
    const/16 v0, 0x898

    if-ne p0, v0, :cond_11d

    const-string v0, "EVDO_CONNECTION_DENY_BY_GENERAL_OR_NETWORK_BUSY"

    return-object v0

    .line 634
    :cond_11d
    const/16 v0, 0x899

    if-ne p0, v0, :cond_11e

    const-string v0, "EVDO_CONNECTION_DENY_BY_BILLING_OR_AUTHENTICATION_FAILURE"

    return-object v0

    .line 635
    :cond_11e
    const/16 v0, 0x89a

    if-ne p0, v0, :cond_11f

    const-string v0, "EVDO_HDR_CHANGED"

    return-object v0

    .line 636
    :cond_11f
    const/16 v0, 0x89b

    if-ne p0, v0, :cond_120

    const-string v0, "EVDO_HDR_EXITED"

    return-object v0

    .line 637
    :cond_120
    const/16 v0, 0x89c

    if-ne p0, v0, :cond_121

    const-string v0, "EVDO_HDR_NO_SESSION"

    return-object v0

    .line 638
    :cond_121
    const/16 v0, 0x89d

    if-ne p0, v0, :cond_122

    const-string v0, "EVDO_USING_GPS_FIX_INSTEAD_OF_HDR_CALL"

    return-object v0

    .line 639
    :cond_122
    const/16 v0, 0x89e

    if-ne p0, v0, :cond_123

    const-string v0, "EVDO_HDR_CONNECTION_SETUP_TIMEOUT"

    return-object v0

    .line 640
    :cond_123
    const/16 v0, 0x89f

    if-ne p0, v0, :cond_124

    const-string v0, "FAILED_TO_ACQUIRE_COLOCATED_HDR"

    return-object v0

    .line 641
    :cond_124
    const/16 v0, 0x8a0

    if-ne p0, v0, :cond_125

    const-string v0, "OTASP_COMMIT_IN_PROGRESS"

    return-object v0

    .line 642
    :cond_125
    const/16 v0, 0x8a1

    if-ne p0, v0, :cond_126

    const-string v0, "NO_HYBRID_HDR_SERVICE"

    return-object v0

    .line 643
    :cond_126
    const/16 v0, 0x8a2

    if-ne p0, v0, :cond_127

    const-string v0, "HDR_NO_LOCK_GRANTED"

    return-object v0

    .line 644
    :cond_127
    const/16 v0, 0x8a3

    if-ne p0, v0, :cond_128

    const-string v0, "DBM_OR_SMS_IN_PROGRESS"

    return-object v0

    .line 645
    :cond_128
    const/16 v0, 0x8a4

    if-ne p0, v0, :cond_129

    const-string v0, "HDR_FADE"

    return-object v0

    .line 646
    :cond_129
    const/16 v0, 0x8a5

    if-ne p0, v0, :cond_12a

    const-string v0, "HDR_ACCESS_FAILURE"

    return-object v0

    .line 647
    :cond_12a
    const/16 v0, 0x8a6

    if-ne p0, v0, :cond_12b

    const-string v0, "UNSUPPORTED_1X_PREV"

    return-object v0

    .line 648
    :cond_12b
    const/16 v0, 0x8a7

    if-ne p0, v0, :cond_12c

    const-string v0, "LOCAL_END"

    return-object v0

    .line 649
    :cond_12c
    const/16 v0, 0x8a8

    if-ne p0, v0, :cond_12d

    const-string v0, "NO_SERVICE"

    return-object v0

    .line 650
    :cond_12d
    const/16 v0, 0x8a9

    if-ne p0, v0, :cond_12e

    const-string v0, "FADE"

    return-object v0

    .line 651
    :cond_12e
    const/16 v0, 0x8aa

    if-ne p0, v0, :cond_12f

    const-string v0, "NORMAL_RELEASE"

    return-object v0

    .line 652
    :cond_12f
    const/16 v0, 0x8ab

    if-ne p0, v0, :cond_130

    const-string v0, "ACCESS_ATTEMPT_ALREADY_IN_PROGRESS"

    return-object v0

    .line 653
    :cond_130
    const/16 v0, 0x8ac

    if-ne p0, v0, :cond_131

    const-string v0, "REDIRECTION_OR_HANDOFF_IN_PROGRESS"

    return-object v0

    .line 654
    :cond_131
    const/16 v0, 0x8ad

    if-ne p0, v0, :cond_132

    const-string v0, "EMERGENCY_MODE"

    return-object v0

    .line 655
    :cond_132
    const/16 v0, 0x8ae

    if-ne p0, v0, :cond_133

    const-string v0, "PHONE_IN_USE"

    return-object v0

    .line 656
    :cond_133
    const/16 v0, 0x8af

    if-ne p0, v0, :cond_134

    const-string v0, "INVALID_MODE"

    return-object v0

    .line 657
    :cond_134
    const/16 v0, 0x8b0

    if-ne p0, v0, :cond_135

    const-string v0, "INVALID_SIM_STATE"

    return-object v0

    .line 658
    :cond_135
    const/16 v0, 0x8b1

    if-ne p0, v0, :cond_136

    const-string v0, "NO_COLLOCATED_HDR"

    return-object v0

    .line 659
    :cond_136
    const/16 v0, 0x8b2

    if-ne p0, v0, :cond_137

    const-string v0, "UE_IS_ENTERING_POWERSAVE_MODE"

    return-object v0

    .line 660
    :cond_137
    const/16 v0, 0x8b3

    if-ne p0, v0, :cond_138

    const-string v0, "DUAL_SWITCH"

    return-object v0

    .line 661
    :cond_138
    const/16 v0, 0x8b4

    if-ne p0, v0, :cond_139

    const-string v0, "PPP_TIMEOUT"

    return-object v0

    .line 662
    :cond_139
    const/16 v0, 0x8b5

    if-ne p0, v0, :cond_13a

    const-string v0, "PPP_AUTH_FAILURE"

    return-object v0

    .line 663
    :cond_13a
    const/16 v0, 0x8b6

    if-ne p0, v0, :cond_13b

    const-string v0, "PPP_OPTION_MISMATCH"

    return-object v0

    .line 664
    :cond_13b
    const/16 v0, 0x8b7

    if-ne p0, v0, :cond_13c

    const-string v0, "PPP_PAP_FAILURE"

    return-object v0

    .line 665
    :cond_13c
    const/16 v0, 0x8b8

    if-ne p0, v0, :cond_13d

    const-string v0, "PPP_CHAP_FAILURE"

    return-object v0

    .line 666
    :cond_13d
    const/16 v0, 0x8b9

    if-ne p0, v0, :cond_13e

    const-string v0, "PPP_CLOSE_IN_PROGRESS"

    return-object v0

    .line 667
    :cond_13e
    const/16 v0, 0x8ba

    if-ne p0, v0, :cond_13f

    const-string v0, "LIMITED_TO_IPV4"

    return-object v0

    .line 668
    :cond_13f
    const/16 v0, 0x8bb

    if-ne p0, v0, :cond_140

    const-string v0, "LIMITED_TO_IPV6"

    return-object v0

    .line 669
    :cond_140
    const/16 v0, 0x8bc

    if-ne p0, v0, :cond_141

    const-string v0, "VSNCP_TIMEOUT"

    return-object v0

    .line 670
    :cond_141
    const/16 v0, 0x8bd

    if-ne p0, v0, :cond_142

    const-string v0, "VSNCP_GEN_ERROR"

    return-object v0

    .line 671
    :cond_142
    const/16 v0, 0x8be

    if-ne p0, v0, :cond_143

    const-string v0, "VSNCP_APN_UNAUTHORIZED"

    return-object v0

    .line 672
    :cond_143
    const/16 v0, 0x8bf

    if-ne p0, v0, :cond_144

    const-string v0, "VSNCP_PDN_LIMIT_EXCEEDED"

    return-object v0

    .line 673
    :cond_144
    const/16 v0, 0x8c0

    if-ne p0, v0, :cond_145

    const-string v0, "VSNCP_NO_PDN_GATEWAY_ADDRESS"

    return-object v0

    .line 674
    :cond_145
    const/16 v0, 0x8c1

    if-ne p0, v0, :cond_146

    const-string v0, "VSNCP_PDN_GATEWAY_UNREACHABLE"

    return-object v0

    .line 675
    :cond_146
    const/16 v0, 0x8c2

    if-ne p0, v0, :cond_147

    const-string v0, "VSNCP_PDN_GATEWAY_REJECT"

    return-object v0

    .line 676
    :cond_147
    const/16 v0, 0x8c3

    if-ne p0, v0, :cond_148

    const-string v0, "VSNCP_INSUFFICIENT_PARAMETERS"

    return-object v0

    .line 677
    :cond_148
    const/16 v0, 0x8c4

    if-ne p0, v0, :cond_149

    const-string v0, "VSNCP_RESOURCE_UNAVAILABLE"

    return-object v0

    .line 678
    :cond_149
    const/16 v0, 0x8c5

    if-ne p0, v0, :cond_14a

    const-string v0, "VSNCP_ADMINISTRATIVELY_PROHIBITED"

    return-object v0

    .line 679
    :cond_14a
    const/16 v0, 0x8c6

    if-ne p0, v0, :cond_14b

    const-string v0, "VSNCP_PDN_ID_IN_USE"

    return-object v0

    .line 680
    :cond_14b
    const/16 v0, 0x8c7

    if-ne p0, v0, :cond_14c

    const-string v0, "VSNCP_SUBSCRIBER_LIMITATION"

    return-object v0

    .line 681
    :cond_14c
    const/16 v0, 0x8c8

    if-ne p0, v0, :cond_14d

    const-string v0, "VSNCP_PDN_EXISTS_FOR_THIS_APN"

    return-object v0

    .line 682
    :cond_14d
    const/16 v0, 0x8c9

    if-ne p0, v0, :cond_14e

    const-string v0, "VSNCP_RECONNECT_NOT_ALLOWED"

    return-object v0

    .line 683
    :cond_14e
    const/16 v0, 0x8ca

    if-ne p0, v0, :cond_14f

    const-string v0, "IPV6_PREFIX_UNAVAILABLE"

    return-object v0

    .line 684
    :cond_14f
    const/16 v0, 0x8cb

    if-ne p0, v0, :cond_150

    const-string v0, "HANDOFF_PREFERENCE_CHANGED"

    return-object v0

    .line 685
    :cond_150
    const/16 v0, 0x8cc

    if-ne p0, v0, :cond_151

    const-string v0, "SLICE_REJECTED"

    return-object v0

    .line 686
    :cond_151
    const/16 v0, 0x8cd

    if-ne p0, v0, :cond_152

    const-string v0, "MATCH_ALL_RULE_NOT_ALLOWED"

    return-object v0

    .line 687
    :cond_152
    const/16 v0, 0x8ce

    if-ne p0, v0, :cond_153

    const-string v0, "ALL_MATCHING_RULES_FAILED"

    return-object v0

    .line 688
    :cond_153
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
