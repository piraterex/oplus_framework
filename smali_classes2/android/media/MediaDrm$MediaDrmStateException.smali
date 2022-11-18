.class public final Landroid/media/MediaDrm$MediaDrmStateException;
.super Ljava/lang/IllegalStateException;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaDrmStateException"
.end annotation


# instance fields
.field private final greylist-max-o mDiagnosticInfo:Ljava/lang/String;

.field private final greylist-max-o mErrorCode:I


# direct methods
.method public constructor greylist-max-o <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .line 675
    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 676
    iput p1, p0, Landroid/media/MediaDrm$MediaDrmStateException;->mErrorCode:I

    .line 679
    if-gez p1, :cond_0

    const-string v0, "neg_"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 680
    .local v0, "sign":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.media.MediaDrm.error_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 681
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaDrm$MediaDrmStateException;->mDiagnosticInfo:Ljava/lang/String;

    .line 683
    return-void
.end method


# virtual methods
.method public whitelist getDiagnosticInfo()Ljava/lang/String;
    .locals 1

    .line 717
    iget-object v0, p0, Landroid/media/MediaDrm$MediaDrmStateException;->mDiagnosticInfo:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getErrorCode()I
    .locals 1

    .line 696
    iget v0, p0, Landroid/media/MediaDrm$MediaDrmStateException;->mErrorCode:I

    return v0
.end method

.method public whitelist isTransient()Z
    .locals 2

    .line 705
    iget v0, p0, Landroid/media/MediaDrm$MediaDrmStateException;->mErrorCode:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
