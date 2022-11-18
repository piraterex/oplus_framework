.class public final Landroid/se/omapi/Reader;
.super Ljava/lang/Object;
.source "Reader.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "OMAPI.Reader"


# instance fields
.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mReader:Landroid/se/omapi/ISecureElementReader;

.field private final greylist-max-o mService:Landroid/se/omapi/SEService;


# direct methods
.method constructor greylist-max-o <init>(Landroid/se/omapi/SEService;Ljava/lang/String;Landroid/se/omapi/ISecureElementReader;)V
    .locals 2
    .param p1, "service"    # Landroid/se/omapi/SEService;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "reader"    # Landroid/se/omapi/ISecureElementReader;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/se/omapi/Reader;->mLock:Ljava/lang/Object;

    .line 52
    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 55
    iput-object p2, p0, Landroid/se/omapi/Reader;->mName:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    .line 57
    iput-object p3, p0, Landroid/se/omapi/Reader;->mReader:Landroid/se/omapi/ISecureElementReader;

    .line 58
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist closeSessions()V
    .locals 2

    .line 145
    iget-object v0, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const-string v0, "OMAPI.Reader"

    const-string/jumbo v1, "service is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Landroid/se/omapi/Reader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Landroid/se/omapi/Reader;->mReader:Landroid/se/omapi/ISecureElementReader;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementReader;->closeSessions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 152
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 153
    :try_start_1
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Landroid/se/omapi/Reader;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSEService()Landroid/se/omapi/SEService;
    .locals 1

    .line 137
    iget-object v0, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    return-object v0
.end method

.method public whitelist isSecureElementPresent()Z
    .locals 3

    .line 120
    iget-object v0, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/Reader;->mReader:Landroid/se/omapi/ISecureElementReader;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementReader;->isSecureElementPresent()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error in isSecureElementPresent()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service is not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist openSession()Landroid/se/omapi/Session;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Landroid/se/omapi/Reader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Landroid/se/omapi/Reader;->mReader:Landroid/se/omapi/ISecureElementReader;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementReader;->openSession()Landroid/se/omapi/ISecureElementSession;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .local v1, "session":Landroid/se/omapi/ISecureElementSession;
    nop

    .line 106
    if-eqz v1, :cond_0

    .line 109
    :try_start_1
    new-instance v2, Landroid/se/omapi/Session;

    iget-object v3, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    invoke-direct {v2, v3, v1, p0}, Landroid/se/omapi/Session;-><init>(Landroid/se/omapi/SEService;Landroid/se/omapi/ISecureElementSession;Landroid/se/omapi/Reader;)V

    monitor-exit v0

    return-object v2

    .line 107
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "service session is null."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/se/omapi/Reader;
    throw v2

    .line 110
    .end local v1    # "session":Landroid/se/omapi/ISecureElementSession;
    .restart local p0    # "this":Landroid/se/omapi/Reader;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/se/omapi/Reader;
    throw v2

    .line 101
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/se/omapi/Reader;
    :catch_1
    move-exception v1

    .line 102
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/se/omapi/Reader;
    throw v2

    .line 110
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .restart local p0    # "this":Landroid/se/omapi/Reader;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service is not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist reset()Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 165
    iget-object v0, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 166
    const-string v0, "OMAPI.Reader"

    const-string/jumbo v2, "service is not connected"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v1

    .line 169
    :cond_0
    iget-object v0, p0, Landroid/se/omapi/Reader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    invoke-virtual {p0}, Landroid/se/omapi/Reader;->closeSessions()V

    .line 172
    iget-object v2, p0, Landroid/se/omapi/Reader;->mReader:Landroid/se/omapi/ISecureElementReader;

    invoke-interface {v2}, Landroid/se/omapi/ISecureElementReader;->reset()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    .line 176
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 173
    :catch_0
    move-exception v2

    .line 174
    .local v2, "ignore":Landroid/os/RemoteException;
    monitor-exit v0

    return v1

    .line 176
    .end local v2    # "ignore":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
