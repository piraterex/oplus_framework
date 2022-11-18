.class public interface abstract Landroid/media/IMediaHTTPConnectionWrapper;
.super Ljava/lang/Object;
.source "IMediaHTTPConnectionWrapper.java"


# virtual methods
.method public blacklist getCurrentOffset()J
    .locals 2

    .line 30
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getExtImpl()Landroid/media/IMediaHTTPConnectionExt;
    .locals 1

    .line 26
    new-instance v0, Landroid/media/IMediaHTTPConnectionWrapper$1;

    invoke-direct {v0, p0}, Landroid/media/IMediaHTTPConnectionWrapper$1;-><init>(Landroid/media/IMediaHTTPConnectionWrapper;)V

    return-object v0
.end method

.method public blacklist getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist seekTo(J)V
    .locals 0
    .param p1, "offset"    # J

    .line 43
    return-void
.end method

.method public blacklist setCurrentOffset(J)V
    .locals 0
    .param p1, "offset"    # J

    .line 35
    return-void
.end method
