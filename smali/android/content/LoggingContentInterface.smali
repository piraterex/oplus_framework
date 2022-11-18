.class public Landroid/content/LoggingContentInterface;
.super Ljava/lang/Object;
.source "LoggingContentInterface.java"

# interfaces
.implements Landroid/content/ContentInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/LoggingContentInterface$Logger;
    }
.end annotation


# instance fields
.field private final blacklist delegate:Landroid/content/ContentInterface;

.field private final blacklist tag:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgettag(Landroid/content/LoggingContentInterface;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/LoggingContentInterface;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/ContentInterface;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "delegate"    # Landroid/content/ContentInterface;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/content/LoggingContentInterface;->tag:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    .line 49
    return-void
.end method


# virtual methods
.method public blacklist applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 275
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "applyBatch"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_0
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2}, Landroid/content/ContentInterface;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 277
    return-object v1

    .line 275
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, "res":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "authority":Ljava/lang/String;
    .restart local p2    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public blacklist bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "bulkInsert"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_0
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2}, Landroid/content/ContentInterface;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 198
    return v1

    .line 196
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "res":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "initialValues":[Landroid/content/ContentValues;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "initialValues":[Landroid/content/ContentValues;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public blacklist call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const-string v2, "call"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_0
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/ContentInterface;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 290
    return-object v1

    .line 288
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, "res":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "arg":Ljava/lang/String;
    .end local p4    # "extras":Landroid/os/Bundle;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "authority":Ljava/lang/String;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "arg":Ljava/lang/String;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public blacklist canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "canonicalize"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_0
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1}, Landroid/content/ContentInterface;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 134
    return-object v1

    .line 132
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "res":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public blacklist checkUriPermission(Landroid/net/Uri;II)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uid"    # I
    .param p3, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "checkUriPermission"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_0
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->checkUriPermission(Landroid/net/Uri;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 172
    return v1

    .line 170
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "res":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "uid":I
    .end local p3    # "modeFlags":I
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "uid":I
    .restart local p3    # "modeFlags":I
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public blacklist delete(Landroid/net/Uri;Landroid/os/Bundle;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "delete"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_0
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2}, Landroid/content/ContentInterface;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 210
    return v1

    .line 208
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "res":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "extras":Landroid/os/Bundle;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "extras":Landroid/os/Bundle;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public blacklist getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "getStreamTypes"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_0
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2}, Landroid/content/ContentInterface;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 122
    return-object v1

    .line 120
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "res":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeTypeFilter":Ljava/lang/String;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mimeTypeFilter":Ljava/lang/String;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public blacklist getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "getType"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_0
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1}, Landroid/content/ContentInterface;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 109
    return-object v1

    .line 107
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "res":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public blacklist insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string v2, "insert"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_0
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 185
    return-object v1

    .line 183
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "res":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "initialValues":Landroid/content/ContentValues;
    .end local p3    # "extras":Landroid/os/Bundle;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "initialValues":Landroid/content/ContentValues;
    .restart local p3    # "extras":Landroid/os/Bundle;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public blacklist openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 247
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string/jumbo v2, "openAssetFile"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_0
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 249
    return-object v1

    .line 247
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, "res":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    .end local p3    # "signal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    .restart local p3    # "signal":Landroid/os/CancellationSignal;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public blacklist openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 234
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string/jumbo v2, "openFile"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_0
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 236
    return-object v1

    .line 234
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, "res":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    .end local p3    # "signal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    .restart local p3    # "signal":Landroid/os/CancellationSignal;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public blacklist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 261
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const-string/jumbo v2, "openTypedAssetFile"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_0
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/ContentInterface;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 263
    return-object v1

    .line 261
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "res":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeTypeFilter":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .end local p4    # "signal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mimeTypeFilter":Ljava/lang/String;
    .restart local p3    # "opts":Landroid/os/Bundle;
    .restart local p4    # "signal":Landroid/os/CancellationSignal;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public blacklist query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const-string/jumbo v2, "query"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_0
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/ContentInterface;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 97
    return-object v1

    .line 95
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "res":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p3    # "queryArgs":Landroid/os/Bundle;
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "projection":[Ljava/lang/String;
    .restart local p3    # "queryArgs":Landroid/os/Bundle;
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public blacklist refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string/jumbo v2, "refresh"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_0
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 159
    return v1

    .line 157
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "res":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "args":Landroid/os/Bundle;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "args":Landroid/os/Bundle;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public blacklist uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo v2, "uncanonicalize"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_0
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1}, Landroid/content/ContentInterface;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 146
    return-object v1

    .line 144
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "res":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public blacklist update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    new-instance v0, Landroid/content/LoggingContentInterface$Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string/jumbo v2, "update"

    invoke-direct {v0, p0, v2, v1}, Landroid/content/LoggingContentInterface$Logger;-><init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    .local v0, "l":Landroid/content/LoggingContentInterface$Logger;
    :try_start_0
    iget-object v1, p0, Landroid/content/LoggingContentInterface;->delegate:Landroid/content/ContentInterface;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/ContentInterface;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V

    .line 223
    return v1

    .line 221
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "res":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/LoggingContentInterface$Logger;->setResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    nop

    .end local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .end local p0    # "this":Landroid/content/LoggingContentInterface;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "values":Landroid/content/ContentValues;
    .end local p3    # "extras":Landroid/os/Bundle;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .end local v1    # "res":Ljava/lang/Exception;
    .restart local v0    # "l":Landroid/content/LoggingContentInterface$Logger;
    .restart local p0    # "this":Landroid/content/LoggingContentInterface;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "values":Landroid/content/ContentValues;
    .restart local p3    # "extras":Landroid/os/Bundle;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/content/LoggingContentInterface$Logger;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method
