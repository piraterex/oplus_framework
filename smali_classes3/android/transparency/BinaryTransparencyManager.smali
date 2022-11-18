.class public Landroid/transparency/BinaryTransparencyManager;
.super Ljava/lang/Object;
.source "BinaryTransparencyManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TransparencyManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Lcom/android/internal/os/IBinaryTransparencyService;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/os/IBinaryTransparencyService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/os/IBinaryTransparencyService;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/transparency/BinaryTransparencyManager;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Landroid/transparency/BinaryTransparencyManager;->mService:Lcom/android/internal/os/IBinaryTransparencyService;

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist getApexInfo()Ljava/util/Map;
    .locals 2

    .line 76
    :try_start_0
    const-string v0, "TransparencyManager"

    const-string v1, "Calling backend\'s getApexInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Landroid/transparency/BinaryTransparencyManager;->mService:Lcom/android/internal/os/IBinaryTransparencyService;

    invoke-interface {v0}, Lcom/android/internal/os/IBinaryTransparencyService;->getApexInfo()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSignedImageInfo()Ljava/lang/String;
    .locals 2

    .line 62
    :try_start_0
    iget-object v0, p0, Landroid/transparency/BinaryTransparencyManager;->mService:Lcom/android/internal/os/IBinaryTransparencyService;

    invoke-interface {v0}, Lcom/android/internal/os/IBinaryTransparencyService;->getSignedImageInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
