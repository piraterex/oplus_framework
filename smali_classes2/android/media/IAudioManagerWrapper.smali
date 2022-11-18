.class public interface abstract Landroid/media/IAudioManagerWrapper;
.super Ljava/lang/Object;
.source "IAudioManagerWrapper.java"


# virtual methods
.method public blacklist getExtImpl()Landroid/media/IAudioManagerExt;
    .locals 1

    .line 21
    new-instance v0, Landroid/media/IAudioManagerWrapper$1;

    invoke-direct {v0, p0}, Landroid/media/IAudioManagerWrapper$1;-><init>(Landroid/media/IAudioManagerWrapper;)V

    return-object v0
.end method
