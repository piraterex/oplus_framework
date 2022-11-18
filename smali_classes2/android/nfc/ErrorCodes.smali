.class public Landroid/nfc/ErrorCodes;
.super Ljava/lang/Object;
.source "ErrorCodes.java"


# static fields
.field public static final greylist-max-o ERROR_BUFFER_TO_SMALL:I = -0xc

.field public static final greylist-max-o ERROR_BUSY:I = -0x4

.field public static final greylist-max-o ERROR_CANCELLED:I = -0x2

.field public static final greylist-max-o ERROR_CONNECT:I = -0x5

.field public static final greylist-max-o ERROR_DISCONNECT:I = -0x5

.field public static final greylist-max-o ERROR_INSUFFICIENT_RESOURCES:I = -0x9

.field public static final greylist-max-o ERROR_INVALID_PARAM:I = -0x8

.field public static final greylist-max-o ERROR_IO:I = -0x1

.field public static final greylist-max-o ERROR_NFC_ON:I = -0x10

.field public static final greylist-max-o ERROR_NOT_INITIALIZED:I = -0x11

.field public static final greylist-max-o ERROR_NOT_SUPPORTED:I = -0x15

.field public static final greylist-max-o ERROR_NO_SE_CONNECTED:I = -0x14

.field public static final greylist-max-o ERROR_READ:I = -0x6

.field public static final greylist-max-o ERROR_SAP_USED:I = -0xd

.field public static final greylist-max-o ERROR_SERVICE_NAME_USED:I = -0xe

.field public static final greylist-max-o ERROR_SE_ALREADY_SELECTED:I = -0x12

.field public static final greylist-max-o ERROR_SE_CONNECTED:I = -0x13

.field public static final greylist-max-o ERROR_SOCKET_CREATION:I = -0xa

.field public static final greylist-max-o ERROR_SOCKET_NOT_CONNECTED:I = -0xb

.field public static final greylist-max-o ERROR_SOCKET_OPTIONS:I = -0xf

.field public static final greylist-max-o ERROR_TIMEOUT:I = -0x3

.field public static final greylist-max-o ERROR_WRITE:I = -0x7

.field public static final greylist-max-o SUCCESS:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o asString(I)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # I

    .line 40
    packed-switch p0, :pswitch_data_0

    .line 64
    const-string v0, "UNKNOWN ERROR"

    return-object v0

    .line 41
    :pswitch_0
    const-string v0, "SUCCESS"

    return-object v0

    .line 42
    :pswitch_1
    const-string v0, "IO"

    return-object v0

    .line 43
    :pswitch_2
    const-string v0, "CANCELLED"

    return-object v0

    .line 44
    :pswitch_3
    const-string v0, "TIMEOUT"

    return-object v0

    .line 45
    :pswitch_4
    const-string v0, "BUSY"

    return-object v0

    .line 46
    :pswitch_5
    const-string v0, "CONNECT/DISCONNECT"

    return-object v0

    .line 48
    :pswitch_6
    const-string v0, "READ"

    return-object v0

    .line 49
    :pswitch_7
    const-string v0, "WRITE"

    return-object v0

    .line 50
    :pswitch_8
    const-string v0, "INVALID_PARAM"

    return-object v0

    .line 51
    :pswitch_9
    const-string v0, "INSUFFICIENT_RESOURCES"

    return-object v0

    .line 52
    :pswitch_a
    const-string v0, "SOCKET_CREATION"

    return-object v0

    .line 53
    :pswitch_b
    const-string v0, "SOCKET_NOT_CONNECTED"

    return-object v0

    .line 54
    :pswitch_c
    const-string v0, "BUFFER_TO_SMALL"

    return-object v0

    .line 55
    :pswitch_d
    const-string v0, "SAP_USED"

    return-object v0

    .line 56
    :pswitch_e
    const-string v0, "SERVICE_NAME_USED"

    return-object v0

    .line 57
    :pswitch_f
    const-string v0, "SOCKET_OPTIONS"

    return-object v0

    .line 58
    :pswitch_10
    const-string v0, "NFC_ON"

    return-object v0

    .line 59
    :pswitch_11
    const-string v0, "NOT_INITIALIZED"

    return-object v0

    .line 60
    :pswitch_12
    const-string v0, "SE_ALREADY_SELECTED"

    return-object v0

    .line 61
    :pswitch_13
    const-string v0, "SE_CONNECTED"

    return-object v0

    .line 62
    :pswitch_14
    const-string v0, "NO_SE_CONNECTED"

    return-object v0

    .line 63
    :pswitch_15
    const-string v0, "NOT_SUPPORTED"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x15
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist isError(I)Z
    .locals 1
    .param p0, "code"    # I

    .line 32
    if-gez p0, :cond_0

    .line 33
    const/4 v0, 0x1

    return v0

    .line 35
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
