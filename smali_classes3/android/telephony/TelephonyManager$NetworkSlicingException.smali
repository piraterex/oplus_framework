.class public Landroid/telephony/TelephonyManager$NetworkSlicingException;
.super Ljava/lang/Exception;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkSlicingException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$NetworkSlicingException$NetworkSlicingError;
    }
.end annotation


# static fields
.field public static final blacklist ERROR_MODEM_ERROR:I = 0x2

.field public static final blacklist ERROR_TIMEOUT:I = 0x1

.field public static final blacklist SUCCESS:I


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .line 16906
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 16907
    iput p1, p0, Landroid/telephony/TelephonyManager$NetworkSlicingException;->mErrorCode:I

    .line 16908
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 16912
    iget v0, p0, Landroid/telephony/TelephonyManager$NetworkSlicingException;->mErrorCode:I

    packed-switch v0, :pswitch_data_0

    .line 16915
    const-string v0, "UNDEFINED"

    return-object v0

    .line 16914
    :pswitch_0
    const-string v0, "ERROR_MODEM_ERROR"

    return-object v0

    .line 16913
    :pswitch_1
    const-string v0, "ERROR_TIMEOUT"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
