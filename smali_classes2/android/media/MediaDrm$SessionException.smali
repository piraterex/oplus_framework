.class public final Landroid/media/MediaDrm$SessionException;
.super Ljava/lang/RuntimeException;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaDrm$SessionException$SessionErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_RESOURCE_CONTENTION:I = 0x1

.field public static final whitelist ERROR_UNKNOWN:I


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .line 732
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 733
    iput p1, p0, Landroid/media/MediaDrm$SessionException;->mErrorCode:I

    .line 734
    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .locals 1

    .line 769
    iget v0, p0, Landroid/media/MediaDrm$SessionException;->mErrorCode:I

    return v0
.end method

.method public whitelist isTransient()Z
    .locals 2

    .line 779
    iget v0, p0, Landroid/media/MediaDrm$SessionException;->mErrorCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
