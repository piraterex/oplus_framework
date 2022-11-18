.class public abstract Landroid/opengl/EGLObjectHandle;
.super Ljava/lang/Object;
.source "EGLObjectHandle.java"


# instance fields
.field private final greylist-max-o mHandle:J


# direct methods
.method protected constructor whitelist <init>(I)V
    .locals 2
    .param p1, "handle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    int-to-long v0, p1

    iput-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    .line 34
    return-void
.end method

.method protected constructor whitelist <init>(J)V
    .locals 0
    .param p1, "handle"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist getHandle()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 47
    long-to-int v0, v0

    return v0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getNativeHandle()J
    .locals 2

    .line 58
    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    .line 66
    const/16 v0, 0x11

    .line 67
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 68
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
