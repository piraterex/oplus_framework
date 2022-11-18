.class public Landroid/telephony/ims/ImsCallSession$State;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final greylist-max-o ESTABLISHED:I = 0x4

.field public static final greylist-max-o ESTABLISHING:I = 0x3

.field public static final greylist-max-o IDLE:I = 0x0

.field public static final greylist-max-o INITIATED:I = 0x1

.field public static final greylist-max-o INVALID:I = -0x1

.field public static final greylist-max-o NEGOTIATING:I = 0x2

.field public static final greylist-max-o REESTABLISHING:I = 0x6

.field public static final greylist-max-o RENEGOTIATING:I = 0x5

.field public static final greylist-max-o TERMINATED:I = 0x8

.field public static final greylist-max-o TERMINATING:I = 0x7


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static greylist-max-o toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 70
    packed-switch p0, :pswitch_data_0

    .line 90
    const-string v0, "UNKNOWN"

    return-object v0

    .line 88
    :pswitch_0
    const-string v0, "TERMINATED"

    return-object v0

    .line 86
    :pswitch_1
    const-string v0, "TERMINATING"

    return-object v0

    .line 84
    :pswitch_2
    const-string v0, "REESTABLISHING"

    return-object v0

    .line 82
    :pswitch_3
    const-string v0, "RENEGOTIATING"

    return-object v0

    .line 80
    :pswitch_4
    const-string v0, "ESTABLISHED"

    return-object v0

    .line 78
    :pswitch_5
    const-string v0, "ESTABLISHING"

    return-object v0

    .line 76
    :pswitch_6
    const-string v0, "NEGOTIATING"

    return-object v0

    .line 74
    :pswitch_7
    const-string v0, "INITIATED"

    return-object v0

    .line 72
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
