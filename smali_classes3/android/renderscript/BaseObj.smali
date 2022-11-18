.class public Landroid/renderscript/BaseObj;
.super Ljava/lang/Object;
.source "BaseObj.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final greylist-max-o guard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mDestroyed:Z

.field private greylist-max-o mID:J

.field private greylist-max-o mName:Ljava/lang/String;

.field greylist mRS:Landroid/renderscript/RenderScript;


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    .line 37
    invoke-virtual {p3}, Landroid/renderscript/RenderScript;->validate()V

    .line 38
    iput-object p3, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 39
    iput-wide p1, p0, Landroid/renderscript/BaseObj;->mID:J

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    .line 41
    return-void
.end method

.method private greylist-max-o helpDestroy()V
    .locals 7

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "shouldDestroy":Z
    monitor-enter p0

    .line 125
    :try_start_0
    iget-boolean v1, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    if-nez v1, :cond_0

    .line 126
    const/4 v0, 0x1

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    .line 129
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    if-eqz v0, :cond_2

    .line 132
    iget-object v1, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 134
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    .line 135
    .local v1, "rlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 137
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->isAlive()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    iget-wide v5, p0, Landroid/renderscript/BaseObj;->mID:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    .line 138
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v5, v6}, Landroid/renderscript/RenderScript;->nObjDestroy(J)V

    .line 140
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 141
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 142
    iput-wide v3, p0, Landroid/renderscript/BaseObj;->mID:J

    .line 144
    .end local v1    # "rlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    :cond_2
    return-void

    .line 129
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method greylist-max-o checkValid()V
    .locals 4

    .line 74
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 77
    return-void

    .line 75
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid object."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist destroy()V
    .locals 2

    .line 163
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 166
    invoke-direct {p0}, Landroid/renderscript/BaseObj;->helpDestroy()V

    .line 167
    return-void

    .line 164
    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Object already destroyed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 198
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 199
    return v0

    .line 201
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 202
    return v1

    .line 205
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 206
    return v1

    .line 209
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/renderscript/BaseObj;

    .line 210
    .local v2, "b":Landroid/renderscript/BaseObj;
    iget-wide v3, p0, Landroid/renderscript/BaseObj;->mID:J

    iget-wide v5, v2, Landroid/renderscript/BaseObj;->mID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 148
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 151
    :cond_0
    invoke-direct {p0}, Landroid/renderscript/BaseObj;->helpDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 154
    nop

    .line 155
    return-void

    .line 153
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 154
    throw v0
.end method

.method greylist-max-o getID(Landroid/renderscript/RenderScript;)J
    .locals 4
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 60
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 61
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    if-nez v0, :cond_3

    .line 64
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 67
    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "using object with mismatched context."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    :goto_0
    return-wide v0

    .line 65
    :cond_2
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Internal error: Object id 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_3
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "using a destroyed object."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    .line 185
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    const-wide/32 v2, 0xfffffff

    and-long/2addr v2, v0

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method greylist-max-o setID(J)V
    .locals 4
    .param p1, "id"    # J

    .line 44
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 47
    iput-wide p1, p0, Landroid/renderscript/BaseObj;->mID:J

    .line 48
    return-void

    .line 45
    :cond_0
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Internal Error, reset of object ID."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setName(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 93
    if-eqz p1, :cond_2

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 107
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 108
    .local v0, "bytes":[B
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v2, p0, Landroid/renderscript/BaseObj;->mID:J

    invoke-virtual {v1, v2, v3, v0}, Landroid/renderscript/RenderScript;->nAssignName(J[B)V

    .line 109
    iput-object p1, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "bytes":[B
    nop

    .line 113
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 102
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "setName object already has a name."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "setName does not accept a zero length string."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "setName requires a string of non-zero length."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o updateFromNative()V
    .locals 3

    .line 174
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 175
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nGetName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    .line 176
    return-void
.end method
