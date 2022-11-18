.class public Lcom/oplus/eventhub/sdk/aidl/EventFountainRegisterCode;
.super Ljava/lang/Object;
.source "EventFountainRegisterCode.java"


# static fields
.field public static final whitelist BINDER_TRANSACTION_ERROR:I = 0x80

.field public static final whitelist EVENT_NOT_AVAILABLE:I = 0x2

.field public static final whitelist INVALID_PARAMETERS:I = 0x10

.field public static final whitelist NOT_IMPLEMENTED:I = 0x0

.field public static final whitelist OPLUS_VERSION_NOT_SUPPORT:I = 0x8

.field public static final whitelist PID_REGISTER_LIMITED:I = 0x4

.field public static final whitelist REGISTER_SUCCESS:I = 0x1

.field public static final whitelist SERVER_INTERVAL_ERROR:I = 0x20

.field public static final whitelist UNSUPPORTED_PARAMETER:I = 0x40


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist resultCodeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "resultCode"    # I

    .line 33
    const-string v0, "UNKNOWN_RESULT_CODE"

    .line 34
    .local v0, "brief":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 60
    const-string v0, "UNKNOWN_RESULT_CODE"

    goto :goto_0

    .line 57
    :sswitch_0
    const-string v0, "BINDER_TRANSACTION_ERROR"

    .line 58
    goto :goto_0

    .line 54
    :sswitch_1
    const-string v0, "UNSUPPORTED_PARAMETER"

    .line 55
    goto :goto_0

    .line 51
    :sswitch_2
    const-string v0, "SERVER_INTERVAL_ERROR"

    .line 52
    goto :goto_0

    .line 48
    :sswitch_3
    const-string v0, "INVALID_PARAMETERS"

    .line 49
    goto :goto_0

    .line 45
    :sswitch_4
    const-string v0, "OPLUSOS_VERSION_NOT_SUPPORT"

    .line 46
    goto :goto_0

    .line 42
    :sswitch_5
    const-string v0, "PID_REGISTER_LIMITED"

    .line 43
    goto :goto_0

    .line 39
    :sswitch_6
    const-string v0, "EVENT_NOT_AVAILABLE"

    .line 40
    goto :goto_0

    .line 36
    :sswitch_7
    const-string v0, "REGISTER_SUCCESS"

    .line 37
    nop

    .line 64
    :goto_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x4 -> :sswitch_5
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method
