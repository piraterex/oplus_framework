.class Landroid/telephony/TelephonyManager$2;
.super Ljava/lang/Object;
.source "TelephonyManager.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->lambda$uploadCallComposerPicture$1$android-telephony-TelephonyManager(Ljava/nio/file/Path;Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/os/ParcelUuid;",
        "Landroid/telephony/TelephonyManager$CallComposerException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/TelephonyManager;

.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$fileStream:Ljava/io/InputStream;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyManager;Ljava/io/InputStream;Landroid/os/OutcomeReceiver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/TelephonyManager;

    .line 4835
    iput-object p1, p0, Landroid/telephony/TelephonyManager$2;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$2;->val$fileStream:Ljava/io/InputStream;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/telephony/TelephonyManager$CallComposerException;)V
    .locals 3
    .param p1, "error"    # Landroid/telephony/TelephonyManager$CallComposerException;

    .line 4851
    :try_start_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager$2;->val$fileStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4856
    goto :goto_0

    .line 4852
    :catch_0
    move-exception v0

    .line 4854
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error closing file input stream when uploading call composer pic"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4857
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 4858
    return-void
.end method

.method public bridge synthetic whitelist onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 4835
    check-cast p1, Landroid/telephony/TelephonyManager$CallComposerException;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager$2;->onError(Landroid/telephony/TelephonyManager$CallComposerException;)V

    return-void
.end method

.method public blacklist onResult(Landroid/os/ParcelUuid;)V
    .locals 3
    .param p1, "result"    # Landroid/os/ParcelUuid;

    .line 4839
    :try_start_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager$2;->val$fileStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4844
    goto :goto_0

    .line 4840
    :catch_0
    move-exception v0

    .line 4842
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error closing file input stream when uploading call composer pic"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4845
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 4846
    return-void
.end method

.method public bridge synthetic whitelist onResult(Ljava/lang/Object;)V
    .locals 0

    .line 4835
    check-cast p1, Landroid/os/ParcelUuid;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager$2;->onResult(Landroid/os/ParcelUuid;)V

    return-void
.end method
