.class public Landroid/content/OplusClipboardManager;
.super Ljava/lang/Object;
.source "OplusClipboardManager.java"


# static fields
.field private static final blacklist IOplusClipboardManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/content/IOplusClipboardManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "OplusClipboardManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Landroid/content/OplusClipboardManager$1;

    invoke-direct {v0}, Landroid/content/OplusClipboardManager$1;-><init>()V

    sput-object v0, Landroid/content/OplusClipboardManager;->IOplusClipboardManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getService()Landroid/content/IOplusClipboardManager;
    .locals 1

    .line 33
    sget-object v0, Landroid/content/OplusClipboardManager;->IOplusClipboardManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IOplusClipboardManager;

    return-object v0
.end method

.method public static whitelist getUserPathInfo()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    invoke-static {}, Landroid/content/OplusClipboardManager;->getService()Landroid/content/IOplusClipboardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    invoke-static {}, Landroid/content/OplusClipboardManager;->getService()Landroid/content/IOplusClipboardManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/IOplusClipboardManager;->getUserPathInfo()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 55
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 57
    :cond_0
    const-string v0, "OplusClipboardManager"

    const-string v1, "getUserPathInfo failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getUserPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 37
    invoke-static {}, Landroid/content/OplusClipboardManager;->getService()Landroid/content/IOplusClipboardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    invoke-static {}, Landroid/content/OplusClipboardManager;->getService()Landroid/content/IOplusClipboardManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/IOplusClipboardManager;->getUserPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 42
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 44
    :cond_0
    const-string v0, "OplusClipboardManager"

    const-string v1, "getUserPrimaryClip failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
