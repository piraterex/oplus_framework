.class public Landroid/telephony/ims/stub/ImsCallSessionImplBase$State;
.super Ljava/lang/Object;
.source "ImsCallSessionImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final whitelist ESTABLISHED:I = 0x4

.field public static final whitelist ESTABLISHING:I = 0x3

.field public static final whitelist IDLE:I = 0x0

.field public static final whitelist INITIATED:I = 0x1

.field public static final whitelist INVALID:I = -0x1

.field public static final whitelist NEGOTIATING:I = 0x2

.field public static final whitelist REESTABLISHING:I = 0x6

.field public static final whitelist RENEGOTIATING:I = 0x5

.field public static final whitelist TERMINATED:I = 0x8

.field public static final whitelist TERMINATING:I = 0x7


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method public static whitelist toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 92
    packed-switch p0, :pswitch_data_0

    .line 112
    const-string v0, "UNKNOWN"

    return-object v0

    .line 110
    :pswitch_0
    const-string v0, "TERMINATED"

    return-object v0

    .line 108
    :pswitch_1
    const-string v0, "TERMINATING"

    return-object v0

    .line 106
    :pswitch_2
    const-string v0, "REESTABLISHING"

    return-object v0

    .line 104
    :pswitch_3
    const-string v0, "RENEGOTIATING"

    return-object v0

    .line 102
    :pswitch_4
    const-string v0, "ESTABLISHED"

    return-object v0

    .line 100
    :pswitch_5
    const-string v0, "ESTABLISHING"

    return-object v0

    .line 98
    :pswitch_6
    const-string v0, "NEGOTIATING"

    return-object v0

    .line 96
    :pswitch_7
    const-string v0, "INITIATED"

    return-object v0

    .line 94
    :pswitch_8
    const-string v0, "IDLE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
