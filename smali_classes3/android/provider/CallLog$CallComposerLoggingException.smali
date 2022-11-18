.class public Landroid/provider/CallLog$CallComposerLoggingException;
.super Ljava/lang/Throwable;
.source "CallLog.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallComposerLoggingException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CallLog$CallComposerLoggingException$CallComposerLoggingError;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_INPUT_CLOSED:I = 0x3

.field public static final whitelist ERROR_REMOTE_END_CLOSED:I = 0x1

.field public static final whitelist ERROR_STORAGE_FULL:I = 0x2

.field public static final whitelist ERROR_UNKNOWN:I


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .line 152
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 153
    iput p1, p0, Landroid/provider/CallLog$CallComposerLoggingException;->mErrorCode:I

    .line 154
    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .locals 1

    .line 160
    iget v0, p0, Landroid/provider/CallLog$CallComposerLoggingException;->mErrorCode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 166
    iget v0, p0, Landroid/provider/CallLog$CallComposerLoggingException;->mErrorCode:I

    packed-switch v0, :pswitch_data_0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/provider/CallLog$CallComposerLoggingException;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "errorString":Ljava/lang/String;
    goto :goto_0

    .line 177
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "INPUT_CLOSED"

    .line 178
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_0

    .line 174
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "STORAGE_FULL"

    .line 175
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_0

    .line 171
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "REMOTE_END_CLOSED"

    .line 172
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_0

    .line 168
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "UNKNOWN"

    .line 169
    .restart local v0    # "errorString":Ljava/lang/String;
    nop

    .line 183
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallComposerLoggingException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
