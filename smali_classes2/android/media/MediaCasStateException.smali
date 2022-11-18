.class public Landroid/media/MediaCasStateException;
.super Ljava/lang/IllegalStateException;
.source "MediaCasStateException.java"


# instance fields
.field private final greylist-max-o mDiagnosticInfo:Ljava/lang/String;

.field private final greylist-max-o mErrorCode:I


# direct methods
.method private constructor greylist-max-o <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "err"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "diagnosticInfo"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    iput p1, p0, Landroid/media/MediaCasStateException;->mErrorCode:I

    .line 33
    iput-object p3, p0, Landroid/media/MediaCasStateException;->mDiagnosticInfo:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static greylist-max-o throwExceptionIfNeeded(I)V
    .locals 1
    .param p0, "err"    # I

    .line 37
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(ILjava/lang/String;)V

    .line 38
    return-void
.end method

.method static greylist-max-o throwExceptionIfNeeded(ILjava/lang/String;)V
    .locals 5
    .param p0, "err"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 41
    if-nez p0, :cond_0

    .line 42
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    .line 48
    const-string v0, ""

    .line 49
    .local v0, "diagnosticInfo":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 102
    :pswitch_0
    const-string v0, "Unknown CAS state exception"

    goto :goto_0

    .line 99
    :pswitch_1
    const-string v0, "Rebooting"

    .line 100
    goto :goto_0

    .line 96
    :pswitch_2
    const-string v0, "Blackout"

    .line 97
    goto :goto_0

    .line 93
    :pswitch_3
    const-string v0, "Card Invalid"

    .line 94
    goto :goto_0

    .line 90
    :pswitch_4
    const-string v0, "Card Muted"

    .line 91
    goto :goto_0

    .line 87
    :pswitch_5
    const-string v0, "No Card"

    .line 88
    goto :goto_0

    .line 84
    :pswitch_6
    const-string v0, "Need Pairing"

    .line 85
    goto :goto_0

    .line 81
    :pswitch_7
    const-string v0, "Need Activation"

    .line 82
    goto :goto_0

    .line 51
    :pswitch_8
    const-string v0, "General CAS error"

    .line 52
    goto :goto_0

    .line 78
    :pswitch_9
    const-string v0, "Decrypt error"

    .line 79
    goto :goto_0

    .line 75
    :pswitch_a
    const-string v0, "Not initialized"

    .line 76
    goto :goto_0

    .line 72
    :pswitch_b
    const-string v0, "Tamper detected"

    .line 73
    goto :goto_0

    .line 69
    :pswitch_c
    const-string v0, "Insufficient output protection"

    .line 70
    goto :goto_0

    .line 66
    :pswitch_d
    const-string v0, "Invalid CAS state"

    .line 67
    goto :goto_0

    .line 63
    :pswitch_e
    const-string v0, "Unsupported scheme or data format"

    .line 64
    goto :goto_0

    .line 60
    :pswitch_f
    const-string v0, "Session not opened"

    .line 61
    goto :goto_0

    .line 57
    :pswitch_10
    const-string v0, "License expired"

    .line 58
    goto :goto_0

    .line 54
    :pswitch_11
    const-string v0, "No license"

    .line 55
    nop

    .line 105
    :goto_0
    new-instance v1, Landroid/media/MediaCasStateException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    .line 106
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%s (err=%d)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Landroid/media/MediaCasStateException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 45
    .end local v0    # "diagnosticInfo":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_0
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
    .end packed-switch
.end method


# virtual methods
.method public whitelist getDiagnosticInfo()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Landroid/media/MediaCasStateException;->mDiagnosticInfo:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getErrorCode()I
    .locals 1

    .line 115
    iget v0, p0, Landroid/media/MediaCasStateException;->mErrorCode:I

    return v0
.end method
