.class Landroid/telephony/mbms/MbmsDownloadReceiver$1;
.super Ljava/lang/Object;
.source "MbmsDownloadReceiver.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/MbmsDownloadReceiver;->cleanupTempFiles(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/MbmsDownloadReceiver;

.field final synthetic blacklist val$filesInUse:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/MbmsDownloadReceiver;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/MbmsDownloadReceiver;

    .line 426
    iput-object p1, p0, Landroid/telephony/mbms/MbmsDownloadReceiver$1;->this$0:Landroid/telephony/mbms/MbmsDownloadReceiver;

    iput-object p2, p0, Landroid/telephony/mbms/MbmsDownloadReceiver$1;->val$filesInUse:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/io/File;)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .line 431
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .local v1, "canonicalFile":Ljava/io/File;
    nop

    .line 438
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".embms.temp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    return v0

    .line 443
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 444
    .local v0, "fileInUseUri":Landroid/net/Uri;
    iget-object v2, p0, Landroid/telephony/mbms/MbmsDownloadReceiver$1;->val$filesInUse:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    .line 432
    .end local v0    # "fileInUseUri":Landroid/net/Uri;
    .end local v1    # "canonicalFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got IOException canonicalizing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not deleting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MbmsDownloadReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return v0
.end method
