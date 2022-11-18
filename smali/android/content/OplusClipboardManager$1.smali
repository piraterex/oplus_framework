.class Landroid/content/OplusClipboardManager$1;
.super Landroid/util/Singleton;
.source "OplusClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/OplusClipboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/content/IOplusClipboardManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/content/IOplusClipboardManager;
    .locals 5

    .line 20
    const-string v0, "OplusClipboardManager"

    :try_start_0
    const-string v1, "clipboard"

    .line 21
    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v1

    .line 22
    .local v1, "clipboard":Landroid/content/IClipboard;
    invoke-interface {v1}, Landroid/content/IClipboard;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v2

    .line 23
    .local v2, "b":Landroid/os/IBinder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get clip extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {v2}, Landroid/content/IOplusClipboardManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IOplusClipboardManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 25
    .end local v1    # "clipboard":Landroid/content/IClipboard;
    .end local v2    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 26
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create OplusClipboardServiceEnhance singleton failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Landroid/content/OplusClipboardManager$1;->create()Landroid/content/IOplusClipboardManager;

    move-result-object v0

    return-object v0
.end method
